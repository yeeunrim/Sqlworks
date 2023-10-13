--dept 테이블

--부서와 사원 테이블 생성
CREATE TABLE dept(
    deptid NUMBER PRIMARY KEY, --기본키
    deptname VARCHAR2(20) NOT NULL, --NULL불허
    location VARCHAR2(20) NOT NULL
);

--자료 입력
INSERT INTO dept(deptid, deptname, location) 
VALUES (10, '전산팀', '서울');
INSERT INTO dept(deptid, deptname, location) 
VALUES (20, '관리팀', '인천');
INSERT INTO dept(deptid, deptname, location) 
VALUES (30, '마케팅팀', '수원');

/*자료 검색*/
SELECT * FROM dept;

COMMIT;

--부서이름에서 팀을 제외한 이름을 출력
SELECT SUBSTR(deptname, 1, LENGTH(deptname)-1) AS 부서이름,
       REPLACE(deptname, '팀', '') AS 부서이름2
FROM dept;