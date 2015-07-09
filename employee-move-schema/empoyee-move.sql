drop table employee_move
drop table employee_move_log

CREATE TABLE employee_move
    ("EMPLOYEE" varchar2(7), "PLACE" varchar2(2), "START_DATE" date, "MOVE_DATE" date)
;

INSERT ALL 
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('KING', 'CA', '01-Jan-2005', '01-Jan-2005')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('BLAKE', 'CA', '25-Jan-2007', '25-Jan-2007')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('JONES', 'NY', '02-Jan-2006', '02-Jan-2006')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('LARRY', 'FL', '10-Mar-2012', '10-Mar-2012')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('PAIGE', 'AL', '11-Mar-2012', '11-Mar-2012')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('MORRIS', 'GA', '12-Mar-2012', '12-Mar-2012')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('GWEN', 'GA', '01-Jan-2005', '14-Feb-2014')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('ABEL', 'CA', '01-Jan-2005', '01-Jan-2005')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('MARCUS', 'CA', '25-Jan-2007', '25-Jan-2007')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('VICTOR', 'NY', '02-Jan-2006', '02-Jan-2006')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('CHARLES', 'FL', '10-Mar-2012', '10-May-2012')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('BRONSON', 'AL', '11-Mar-2012', '11-Jun-2012')
SELECT * FROM dual
;

CREATE TABLE employee_move_log
    ("EMPLOYEE" varchar2(4), "PLACE" varchar2(2), "MOVE_DATE" date)
;

INSERT ALL 
    INTO employee_move_log ("EMPLOYEE", "PLACE", "MOVE_DATE")
         VALUES ('GWEN', 'NY', '10-Nov-2006')
    INTO employee_move_log ("EMPLOYEE", "PLACE", "MOVE_DATE")
         VALUES ('GWEN', 'HI', '01-Mar-2007')
    INTO employee_move_log ("EMPLOYEE", "PLACE", "MOVE_DATE")
         VALUES ('GWEN', 'CA', '01-Jan-2010')
    INTO employee_move_log ("EMPLOYEE", "PLACE", "MOVE_DATE")
         VALUES ('GWEN', 'AL', '02-Feb-2012')
    INTO employee_move_log ("EMPLOYEE", "PLACE", "MOVE_DATE")
         VALUES ('GWEN', 'GA', '14-Feb-2014')
SELECT * FROM dual
;