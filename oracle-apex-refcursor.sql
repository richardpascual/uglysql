CREATE OR REPLACE FUNCTION my_proc
   return sys_refcursor IS

-- This code was originally sourced from a post to StackOverflow-dot-com by
-- http://stackoverflow.com/users/584583/user584583 (user584583)
-- The Original Post: 
-- http://stackoverflow.com/questions/24633914/moving-from-oracle-web-toolkit-to-apex-4-2

    l_var_budget_limit    constant number:= 100000;
    l_var_budget          number;
    l_refcursor           sys_refcursor;
    l_bonus_increase      number:= :bonus_increase;

    CURSOR EMP_CURSOR IS
       select empno, ename, bonus from emp order by empno;

BEGIN

l_var_budget:= l_var_budget_limit;

for result_data in EMP_CURSOR
LOOP
   IF (c_var_budget >= l_bonus_increase) then
      l_var_budget := l_var_budget - l_bonus_increase;
      csr_iteration.bonus:= csr_iteration.bonus + l_bonus_increase;
   END IF;

END LOOP;

RETURN result_data;

END;
