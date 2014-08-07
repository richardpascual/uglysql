-- The "UGLYSQL" Project is a collection of working database schemas, scripts
-- and PL/SQL code intended to show different principles in programming queries
-- on the Oracle database platform.

-- Copyright (C) 2014 Rich Pascual <pascualrg1@gmail.com>

-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.

-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
-- GNU General Public License for more details.

-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <http://www.gnu.org/licenses/>.


-- stack-employment-schema
-- This schema consists of four tables.  There are some sample data points scripted
-- as direct INSERT DML statements for the first two tables.  There are no current
-- constraints holding these tables together, so this schema is just a starting point.
--

create table stk_employee (
   emp_id   number,
   emp_name varchar2(100),
   mgr_id   number,
   dept_id  varchar2(50),
   salary   number,
   hire_date date
   );

INSERT INTO stk_employee ( emp_id, emp_name, mgr_id, dept_id, salary, hire_date )
VALUES ( 1, 'MARTIN', null, 'EXECUTIVE', 9500, to_date('10/10/2000','MM/DD/YYYY')  
);
INSERT INTO stk_employee ( emp_id, emp_name, mgr_id, dept_id, salary, hire_date )
VALUES ( 5, 'COREY', 1, 'MARKETING', 7000, to_date('01/10/2001','MM/DD/YYYY')  
);
INSERT INTO stk_employee ( emp_id, emp_name, mgr_id, dept_id, salary, hire_date )
VALUES ( 8, 'CALVIN', 1, 'SALES', 7700, to_date('03/10/2001','MM/DD/YYYY')  
);
INSERT INTO stk_employee ( emp_id, emp_name, mgr_id, dept_id, salary, hire_date )
VALUES ( 19, 'SARAH', 1, 'SALES', 4900, to_date('03/15/2010','MM/DD/YYYY')  
);
INSERT INTO stk_employee ( emp_id, emp_name, mgr_id, dept_id, salary, hire_date )
VALUES ( 28,'JOHN', 8, 'SALES', 6800, to_date('11/20/2003','MM/DD/YYYY')  
);
INSERT INTO stk_employee ( emp_id, emp_name, mgr_id, dept_id, salary, hire_date )
VALUES ( 29,'JACK', 5, 'MARKETING', 5000, to_date('12/20/2003','MM/DD/YYYY')   
);
INSERT INTO stk_employee ( emp_id, emp_name, mgr_id, dept_id, salary, hire_date )
VALUES ( 200,'SAM', 5, 'MARKETING', 4800, to_date('02/14/2004','MM/DD/YYYY')  
);
INSERT INTO stk_employee ( emp_id, emp_name, mgr_id, dept_id, salary, hire_date )
VALUES ( 279,'PETER', 5, 'MARKETING', 4850, to_date('02/20/2004','MM/DD/YYYY')  
);
INSERT INTO stk_employee ( emp_id, emp_name, mgr_id, dept_id, salary, hire_date )
VALUES ( 339, 'KATE', 8, 'SALES', 4900, to_date('03/15/2014','MM/DD/YYYY')  
);
INSERT INTO stk_employee ( emp_id, emp_name, mgr_id, dept_id, salary, hire_date )
VALUES ( 401, 'FRANCINE', 19, 'SALES', 4900, to_date('03/10/2014','MM/DD/YYYY')  
);
INSERT INTO stk_employee ( emp_id, emp_name, mgr_id, dept_id, salary, hire_date )
VALUES ( 422, 'MOSES', 19, 'SALES', 4900, to_date('03/01/2014','MM/DD/YYYY')  
);

commit;

create table stk_account (
   account_id   number,
   client_name  varchar2(100),
   account_loc  varchar2(50),
   assigned_staff number
   );

INSERT INTO stk_account ( account_id, client_name, account_loc, assigned_staff )
VALUES ( 121221, 'JANE-DOE CAFE', 'LOUISIANA', 28
);
INSERT INTO stk_account ( account_id, client_name, account_loc, assigned_staff )
VALUES ( 89711, 'LAYNE ATHLETIC SUPPLY', 'TEXAS', 28
);
INSERT INTO stk_account ( account_id, client_name, account_loc, assigned_staff )
VALUES ( 107789, 'BELLAIRE A/C REPAIR', 'ALASKA', 339
);
INSERT INTO stk_account ( account_id, client_name, account_loc, assigned_staff )
VALUES ( 107790, 'SALLY SMOKED SOCKEYE', 'ALASKA', 8
);
INSERT INTO stk_account ( account_id, client_name, account_loc, assigned_staff )
VALUES ( 45998, 'JARED COMPUTERS', 'OREGON', 339
);
INSERT INTO stk_account ( account_id, client_name, account_loc, assigned_staff )
VALUES ( 12156, 'HOLLY HOBBY HOUSE', 'CALIFORNIA', 422
);
INSERT INTO stk_account ( account_id, client_name, account_loc, assigned_staff )
VALUES ( 13000, 'MANNY MOTORS', 'CALIFORNIA', 401
);
INSERT INTO stk_account ( account_id, client_name, account_loc, assigned_staff )
VALUES ( 13105, 'BARRY BROTHERS PIANOS', 'CALIFORNIA', 422
);
INSERT INTO stk_account ( account_id, client_name, account_loc, assigned_staff )
VALUES ( 14561, 'TINY TIM TRAVEL AGENCY', 'NEVADA', 422
);

commit;

create table stk_hr (
   detail_id    number,
   emp_id       number,
   hr_tag_name  varchar2(100),
   hr_tag_value varchar2(100),
   created_date date,
   updated_date date
   );

create table stk_payroll (
   payroll_rec_id number,
   emp_id  number,
   payment_number number,
   pay_date date,
   pay_type varchar2(20),
   transfer_amount number
   );
   

