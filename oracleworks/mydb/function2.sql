--날짜 시간 함수

--현재 날짜 출력
SELECT SYSDATE FROM dual;
--현재 날짜 형식 변환
SELECT TO_CHAR(SYSDATE, 'YYYY') 년도,
       TO_CHAR(SYSDATE, 'MM') 월,
       TO_CHAR(SYSDATE, 'DD') 일,
       TO_CHAR(SYSDATE, 'YYYY/MM/DD') 날짜
FROM dual;

--현재 날짜와 시간
SELECT SYSTIMESTAMP FROM dual;
--시간 형식 변환
SELECT TO_CHAR(CURRENT_TIMESTAMP, 'HH:MI:SS') 시간,
       TO_CHAR(CURRENT_TIMESTAMP, 'YYYY/MM/DD HH:MI:SS') 날짜와시간
FROM dual;

--일을 더하고 빼기
--현재 날짜에서 10일전/후의 날짜 출력
SELECT SYSDATE -10 FROM dual;
SELECT SYSDATE +10 FROM dual;
--특정 날짜에서 10일전/후의 날짜 출력 : TO_DATE('날짜')
SELECT TO_DATE('2023-09-01') -10 FROM dual;
SELECT TO_DATE('2023-09-01') +10 FROM dual;

--월을 더하고 빼기 : ADD_MONTHS(현재월, 수)
SELECT ADD_MONTHS(SYSDATE, 3) 결과 FROM dual;
SELECT ADD_MONTHS(SYSDATE, -3) 결과 FROM dual;
--특정 월에서 더하기
SELECT ADD_MONTHS(TO_DATE('2023/05/01'), 3) 결과 FROM dual;

--개월 수 계산
--MONTHS_BETWEEN(종료일, 시작일)
--총 개월 수 반올림 - ROUND() 사용
SELECT 
    ROUND(MONTHS_BETWEEN(SYSDATE, 
        TO_DATE('2023/01/01')), 0) 총개월수
FROM dual;
SELECT 
    ROUND(MONTHS_BETWEEN(TO_DATE('2023/12/31'), 
        TO_DATE('2023/01/01')), 0) 총개월수
FROM dual;

--orders 테이블에서 날짜, 시간함수 사용
--서점은 주문일로부터 10일후에 매출을 확정한다.
--각 주문의 확정일자를 구하시오.
SELECT orderid 주문번호,
       orderdate 주문일,
       TO_DATE(orderdate) + 10 확정일
FROM orders;

--주문일에 3개월을 더하고 빼기
--주문번호가 6번에서 10번까지 출력
SELECT orderid 주문번호, orderdate 주문일,
       ADD_MONTHS(TO_DATE(orderdate), 3) 더하기결과,
       ADD_MONTHS(TO_DATE(orderdate), -3) 빼기결과
FROM orders
WHERE orderid BETWEEN 6 AND 10;
--WHERE orderid >= 6 AND orderid <= 10;

--주문번호가 10인 도서의 주문일로부터 오늘까지의 총 개월수를 구하시오.
SELECT orderid 주문번호, orderdate 주문일, TO_CHAR(SYSDATE, 'YYYY-MM-YY') 현재일,
    ROUND(MONTHS_BETWEEN(SYSDATE, TO_DATE(orderdate)), 0) 총개월수
FROM orders
WHERE orderid = 10;

--변환 함수 : TO_NUMBER() - 문자를 숫자로 변환
SELECT TO_NUMBER('320') FROM dual;