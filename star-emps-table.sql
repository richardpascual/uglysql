-- Sample Schema with Data
-- Created By: Richard Pascual
-- pascualrg1@gmail.com
--
-- Supported DB Versions: 
--   Developed for Oracle 11gR2 and Up
--
-- STAR_EMPS


CREATE TABLE  STAR_EMPS 
   (ENAME   VARCHAR2(50), 
	DEPTNO  VARCHAR2(50), 
	SALARY  NUMBER
   );

INSERT ALL 
	INTO STAR_EMPS (ename, deptno, salary)
		 VALUES ('RINGWALD', 'BRAT-PACK', 25000)
	INTO STAR_EMPS (ename, deptno, salary)
		 VALUES ('NELSON', 'BRAT-PACK', 40500)
	INTO STAR_EMPS (ename, deptno, salary)
		 VALUES ('ESTEVEZ', 'BRAT-PACK', 35000)
	INTO STAR_EMPS (ename, deptno, salary)
		 VALUES ('SPADER', 'BRAT-PACK', 42000)
	INTO STAR_EMPS (ename, deptno, salary)
		 VALUES ('MOORE', 'BRAT-PACK', 15750)
	INTO STAR_EMPS (ename, deptno, salary)
		 VALUES ('DOWNEY', 'BRAT-PACK', 26700)
	INTO STAR_EMPS (ename, deptno, salary)
		 VALUES ('SHEEN', 'BRAT-PACK', 57500)
	INTO STAR_EMPS (ename, deptno, salary)
		 VALUES ('DILLON', 'TEEN HERO', 27000)
	INTO STAR_EMPS (ename, deptno, salary)
		 VALUES ('PENN', 'TEEN HERO', 17890)
	INTO STAR_EMPS (ename, deptno, salary)
		 VALUES ('CRUISE', 'TEEN HERO', 26750);

COMMIT;
