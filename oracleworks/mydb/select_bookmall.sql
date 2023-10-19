--모든 자료 조회
SELECT * FROM orders;

--주문 테이블의 컬럼, 자료형 조회
DESC orders;

--통계 함수 - 개수(COUNT), 합계(SUM), 평균(AVG), 최대값(MAX), 최소값(MIN)
--1.개수(COUNT)
--COUNT(*) : '*' - 칼럼명
--COUNT(칼럼명) : null이 있는 것은 제외됨
SELECT COUNT(*) AS 총판매건수
FROM orders;

SELECT COUNT(phone) AS 총고객수 FROM customer; --총고객수 = 4명으로 (틀린 결과)

SELECT COUNT(*) AS 총고객수, COUNT(phone) AS 전화번호수 FROM customer;

--2.합계(SUM)
--3.평균(AVG)
SELECT SUM(saleprice) AS 총판매액,
       AVG(saleprice) AS 총평균액
FROM orders;

--고객이 주문한 도서의 총판매액 계산
SELECT SUM(saleprice) AS 총판매액
FROM orders;

--그룹으로 묶을 때 사용 - GROUP BY 칼럼명;
--고객별로 주문한 도서의 총판매액을 계산
SELECT cusid, 
       SUM(saleprice) AS 총판매액 
FROM orders
GROUP BY cusid;

--고객별로 주문한 도서의 총판매액과 도서수량을 계산
--도서수량이 3권 이상인 자료 검색
--HAVING 절 사용 - GROUP BY절에서 조건이 있을 때 사용
SELECT cusid, 
       COUNT(*) AS 도서수량,
       SUM(saleprice) AS 총판매액 
FROM orders
GROUP BY cusid
HAVING COUNT(*) >= 3;
    --AND SUM(saleprice) > 35000;

--도서 중에서 최대가격, 최저가격 조회
--4.최대값(MAX)
--5.최소값(MIN)
SELECT MAX(price) 최고가격, MIN(price) 최저가격
FROM book;

--'3번 고객(안산)'이 주문한 도서의 총 판매액 
SELECT SUM(saleprice) AS 총판매액
FROM orders
WHERE cusid = 3;

--조인(join) 이용 
--그 중에서도 동등조인(EQUI JOIN) : equal(=)을 사용하는 조인
--테이블A.칼럼명 = 테이블B.칼럼명 (* 칼럼명 = 외래키)
--고객의 이름과 고객이 주문한 도서의 판매가격 조회
SELECT customer.name, orders.saleprice
FROM customer, orders
WHERE customer.cusid = orders.cusid;

--별칭 사용 조인
--고객 이름별 정렬(오름차순), 주문 가격별 정렬(내림차순)
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.cusid = ord.cusid
ORDER BY cus.name, ord.saleprice DESC;

--'3번 고객(안산)'의 도서이름, 아이디와 주문 가격을 검색
SELECT cusid, saleprice, bookname
FROM orders, book
WHERE orders.bookid = book.bookid AND cusid = 3;
