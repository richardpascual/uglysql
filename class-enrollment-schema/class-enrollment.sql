    -- Project UGLYSQL: http://github.com/richardpascual/uglysql
    -- The following SQLPlus Script creates tables for the 
    -- schema called "Class Enrollment"
    -- Created by: richardpascual (pascualrg1@gmail.com)

	-- The "UGLYSQL" Project is a collection of working database schemas, scripts
	   -- and PL/SQL code intended to show different principles in programming queries
       -- on the Oracle database platform.	
    
	-- Copyright (C) 2014  Rich Pascual <pascualrg1@gmail.com>

    -- This program is free software: you can redistribute it and/or modify
    -- it under the terms of the GNU General Public License as published by
    -- the Free Software Foundation, either version 3 of the License, or
    -- (at your option) any later version.

    -- This program is distributed in the hope that it will be useful,
    -- but WITHOUT ANY WARRANTY; without even the implied warranty of
    -- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    -- GNU General Public License for more details.

    -- You should have received a copy of the GNU General Public License
    -- along with this program.  If not, see <http://www.gnu.org/licenses/>.

CREATE SEQUENCE   "STUDENT_ENROLLMENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
/

CREATE TABLE  "SEMESTER" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"SORT_ID" NUMBER, 
	"NAME" VARCHAR2(20) NOT NULL ENABLE, 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/

CREATE TABLE  "STUDENT" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"NAME" VARCHAR2(20) NOT NULL ENABLE, 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/

CREATE TABLE  "SUBJECT" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"SUBJECT_NAME" VARCHAR2(50) NOT NULL ENABLE, 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/

CREATE TABLE  "SEMESTER_SUBJECT" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"SEMESTER_ID" NUMBER NOT NULL ENABLE, 
	"SUBJECT_ID" NUMBER NOT NULL ENABLE, 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE, 
	 CONSTRAINT "SEM_SUB_UQ" UNIQUE ("SEMESTER_ID", "SUBJECT_ID")
  USING INDEX  ENABLE
   )
/
ALTER TABLE  "SEMESTER_SUBJECT" ADD FOREIGN KEY ("SEMESTER_ID")
	  REFERENCES  "SEMESTER" ("ID") ENABLE
/
ALTER TABLE  "SEMESTER_SUBJECT" ADD FOREIGN KEY ("SUBJECT_ID")
	  REFERENCES  "SUBJECT" ("ID") ENABLE
/

CREATE TABLE  "STUDENT_ENROLLMENT" 
   (	"CONFIRMATION_ID" NUMBER(10,0) NOT NULL ENABLE, 
	"STUDENT_ID" NUMBER(10,0) NOT NULL ENABLE, 
	"CLASS_ID" NUMBER(10,0) NOT NULL ENABLE, 
	"ENROLL_DATE" DATE NOT NULL ENABLE, 
	"SEMESTER_ID" NUMBER(10,0) NOT NULL ENABLE, 
	 CONSTRAINT "STUDENT_ENROLLMENT_PK" PRIMARY KEY ("CONFIRMATION_ID")
  USING INDEX  ENABLE
   )
/
ALTER TABLE  "STUDENT_ENROLLMENT" ADD CONSTRAINT "STUDENT_ENROLLMENT_FK" FOREIGN KEY ("STUDENT_ID")
	  REFERENCES  "STUDENT" ("ID") ENABLE
/
ALTER TABLE  "STUDENT_ENROLLMENT" ADD CONSTRAINT "STUDENT_ENROLLMENT_FK2" FOREIGN KEY ("CLASS_ID")
	  REFERENCES  "CLASS" ("ID") ENABLE
/
ALTER TABLE  "STUDENT_ENROLLMENT" ADD CONSTRAINT "STUDENT_ENROLLMENT_FK3" FOREIGN KEY ("SEMESTER_ID")
	  REFERENCES  "SEMESTER" ("ID") ENABLE
/


CREATE OR REPLACE TRIGGER  "BI_STUDENT_ENROLLMENT" 
  before insert on "STUDENT_ENROLLMENT"               
  for each row  
begin   
  if :NEW."CONFIRMATION_ID" is null then 
    select "STUDENT_ENROLLMENT_SEQ".nextval into :NEW."CONFIRMATION_ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_STUDENT_ENROLLMENT" ENABLE
/
