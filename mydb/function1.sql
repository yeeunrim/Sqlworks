--제공 테이블 : dual

--1.숫자 타입 내장 함수
--절대값 구하기 : ABS()
SELECT ABS(-10) FROM dual; --10

--반올림 : ROUND(숫자, 자리수)
SELECT ROUND(127.67, 1) FROM dual; --소수 둘째자리 반올림 : 127.7
SELECT ROUND(127.67, 0) FROM dual; --소수 첫째자리 반올림 : 128
SELECT ROUND(127.67, -1) FROM dual; --일의 자리 반올림 : 130
SELECT ROUND(127.67, -2) FROM dual; --십의 자리 반올림 : 100

--버림(내림) : TRUNC(숫자, 자리수)
SELECT TRUNC(127.67, 1) FROM dual; --소수 첫째자리까지 표시(이후 버림) : 127.6
SELECT TRUNC(127.67, 0) FROM dual; --127
SELECT TRUNC(127.67, -1) FROM dual; --120
SELECT TRUNC(127.67, -2) FROM dual; --100

--버림(내림) : FLOOR(숫자) - 정수로 내림
SELECT FLOOR(127.67) FROM dual; --127
SELECT FLOOR(127.6) FROM dual; --127

--거듭제곱 : POWER(일, 지수)
SELECT POWER(2, 3) FROM dual; --8


--2.문자 타입 내장 함수
--소문자로 변경하기 : LOWER()
SELECT LOWER('ABCD') FROM dual; --abcd
--대문자로 변경하기 : UPPER()
SELECT UPPER('abcd') FROM dual; --ABCD

--문자열의 일부분을 추출 : SUBSTR(문자열, 인덱스, 자리수)
--인덱스는 1번부터 시작
SELECT SUBSTR('abcd', 1, 2) FROM dual; --ab

--문자열을 찾아 바꾸기 : REPLACE(문자열, 변경전문자, 변경후문자)
SELECT REPLACE('abcd', 'c', 'e') FROM dual; --abed

--문자열의 길이 : LENGTH(문자열)
SELECT LENGTH('abcd') FROM dual; --4

--마스킹 표시 : LPAD(문자열, 길이, 특정문자) - 왼쪽부터 특정문자로 채움
          --  : RPAD(문자열, 길이, 특정문자) - 오른쪽부터 특정문자로 채움
SELECT LPAD('today', 10,'*') FROM dual; --*****today
SELECT RPAD('today', 10,'*') FROM dual; --today*****


--주문테이블
--고객별 평균 주문 금액을 백원 단위로 반올림
SELECT cusid AS 고객번호,
       SUM(saleprice) AS 합계금액, 
       COUNT(saleprice) AS 주문건수, 
       ROUND (AVG(saleprice), -2) AS 평균주문금액
FROM orders
GROUP BY cusid;

--도서테이블
--책 제목의 글자 수 (공백 포함)
--한글 = 3바이트, 공백/영어 = 1바이트
SELECT bookname,
       LENGTH(bookname) AS 글자수,
       LENGTHB(bookname) AS 바이트수
FROM book;

--'축구'를 '농구'로 변경하여 검색
SELECT bookname,
       REPLACE (bookname, '축구', '농구') AS bookname
FROM book;

--고객 테이블
--고객 이름별 같은 성을 가진 고객의 인원수를 구하시오.
SELECT SUBSTR(name, 1, 1) AS 성,
       COUNT(*) 인원
FROM customer
GROUP BY SUBSTR(name, 1, 1);