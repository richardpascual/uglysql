select * from employee_move
select * from employee_move_log

LAG(sal, 1, 0) OVER (PARTITION BY dept ORDER BY sal DESC NULLS LAST)

select continue tomorrow?  then just stat the progress

with state_moves as (
select employee, place, move_date,
   lag(move_date,1,null) over (partition by employee order by move_date asc) as date_stayed
from employee_move_log
)
select distinct employee, place, move_date, date_stayed
from state_moves
where place = 'CA'
and move_date - date_stayed >= 365
and '05-MAR-2007' between date_stayed and move_date
