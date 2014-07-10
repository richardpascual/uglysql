CREATE OR REPLACE TYPE employee_record_type AS object (
       empno   number,
       ename   varchar2(10),
       bonus   number
    );

CREATE OR REPLACE TYPE emp_output_table_type IS TABLE OF
       employee_record_type;


CREATE or replace FUNCTION my_bonuses RETURN
       emp_output_table_type IS

   -- This code was originally sourced from a post to StackOverflow-dot-com by
   -- http://stackoverflow.com/users/584583/user584583 (user584583)
   -- The Original Post: 
   -- http://stackoverflow.com/questions/24633914/moving-from-oracle-web-toolkit-to-apex-4-2

   -- table collection type declared and initialized here:

       l_output  emp_output_table_type:= emp_output_table_type();
       l_row_index   pls_integer:= 0;  

       c_var_budget_limit    constant number:= 10000;
       c_bonus_increase      constant number:= 1000;
       l_var_budget          number;

       cursor l_cursor is
          select empno, ename, 0 as bonus
          from   emp
       order by empno ASC;

BEGIN
       l_var_budget := c_var_budget_limit;

    FOR i in l_cursor
       LOOP
          l_row_index := l_row_index + 1;
          l_output.extend;

          l_output(l_row_index):= employee_record_type(i.empno,
             i.ename, i.bonus);

    IF (l_var_budget >= c_bonus_increase) then
       l_var_budget := l_var_budget - c_bonus_increase;
       l_output(l_row_index).bonus:= l_output(l_row_index).bonus
           + c_bonus_increase;

    END IF;

    END LOOP;
    RETURN l_output;
END;
/

