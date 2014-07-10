CREATE OR REPLACE PROCEDURE my_proc (bonus_increase IN number,
   result_data OUT sys_refcursor) 
IS

-- This code was originally sourced from a post to StackOverflow-dot-com by
-- http://stackoverflow.com/users/584583/user584583 (user584583)
-- The Original Post: 
-- http://stackoverflow.com/questions/24633914/moving-from-oracle-web-toolkit-to-apex-4-2

-- (1) Replace Procedure Declaration to include output REF CURSOR
-- CREATE OR REPLACE PROCEDURE my_proc IS

-- (2) Remove variable references/placeholders used by 
-- var_empno emp.empno%type;
-- var_ename emp.ename%type;
-- var_bonus emp.bonus%type;
-- var_budget number;
-- var_budget := 100000;

-- (3) A suggested practice to put a tolerance level within a constant variable.
--     Removing literals from the SQL code segments improves performance, because
--     it allows the PL/SQL interpreter to reuse the execution plans for multiple
--     consecutive runs of the cursor query.

l_var_budget_limit    constant number:= 100000;
l_var_budget          number;
l_refcursor           sys_refcursor;
l_bonus_increase      number:= :bonus_increase;


CURSOR EMP_CURSOR IS
select empno, ename, bonus from emp order by empno;

BEGIN

-- (4) This task is reserved for APEX to handle in a REPORT REGION definition.
-- htp.print('EMPLOYEE NUMBER   EMPLOYEE NAME    BONUS');

-- (5) I rewrote the cursor using the IMPLICIT cursor method.

l_var_budget:= l_var_budget_limit;

for result_data in EMP_CURSOR
LOOP
   IF (c_var_budget >= l_bonus_increase) then
      l_var_budget := l_var_budget - l_bonus_increase;
      csr_iteration.bonus:= csr_iteration.bonus + l_bonus_increase;
   END IF;

END LOOP;


-- (6) The web toolkit output is no longer necessary.
//----DBMS_OUTPUT.put_line(var_empno || ' ' || var_ename || ' ' || var_bonus);
-- htp.print(var_empno || ' ' || var_ename || ' ' || var_bonus);

END;
