
USERNAME                                                                                                                         DEFAULT_TABLESPACE             PROFILE                                                                                                                          AUTHENTI
-------------------------------------------------------------------------------------------------------------------------------- ------------------------------ -------------------------------------------------------------------------------------------------------------------------------- --------
C##ERPUSER                                                                                                                       USERS                          DEFAULT                                                                                                                          NONE    
SYS                                                                                                                              SYSTEM                         DEFAULT                                                                                                                          PASSWORD
SYSRAC                                                                                                                           USERS                          DEFAULT                                                                                                                          NONE    
SYSTEM                                                                                                                           SYSTEM                         DEFAULT                                                                                                                          PASSWORD


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Error starting at line : 31 in command -
CREATE TABLE BRANCH (
		BRANCHNO	INT CONSTRAINT PK_BRANCH_BRANCHNO PRIMARY KEY,
		BRANCHNAME  VARCHAR2(20) NOT NULL,
		LOCATION    VARCHAR2(20) NOT NULL 
	)
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Error starting at line : 37 in command -
CREATE TABLE DEPT    (
		DEPTNO NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,
		DNAME VARCHAR2(14), 
		BRANCHNO	INT CONSTRAINT FK_DEPT_BRANCHNO REFERENCES BRANCH
	)
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Error starting at line : 43 in command -
ALTER TABLE DEPT
    MODIFY DNAME VARCHAR2(14) NOT NULL UNIQUE
Error report -
ORA-01442: column to be modified to NOT NULL is already NOT NULL
01442. 00000 -  "column to be modified to NOT NULL is already NOT NULL"
*Cause:    
*Action:

Error starting at line : 46 in command -
CREATE TABLE EMP(
		EMPNO 		NUMBER(4) CONSTRAINT PK_EMP PRIMARY KEY,
		ENAME 		VARCHAR2(10),
		JOB 		VARCHAR2(9),
		MGR 		NUMBER(4),
		HIREDATE 	DATE,
		SAL 		NUMBER(7,2),
		COMM 		NUMBER(7,2),
		DEPTNO 		NUMBER(2) CONSTRAINT FK_EMP_DEPTNO REFERENCES DEPT,
		BRANCHNO 	INT CONSTRAINT FK_EMP_BRANCHNO REFERENCES BRANCH
	)
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Error starting at line : 59 in command -
    INSERT INTO BRANCH VALUES 	(101,'Geneva','NEW YORK')
Error report -
ORA-00001: unique constraint (SYS.PK_BRANCH_BRANCHNO) violated


Error starting at line : 60 in command -
	INSERT INTO BRANCH VALUES 	(102,'Geneva','NEW YORK')
Error report -
ORA-00001: unique constraint (SYS.PK_BRANCH_BRANCHNO) violated


Error starting at line : 61 in command -
	INSERT INTO BRANCH VALUES 	(103,'CHICAGO','CHICAGO')
Error report -
ORA-00001: unique constraint (SYS.PK_BRANCH_BRANCHNO) violated


Error starting at line : 62 in command -
	INSERT INTO BRANCH VALUES 	(104,'CHICAGO','CHICAGO')
Error report -
ORA-00001: unique constraint (SYS.PK_BRANCH_BRANCHNO) violated


Error starting at line : 63 in command -
	INSERT INTO BRANCH VALUES 	(105,'Kingston','NEW YORK')
Error report -
ORA-00001: unique constraint (SYS.PK_BRANCH_BRANCHNO) violated


Error starting at line : 64 in command -
	INSERT INTO BRANCH VALUES 	(106,'Kingston','NEW YORK')
Error report -
ORA-00001: unique constraint (SYS.PK_BRANCH_BRANCHNO) violated


Error starting at line : 67 in command -
    INSERT INTO DEPT VALUES	(10,'ACCOUNTING',101)
Error report -
ORA-00001: unique constraint (SYS.PK_DEPT) violated


Error starting at line : 68 in command -
	INSERT INTO DEPT VALUES        (20,'RESEARCH',103)
Error report -
ORA-00001: unique constraint (SYS.PK_DEPT) violated


Error starting at line : 69 in command -
	INSERT INTO DEPT VALUES	(30,'SALES',105)
Error report -
ORA-00001: unique constraint (SYS.PK_DEPT) violated


Error starting at line : 70 in command -
	INSERT INTO DEPT VALUES	(40,'OPERATIONS',106)
Error report -
ORA-00001: unique constraint (SYS.PK_DEPT) violated


Error starting at line : 73 in command -
INSERT INTO EMP VALUES(7369,'SMITH','CLERK',7902,to_date('17-12-1980','dd-mm-yyyy'),800,NULL,20,102)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 74 in command -
INSERT INTO EMP VALUES(7499,'ALLEN','SALESMAN',7698,to_date('20-2-1981','dd-mm-yyyy'),1600,300,30,102)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 75 in command -
INSERT INTO EMP VALUES(7521,'WARD','SALESMAN',7698,to_date('22-2-1981','dd-mm-yyyy'),1250,500,30,103)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 76 in command -
INSERT INTO EMP VALUES(7566,'JONES','MANAGER',7839,to_date('2-4-1981','dd-mm-yyyy'),2975,NULL,20,104)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 77 in command -
INSERT INTO EMP VALUES(7654,'MARTIN','SALESMAN',7698,to_date('28-9-1981','dd-mm-yyyy'),1250,1400,30,105)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 78 in command -
INSERT INTO EMP VALUES(7698,'BLAKE','MANAGER',7839,to_date('1-5-1981','dd-mm-yyyy'),2850,NULL,30,105)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 79 in command -
INSERT INTO EMP VALUES(7782,'CLARK','MANAGER',7839,to_date('9-6-1981','dd-mm-yyyy'),2450,NULL,10,102)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 80 in command -
INSERT INTO EMP VALUES(7788,'SCOTT','ANALYST',7566,to_date('13-JUL-87')-85,3000,NULL,20,103)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 81 in command -
INSERT INTO EMP VALUES(7839,'KING','PRESIDENT',NULL,to_date('17-11-1981','dd-mm-yyyy'),5000,NULL,NULL,101)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 82 in command -
INSERT INTO EMP VALUES(7844,'TURNER','SALESMAN',7698,to_date('8-9-1981','dd-mm-yyyy'),1500,0,30,104)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 83 in command -
INSERT INTO EMP VALUES(7876,'ADAMS','CLERK',7788,to_date('13-JUL-87')-51,1100,NULL,20,105)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 84 in command -
INSERT INTO EMP VALUES(7900,'JAMES','CLERK',7698,to_date('3-12-1981','dd-mm-yyyy'),950,NULL,30,103)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 85 in command -
INSERT INTO EMP VALUES(7902,'FORD','ANALYST',7566,to_date('3-12-1981','dd-mm-yyyy'),3000,NULL,20,105)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 86 in command -
INSERT INTO EMP VALUES(7934,'MILLER','CLERK',7782,to_date('23-1-1982','dd-mm-yyyy'),1300,NULL,10,104)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 87 in command -
INSERT INTO EMP VALUES(7901,'JOHN_SMITH','CLERK',7698,to_date('23-1-1982','dd-mm-yyyy'),3000,NULL,30,104)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Commit complete.


    DEPTNO DNAME            BRANCHNO
---------- -------------- ----------
        10 ACCOUNTING            101
        20 RESEARCH              103
        30 SALES                 105
        40 OPERATIONS            106


    DEPTNO DNAME            BRANCHNO
---------- -------------- ----------
        10 ACCOUNTING            101
        20 RESEARCH              103
        30 SALES                 105
        40 OPERATIONS            106


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20        102
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30        102
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30        103
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20        104
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30        105
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30        105
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10        102
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20        103
      7839 KING       PRESIDENT            17-NOV-81       5000                              101
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30        104
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20        105

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30        103
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20        105
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10        104
      7901 JOHN_SMITH CLERK           7698 23-JAN-82       3000                    30        104

15 rows selected. 


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20        102
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30        102
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30        103
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20        104
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30        105
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30        105
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10        102
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20        103
      7839 KING       PRESIDENT            17-NOV-81       5000                              101
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30        104
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20        105

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30        103
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20        105
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10        104
      7901 JOHN_SMITH CLERK           7698 23-JAN-82       3000                    30        104

15 rows selected. 


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20        102
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30        102
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30        103
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20        104
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30        105
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30        105
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10        102
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20        103
      7839 KING       PRESIDENT            17-NOV-81       5000                              101
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30        104
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20        105

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30        103
      7901 JOHN_SMITH CLERK           7698 23-JAN-82       3000                    30        104
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20        105
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10        104

15 rows selected. 


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10        104
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10        102
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20        104
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20        102
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20        103
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20        105
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20        105
      7901 JOHN_SMITH CLERK           7698 23-JAN-82       3000                    30        104
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30        104
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30        102
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30        103

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30        103
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30        105
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30        105
      7839 KING       PRESIDENT            17-NOV-81       5000                              101

15 rows selected. 


    DEPTNO      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM   BRANCHNO
---------- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
        10       7782 CLARK      MANAGER         7839 09-JUN-81       2450                   102
        10       7934 MILLER     CLERK           7782 23-JAN-82       1300                   104
        20       7369 SMITH      CLERK           7902 17-DEC-80        800                   102
        20       7566 JONES      MANAGER         7839 02-APR-81       2975                   104
        20       7788 SCOTT      ANALYST         7566 19-APR-87       3000                   103
        20       7876 ADAMS      CLERK           7788 23-MAY-87       1100                   105
        20       7902 FORD       ANALYST         7566 03-DEC-81       3000                   105
        30       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300        102
        30       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500        103
        30       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400        105
        30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                   105

    DEPTNO      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM   BRANCHNO
---------- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
        30       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0        104
        30       7900 JAMES      CLERK           7698 03-DEC-81        950                   103
        30       7901 JOHN_SMITH CLERK           7698 23-JAN-82       3000                   104
                 7839 KING       PRESIDENT            17-NOV-81       5000                   101

15 rows selected. 


USERNAME                                                                                                                         DEFAULT_TABLESPACE             PROFILE                                                                                                                          AUTHENTI
-------------------------------------------------------------------------------------------------------------------------------- ------------------------------ -------------------------------------------------------------------------------------------------------------------------------- --------
C##ERPUSER                                                                                                                       USERS                          DEFAULT                                                                                                                          NONE    
SYS                                                                                                                              SYSTEM                         DEFAULT                                                                                                                          PASSWORD
SYSRAC                                                                                                                           USERS                          DEFAULT                                                                                                                          NONE    
SYSTEM                                                                                                                           SYSTEM                         DEFAULT                                                                                                                          PASSWORD


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Error starting at line : 31 in command -
CREATE TABLE BRANCH (
		BRANCHNO	INT CONSTRAINT PK_BRANCH_BRANCHNO PRIMARY KEY,
		BRANCHNAME  VARCHAR2(20) NOT NULL,
		LOCATION    VARCHAR2(20) NOT NULL 
	)
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Error starting at line : 37 in command -
CREATE TABLE DEPT    (
		DEPTNO NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,
		DNAME VARCHAR2(14), 
		BRANCHNO	INT CONSTRAINT FK_DEPT_BRANCHNO REFERENCES BRANCH
	)
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Error starting at line : 43 in command -
ALTER TABLE DEPT
    MODIFY DNAME VARCHAR2(14) NOT NULL UNIQUE
Error report -
ORA-01442: column to be modified to NOT NULL is already NOT NULL
01442. 00000 -  "column to be modified to NOT NULL is already NOT NULL"
*Cause:    
*Action:

Error starting at line : 46 in command -
CREATE TABLE EMP(
		EMPNO 		NUMBER(4) CONSTRAINT PK_EMP PRIMARY KEY,
		ENAME 		VARCHAR2(10),
		JOB 		VARCHAR2(9),
		MGR 		NUMBER(4),
		HIREDATE 	DATE,
		SAL 		NUMBER(7,2),
		COMM 		NUMBER(7,2),
		DEPTNO 		NUMBER(2) CONSTRAINT FK_EMP_DEPTNO REFERENCES DEPT,
		BRANCHNO 	INT CONSTRAINT FK_EMP_BRANCHNO REFERENCES BRANCH
	)
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Error starting at line : 59 in command -
    INSERT INTO BRANCH VALUES 	(101,'Geneva','NEW YORK')
Error report -
ORA-00001: unique constraint (SYS.PK_BRANCH_BRANCHNO) violated


Error starting at line : 60 in command -
	INSERT INTO BRANCH VALUES 	(102,'Geneva','NEW YORK')
Error report -
ORA-00001: unique constraint (SYS.PK_BRANCH_BRANCHNO) violated


Error starting at line : 61 in command -
	INSERT INTO BRANCH VALUES 	(103,'CHICAGO','CHICAGO')
Error report -
ORA-00001: unique constraint (SYS.PK_BRANCH_BRANCHNO) violated


Error starting at line : 62 in command -
	INSERT INTO BRANCH VALUES 	(104,'CHICAGO','CHICAGO')
Error report -
ORA-00001: unique constraint (SYS.PK_BRANCH_BRANCHNO) violated


Error starting at line : 63 in command -
	INSERT INTO BRANCH VALUES 	(105,'Kingston','NEW YORK')
Error report -
ORA-00001: unique constraint (SYS.PK_BRANCH_BRANCHNO) violated


Error starting at line : 64 in command -
	INSERT INTO BRANCH VALUES 	(106,'Kingston','NEW YORK')
Error report -
ORA-00001: unique constraint (SYS.PK_BRANCH_BRANCHNO) violated


Error starting at line : 67 in command -
    INSERT INTO DEPT VALUES	(10,'ACCOUNTING',101)
Error report -
ORA-00001: unique constraint (SYS.PK_DEPT) violated


Error starting at line : 68 in command -
	INSERT INTO DEPT VALUES        (20,'RESEARCH',103)
Error report -
ORA-00001: unique constraint (SYS.PK_DEPT) violated


Error starting at line : 69 in command -
	INSERT INTO DEPT VALUES	(30,'SALES',105)
Error report -
ORA-00001: unique constraint (SYS.PK_DEPT) violated


Error starting at line : 70 in command -
	INSERT INTO DEPT VALUES	(40,'OPERATIONS',106)
Error report -
ORA-00001: unique constraint (SYS.PK_DEPT) violated


Error starting at line : 73 in command -
INSERT INTO EMP VALUES(7369,'SMITH','CLERK',7902,to_date('17-12-1980','dd-mm-yyyy'),800,NULL,20,102)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 74 in command -
INSERT INTO EMP VALUES(7499,'ALLEN','SALESMAN',7698,to_date('20-2-1981','dd-mm-yyyy'),1600,300,30,102)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 75 in command -
INSERT INTO EMP VALUES(7521,'WARD','SALESMAN',7698,to_date('22-2-1981','dd-mm-yyyy'),1250,500,30,103)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 76 in command -
INSERT INTO EMP VALUES(7566,'JONES','MANAGER',7839,to_date('2-4-1981','dd-mm-yyyy'),2975,NULL,20,104)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 77 in command -
INSERT INTO EMP VALUES(7654,'MARTIN','SALESMAN',7698,to_date('28-9-1981','dd-mm-yyyy'),1250,1400,30,105)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 78 in command -
INSERT INTO EMP VALUES(7698,'BLAKE','MANAGER',7839,to_date('1-5-1981','dd-mm-yyyy'),2850,NULL,30,105)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 79 in command -
INSERT INTO EMP VALUES(7782,'CLARK','MANAGER',7839,to_date('9-6-1981','dd-mm-yyyy'),2450,NULL,10,102)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 80 in command -
INSERT INTO EMP VALUES(7788,'SCOTT','ANALYST',7566,to_date('13-JUL-87')-85,3000,NULL,20,103)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 81 in command -
INSERT INTO EMP VALUES(7839,'KING','PRESIDENT',NULL,to_date('17-11-1981','dd-mm-yyyy'),5000,NULL,NULL,101)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 82 in command -
INSERT INTO EMP VALUES(7844,'TURNER','SALESMAN',7698,to_date('8-9-1981','dd-mm-yyyy'),1500,0,30,104)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 83 in command -
INSERT INTO EMP VALUES(7876,'ADAMS','CLERK',7788,to_date('13-JUL-87')-51,1100,NULL,20,105)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 84 in command -
INSERT INTO EMP VALUES(7900,'JAMES','CLERK',7698,to_date('3-12-1981','dd-mm-yyyy'),950,NULL,30,103)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 85 in command -
INSERT INTO EMP VALUES(7902,'FORD','ANALYST',7566,to_date('3-12-1981','dd-mm-yyyy'),3000,NULL,20,105)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 86 in command -
INSERT INTO EMP VALUES(7934,'MILLER','CLERK',7782,to_date('23-1-1982','dd-mm-yyyy'),1300,NULL,10,104)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Error starting at line : 87 in command -
INSERT INTO EMP VALUES(7901,'JOHN_SMITH','CLERK',7698,to_date('23-1-1982','dd-mm-yyyy'),3000,NULL,30,104)
Error report -
ORA-00001: unique constraint (SYS.PK_EMP) violated


Commit complete.


    DEPTNO DNAME            BRANCHNO
---------- -------------- ----------
        10 ACCOUNTING            101
        20 RESEARCH              103
        30 SALES                 105
        40 OPERATIONS            106


    DEPTNO DNAME            BRANCHNO
---------- -------------- ----------
        10 ACCOUNTING            101
        20 RESEARCH              103
        30 SALES                 105
        40 OPERATIONS            106


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20        102
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30        102
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30        103
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20        104
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30        105
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30        105
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10        102
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20        103
      7839 KING       PRESIDENT            17-NOV-81       5000                              101
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30        104
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20        105

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30        103
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20        105
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10        104
      7901 JOHN_SMITH CLERK           7698 23-JAN-82       3000                    30        104

15 rows selected. 


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20        102
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30        102
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30        103
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20        104
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30        105
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30        105
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10        102
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20        103
      7839 KING       PRESIDENT            17-NOV-81       5000                              101
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30        104
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20        105

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30        103
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20        105
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10        104
      7901 JOHN_SMITH CLERK           7698 23-JAN-82       3000                    30        104

15 rows selected. 


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20        102
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30        102
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30        103
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20        104
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30        105
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30        105
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10        102
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20        103
      7839 KING       PRESIDENT            17-NOV-81       5000                              101
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30        104
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20        105

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30        103
      7901 JOHN_SMITH CLERK           7698 23-JAN-82       3000                    30        104
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20        105
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10        104

15 rows selected. 


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10        104
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10        102
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20        104
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20        102
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20        103
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20        105
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20        105
      7901 JOHN_SMITH CLERK           7698 23-JAN-82       3000                    30        104
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30        104
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30        102
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30        103

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   BRANCHNO
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30        103
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30        105
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30        105
      7839 KING       PRESIDENT            17-NOV-81       5000                              101

15 rows selected. 


    DEPTNO      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM   BRANCHNO
---------- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
        10       7782 CLARK      MANAGER         7839 09-JUN-81       2450                   102
        10       7934 MILLER     CLERK           7782 23-JAN-82       1300                   104
        20       7369 SMITH      CLERK           7902 17-DEC-80        800                   102
        20       7566 JONES      MANAGER         7839 02-APR-81       2975                   104
        20       7788 SCOTT      ANALYST         7566 19-APR-87       3000                   103
        20       7876 ADAMS      CLERK           7788 23-MAY-87       1100                   105
        20       7902 FORD       ANALYST         7566 03-DEC-81       3000                   105
        30       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300        102
        30       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500        103
        30       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400        105
        30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                   105

    DEPTNO      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM   BRANCHNO
---------- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
        30       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0        104
        30       7900 JAMES      CLERK           7698 03-DEC-81        950                   103
        30       7901 JOHN_SMITH CLERK           7698 23-JAN-82       3000                   104
                 7839 KING       PRESIDENT            17-NOV-81       5000                   101

15 rows selected. 

