--사원 테이블 생성
CREATE TABLE employee(
    empid NUMBER(3),
    empname VARCHAR2(20) NOT NULL,
    age NUMBER(3),
    deptid NUMBER(3),
    PRIMARY KEY(empid),
    FOREIGN KEY(deptid) REFERENCES department(deptid) --외래키
);

--사원 자료 추가
INSERT INTO employee(empid, empname, age, deptid) 
VALUES (101, '이강인', 23, 10);
INSERT INTO employee(empid, empname, age, deptid) 
VALUES (102, '손흥민', 32, 10); --(102, '손흥민', 32, 30); 부모코드가 없어서 외래키 제약조건 위배
INSERT INTO employee(empid, empname, deptid) 
VALUES (103, '황희찬', 20);
INSERT INTO employee(empid, empname, age, deptid) 
VALUES (104, '김민재', 28, 20);

--정보 출력
--1. 사원의 모든 정보 출력 (모든 데이터)
SELECT * FROM employee;

--2. 사원 이름과 나이 컬람 출력 (특정 칼람)
SELECT empname, age FROM employee;

--3. 사원이름이 손흥민인 데이터 출력 (특정 데이터)
SELECT * FROM employee
WHERE empname = '손흥민';

--나이가 30이상인 사원을 검색
SELECT * FROM employee
WHERE age >= 30 ;

--부서번호가 20인 사원 검색
SELECT * FROM employee
WHERE deptid = 20 ;

--나이가 입력되지 않은 사원 검색
SELECT * FROM employee
WHERE age IS NULL;

COMMIT;

DROP TABLE EMPLOYEE;