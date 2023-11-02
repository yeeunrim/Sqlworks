-- 날짜 칼럼
-- 1. DATE DEFAULT SYSDATE : 현재 날짜와 시간
-- 2. HIRE_DATE DATE : 특정 날짜

-- 날짜
SELECT SYSDATE FROM DUAL;

-- 날짜와 시간
SELECT SYSTIMESTAMP FROM DUAL;

-- 현재에서 20일 전에 날짜
SELECT SYSDATE-20 FROM DUAL;

-- 특정 날짜에서 20일 전에 날짜
SELECT TO_DATE('2023-10-25')-20 FROM DUAL;

-- 서점의 주문 확정일자
SELECT orderid 주문번호,
       orderdate 주문일자, 
       TO_DATE(orderdate) + 10 확정일자
FROM orders;

----------------------------------------------

CREATE TABLE date_test1(
    reg_date DATE,
    hire_date DATE
);

INSERT INTO date_test1 VALUES(SYSDATE, '2023-11-01');
INSERT INTO date_test1 VALUES(SYSDATE, TO_DATE('2023-11-01'));

SELECT * FROM date_test1;

----------------------------------------------

CREATE TABLE date_test2(
    reg_date DATE DEFAULT SYSDATE,
    hire_date DATE
);

INSERT INTO date_test2(hire_date) VALUES('2023-11-01');
INSERT INTO date_test2(hire_date) VALUES(TO_DATE('2023-11-01')); --권장

SELECT * FROM date_test2;