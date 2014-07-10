CREATE OR REPLACE PROCEDURE my_proc_data (result_data OUT sys_refcursor) 
    IS
    BEGIN
    OPEN result_data FOR
       SELECT empno, ename, 0 as bonus
       FROM   emp
       ORDER BY empno ASC;

    END;
/

-- The calling procedure that opens and loops through the cursor contents looks similar to 
-- the OP procedure, in the form of an anonymous PL/SQL block:

DECLARE
    l_cursor  SYS_REFCURSOR;
    l_empno   emp.empno%TYPE;
    l_ename   emp.ename%TYPE;
    l_bonus   number;

    c_var_budget_limit    constant number:= 100000;
    c_bonus_increase      constant number:= 1000;
    l_var_budget          number;

BEGIN
  my_proc_data (result_data => l_cursor);
  l_var_budget := c_var_budget_limit;

  LOOP 
       FETCH l_cursor
       INTO  l_empno, l_ename, l_bonus;

       IF (l_var_budget >= c_bonus_increase) then
          l_var_budget := l_var_budget - c_bonus_increase;
          l_bonus:= l_bonus + c_bonus_increase;

          DBMS_OUTPUT.PUT_LINE(to_char(l_empno) || ' | ' || l_ename || 
             ' | ' || to_char(l_bonus));

       END IF;

       EXIT WHEN l_cursor%NOTFOUND;
  END LOOP;
  CLOSE l_cursor;
  END;

