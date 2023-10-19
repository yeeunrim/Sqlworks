USE mydb;

SELECT * FROM department;
SELECT * FROM employee;

-- 삽입 오류
-- [ERROR] 부서 테이블에 아이디가 30이 없다.
INSERT INTO employee VALUES (106, '양신입', 25, null, 30);

-- 급여가 400만원 이상, 부서번호가 10인 사원을 검색 
SELECT * FROM employee
WHERE sal >= 4000000 AND deptid = 10;

-- 급여가 많은 순으로 정렬
SELECT * FROM employee
ORDER BY sal DESC;

-- 급여가 없는 사원
SELECT * FROM employee
WHERE sal IS NULL;

-- 사원의 총 인원, 급여 총액과 급여 평균
SELECT COUNT(*) 총인원, 
       SUM(sal) 급여총액, 
       ROUND(AVG(sal), 0) 급여평균 
FROM employee;

-- 부서별 급여 총액, 급여 평균
SELECT deptid 부서번호, SUM(sal) 급여총액, ROUND(AVG(sal), -2) 급여평균
FROM employee
GROUP BY deptid;

-- 부서이름을 포함한 사원의 모든 정보(조인 방식)
-- 1. 동등조인
SELECT a.deptname, b.*
FROM department a, employee b
WHERE a.deptid = b.deptid;
-- 2. 내부조인 
-- 2-1. JOIN ~ ON
SELECT a.deptname, b.*
FROM department a JOIN employee b
	ON a.deptid = b.deptid;
-- 2-2. JOIN ~ USING
SELECT a.deptname, b.*
FROM department a JOIN employee b
	USING (deptid);
    
-- 부서별, 부서이름별 급여 총액과 급여 평균
SELECT a.deptid, 
       a.deptname,
       SUM(b.sal) 급여총액, 
       ROUND(AVG(b.sal), -2) 급여평균
FROM department a JOIN employee b
	ON a.deptid = b.deptid
GROUP BY deptid, deptname;

-- 부서별, 부서이름별 급여 소계와 총계
-- IFNULL = NVL
SELECT a.deptid,
       IFNULL(a.deptname, '소계') 부서이름,
       SUM(b.sal) 급여총액, 
       ROUND(AVG(b.sal), -2) 급여평균
FROM department a JOIN employee b
	ON a.deptid = b.deptid
GROUP BY deptid, deptname WITH ROLLUP;

-- 최고 급여를 받는 사원의 정보
-- 서브 쿼리 활용
SELECT * FROM employee
WHERE sal = (SELECT MAX(sal) FROM employee);

-- 최고 급여를 받는 사원과 최저 급여를 받는 사원의 정보
SELECT * FROM employee
WHERE sal = (SELECT MAX(sal) FROM employee) 
	OR sal = (SELECT MIN(sal) FROM employee);

-- '백두산' 사원의 급여를 430만원으로 변경
UPDATE employee SET sal = 4300000
WHERE empid = 102;

-- 사원의 급여 순위
SELECT RANK() OVER (ORDER BY sal DESC) 순위, empname 사원, sal 급여
FROM employee;
SELECT DENSE_RANK() OVER (ORDER BY sal DESC) 순위, empname 사원, sal 급여
FROM employee;