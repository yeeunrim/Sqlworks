--조건에 관련 함수
--DECODE(칼럼명, 조건, 참인값, 거짓인값)
--성별이 남자이면 'M', 여자이면 'F'로 출력
SELECT ename 사원이름, 
       gender 성별, 
       DECODE(gender,'남자', 'M', 'F') gender
FROM emp;

--조건 구문(IF~ELSE과 유사)
/*
CASE
    WHEN 조건1 THEN 결과1
    WHEN 조건2 THEN 결과2
    ELSE 결과2
END 칼럼명
*/
SELECT ename 사원이름, gender 성별, 
       CASE
          WHEN gender ='남자' THEN 'M'
          ELSE 'F'
        END gender
FROM emp;

--급여에 따른 직급 표시
--급여가 350만원 이상이면 직급을 '과장'으로 표시하고
--급여가 250만원 이상이면 직급을 '대리'로 표시하고
--나머지는 '사원'으로 표시
SELECT ename, 
       salary,
       CASE
         WHEN salary >= 3500000 THEN '과장'
         WHEN salary >= 2500000 THEN '대리'
         ELSE '사원'
       END 직급
FROM emp;

--salary 개수
--null은 제외
SELECT COUNT(salary)
FROM emp;

--null값에 0을 표시
--NVL(인수1, 인수2)
--인수1이 NULL이 아니면 인수1이 출력되고, 
--인수1이 NULL이면 인수2가 출력 
SELECT ename 이름,
       NVL(salary, 0) 급여
FROM emp;

SELECT COUNT(NVL(salary, 0)) 급여
FROM emp;


--실습 테이블 생성
CREATE TABLE K1(
    ID VARCHAR2(3),
    CNT NUMBER(2)
);

INSERT INTO K1 VALUES ('가', 5);
INSERT INTO K1 VALUES ('나', NULL);
INSERT INTO K1 VALUES ('다', 5);
INSERT INTO K1 VALUES ('라', NULL);
INSERT INTO K1 VALUES ('마', 10);

SELECT * FROM K1;

--NULL 처리
SELECT ID, NVL(CNT, 0) FROM K1;
--개수
SELECT COUNT(CNT) FROM K1; --3
SELECT COUNT(NVL(CNT, 0)) FROM K1; --5
--평균
SELECT ROUND(SUM(CNT) / COUNT(CNT), 1) FROM K1; --20 ÷ 3 = 6.7
SELECT SUM(CNT) / COUNT(NVL(CNT, 0)) FROM K1; --20 ÷ 5 = 4
--최소값, 최대값
SELECT MIN(NVL(CNT, 5)) FROM K1; --5
SELECT MAX(NVL(CNT, 5)) FROM K1; --10