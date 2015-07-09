CREATE TABLE employee_move
    ("EMPLOYEE" varchar2(7), "PLACE" varchar2(2), "START_DATE" timestamp, "MOVE_DATE" timestamp)
;

INSERT ALL 
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('KING', 'CA', '01-Jan-2005 12:00:00 AM', '01-Jan-2005 12:00:00 AM')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('BLAKE', 'CA', '25-Jan-2007 12:00:00 AM', '25-Jan-2007 12:00:00 AM')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('JONES', 'NY', '02-Jan-2006 12:00:00 AM', '02-Jan-2006 12:00:00 AM')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('LARRY', 'FL', '10-Mar-2012 12:00:00 AM', '10-Mar-2012 12:00:00 AM')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('PAIGE', 'AL', '11-Mar-2012 12:00:00 AM', '11-Mar-2012 12:00:00 AM')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('MORRIS', 'GA', '12-Mar-2012 12:00:00 AM', '12-Mar-2012 12:00:00 AM')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('GWEN', 'GA', '01-Jan-2005 12:00:00 AM', '14-Feb-2014 12:00:00 AM')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('ABEL', 'CA', '01-Jan-2005 12:00:00 AM', '01-Jan-2005 12:00:00 AM')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('MARCUS', 'CA', '25-Jan-2007 12:00:00 AM', '25-Jan-2007 12:00:00 AM')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('VICTOR', 'NY', '02-Jan-2006 12:00:00 AM', '02-Jan-2006 12:00:00 AM')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('CHARLES', 'FL', '10-Mar-2012 12:00:00 AM', '10-May-2012 12:00:00 AM')
    INTO employee_move ("EMPLOYEE", "PLACE", "START_DATE", "MOVE_DATE")
         VALUES ('BRONSON', 'AL', '11-Mar-2012 12:00:00 AM', '11-Jun-2012 12:00:00 AM')
SELECT * FROM dual
;

CREATE TABLE employee_move_log
    ("EMPLOYEE" varchar2(4), "PLACE" varchar2(2), "MOVE_DATE" timestamp)
;

INSERT ALL 
    INTO employee_move_log ("EMPLOYEE", "PLACE", "MOVE_DATE")
         VALUES ('GWEN', 'NY', '10-Nov-2006 12:00:00 AM')
    INTO employee_move_log ("EMPLOYEE", "PLACE", "MOVE_DATE")
         VALUES ('GWEN', 'HI', '01-Mar-2007 12:00:00 AM')
    INTO employee_move_log ("EMPLOYEE", "PLACE", "MOVE_DATE")
         VALUES ('GWEN', 'CA', '01-Jan-2010 12:00:00 AM')
    INTO employee_move_log ("EMPLOYEE", "PLACE", "MOVE_DATE")
         VALUES ('GWEN', 'AL', '02-Feb-2012 12:00:00 AM')
    INTO employee_move_log ("EMPLOYEE", "PLACE", "MOVE_DATE")
         VALUES ('GWEN', 'GA', '14-Feb-2014 12:00:00 AM')
SELECT * FROM dual
;