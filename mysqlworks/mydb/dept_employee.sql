-- 부서 테이블 작성
CREATE TABLE department(
	deptid INT PRIMARY KEY,
    deptname VARCHAR(30) NOT NULL,
    location VARCHAR(20) NOT NULL
);

INSERT INTO department VALUES (10, '개발팀', '서울');
INSERT INTO department VALUES (20, '디자인팀', '부천');

-- 사원 테이블 작성
CREATE TABLE employee(
	empid INT PRIMARY KEY,
    empname VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    sal INT ,
    deptid INT NOT NULL,
    FOREIGN KEY(deptid) REFERENCES department(deptid)
);

INSERT INTO employee VALUES (101, '한강', 27, 2100000, 10);
INSERT INTO employee VALUES (102, '백두산', 32, 3200000, 20);
INSERT INTO employee VALUES (103, '오과장', 45, 5500000, 10);
INSERT INTO employee VALUES (104, '김대리', 38, 4300000, 10);
INSERT INTO employee VALUES (105, '양신입', 25, null, 10);