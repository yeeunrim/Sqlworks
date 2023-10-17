--서브 쿼리(Sub Query) : 부서질의 (중첩 쿼리)

--도서 중 가격이 가장 높은 도서 검색
--MAX(PRICE)
SELECT MAX(price) FROM book;

--단일행 서브쿼리
--도서 중 가장 비싼 가장 도서 검색
SELECT bookname
FROM book
WHERE price = (SELECT MAX(price) FROM book);

--도서를 구매한 적이 있는 고객의 이름 검색
SELECT cusid FROM orders;

/* SELECT name
FROM customer
WHERE cusid IN (1, 2, 3, 4); */

--다중행 서브쿼리 (IN을 사용)
--도서를 구매한 적이 있는 고객의 이름 출력
SELECT name
FROM customer
WHERE cusid IN (SELECT cusid FROM orders);
--도서를 구매한 적이 없는 고객의 이름 출력
SELECT name
FROM customer
WHERE cusid NOT IN (SELECT cusid FROM orders);

--조인 방식
--도서를 구매한 적이 있는 고객의 이름 검색
--SELECT DISTINCT cus.name (중복 제거)
SELECT cus.name
FROM customer cus, orders ord
WHERE cus.cusid = ord.cusid
GROUP BY cus.name;

SELECT DISTINCT cus.name
FROM customer cus, orders ord
WHERE cus.cusid = ord.cusid;

/* 
<실행순서>
1. FROM절
2. WHERE절, GROUP BY
3. SELECT절
4. ORDER절
*/

--FROM절에 있는 서브쿼리 - 인라인뷰라고도 함
--고객의 이름과 그 고객의 판매액 검색(customr, orders)
--그룹별 GROUP BY
--단, 고객 번호가 2 이하

--1. 동등조인
SELECT cus.name 이름, SUM(ord.saleprice) 판매액
FROM customer cus, orders ord
WHERE cus.cusid = ord.cusid AND cus.cusid <= 2
GROUP BY cus.name
    HAVING SUM(ord.saleprice) >= 30000;
--2. 서브쿼리
SELECT cus.name 이름, SUM(ord.saleprice) 판매액
FROM (SELECT * FROM customer WHERE cusid <= 2) cus, 
     orders ord
WHERE cus.cusid = ord.cusid
GROUP BY cus.name;


SELECT * FROM product;
SELECT * FROM product_review;
--스칼라 서브쿼리 : select절에 있는 select문
--상품리뷰 테이블에 있는 상품 이름 검색
--1.동등조인
SELECT a.product_name
FROM product a, product_review b
WHERE a.product_code = b.product_code;
--2.서브쿼리
SELECT a.product_code,
       (SELECT b.product_name 
        FROM product b 
        WHERE a.product_code = b.product_code) product_name,
       a.member_id,
       a.content
FROM product_review a;