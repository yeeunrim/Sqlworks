--ROLLUP(), CUBE(), GROUPING SETS()
CREATE TABLE tbl_dept(
    dept_no VARCHAR2(3),
    job_nm VARCHAR2(30),
    salary NUMBER
);

INSERT INTO tbl_dept VALUES ('100', '증권사', 3300000);
INSERT INTO tbl_dept VALUES ('100', '관리자', 4300000);
INSERT INTO tbl_dept VALUES ('100', '관리자', 2500000);
INSERT INTO tbl_dept VALUES ('200', '증권사', 5000000);
INSERT INTO tbl_dept VALUES ('200', '데이터분석가', 4000000);
INSERT INTO tbl_dept VALUES ('200', '관리자', 6000000);

SELECT * FROM tbl_dept;

-- 부서 전체의 인원 수와 급여 합계
SELECT COUNT(*) 인원수, SUM(salary) 급여합계
FROM tbl_dept;

-- 부서별, 직업이름별 인원 수와 급여 합계
SELECT dept_no 부서번호, job_nm 직업, COUNT(*) 인원수, SUM(salary) 급여합계
FROM tbl_dept
GROUP BY dept_no, job_nm;

-- 부서별 인원 수와 급여 합계(소계, 총계)
SELECT dept_no 부서번호, job_nm 직업, COUNT(*) 인원수, SUM(salary) 급여합계
FROM tbl_dept
GROUP BY ROLLUP(dept_no, job_nm);

-- 부서별, 직업이름별 인원 수와 급여 합계(소계, 총계)
SELECT NVL(dept_no, '총계') 부서번호, NVL(job_nm, '소계') 직업, COUNT(*) 인원수, SUM(salary) 급여합계
FROM tbl_dept
GROUP BY CUBE(dept_no, job_nm)
ORDER BY dept_no;

-- 부서별, 직업이름별 인원 수와 급여 합계(소계)
SELECT NVL(dept_no, '소계') 부서번호, NVL(job_nm, '소계') 직업, COUNT(*) 인원수, SUM(salary) 급여합계
FROM tbl_dept
GROUP BY GROUPING SETS(dept_no, job_nm)
ORDER BY dept_no;

COMMIT;