--JOB INFO 테이블 생성
--SALARY는 달러($) 기준
CREATE TABLE JOB_INFO(
    JOB_ID VARCHAR(10), --직업아이디
    MIN_SALARY NUMBER,   --최저급여
    MAX_SALARY NUMBER    --최고급여
);

INSERT INTO JOB_INFO(JOB_ID, MIN_SALARY, MAX_SALARY)
VALUES ('AD_PRES', 20000, 40000);
INSERT INTO JOB_INFO(JOB_ID, MIN_SALARY, MAX_SALARY)
VALUES ('AD_VP', 15000, 30000);
INSERT INTO JOB_INFO(JOB_ID, MIN_SALARY, MAX_SALARY)
VALUES ('AD_ASST', 3000, 6000);
INSERT INTO JOB_INFO(JOB_ID, MIN_SALARY, MAX_SALARY)
VALUES ('FI_MGR', 8000, 16000);
INSERT INTO JOB_INFO(JOB_ID, MIN_SALARY, MAX_SALARY)
VALUES ('FI_ACCOUNT', 4000, 9000);
INSERT INTO JOB_INFO(JOB_ID, MIN_SALARY, MAX_SALARY)
VALUES ('AC_MGR', 8000, 16000);
INSERT INTO JOB_INFO(JOB_ID, MIN_SALARY, MAX_SALARY)
VALUES ('AC_ACCOUNT', 4000, 9000);

COMMIT;

SELECT * FROM JOB_INFO;

--최저급여, 최고급여의 평균
SELECT ROUND(AVG(MIN_SALARY), -1) 최저급여평균,
       AVG(MAX_SALARY) 최고급여평균
FROM JOB_INFO;

/* 
    실행 순서
    1. FROM절
    2. WHERE절
    3. SELECT절
    4. ORDER BY
*/

--최저 급여가 5000달러 이상인 직업 아이디 검색
SELECT JOB_ID, MIN_SALARY MIN_SAL
FROM JOB_INFO
WHERE MIN_SALARY >= 5000;
--MIN_SAL >= 5000; - 실행 순서가 SELECT절 전이므로 별칭 사용 불가



--사용자는 뷰를 이용해서 자료를 검색하며, 테이블에 대한 정보는 모른다.
--최저 급여가 5000달러 이상인 정보를 검색한 뷰 생성
CREATE VIEW V_JOB_INFO 
AS SELECT *
FROM JOB_INFO
WHERE MIN_SALARY >= 5000;

SELECT * FROM V_JOB_INFO;

--최고급여와 최저급여의 차가 10000달러 이상인 직업아이디 수 검색
SELECT COUNT(JOB_ID) 결과
FROM V_JOB_INFO
WHERE MAX_SALARY - MIN_SALARY >= 10000;

--직업 아이디의 이름이 FI로 시작하는 자료를 검색
SELECT *
FROM V_JOB_INFO
WHERE JOB_ID LIKE 'FI%';