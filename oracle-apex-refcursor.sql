CREATE OR REPLACE PROCEDURE my_proc IS

-- This code was originally sourced from a post to StackOverflow-dot-com by
-- http://stackoverflow.com/users/584583/user584583 (user584583)
-- The Original Post: 
-- http://stackoverflow.com/questions/24633914/moving-from-oracle-web-toolkit-to-apex-4-2

var_empno emp.empno%type;
var_ename emp.ename%type;
var_bonus emp.bonus%type;
var_budget number;
var_budget := 100000;

CURSOR EMP_CURSOR IS
select empno, ename, bonus from emp order by empno;

BEGIN
htp.print('EMPLOYEE NUMBER   EMPLOYEE NAME    BONUS');

open EMP_CURSOR;
LOOP
fetch EMP_CURSOR into var_empno, var_ename,  var_bonus;
//------Give employee a extra $1,000 bonus if budget allows-----------.
EXIT when EMP_CURSOR%NOTFOUND;

IF (var_budget >= 1000) then
  var_budget := var_budget - 1000;
  var_bonus := var_bonus + 1000; 
END IF;

//----DBMS_OUTPUT.put_line(var_empno || ' ' || var_ename || ' ' || var_bonus);
htp.print(var_empno || ' ' || var_ename || ' ' || var_bonus);
END LOOP;

close EMP_CURSOR;
END;
