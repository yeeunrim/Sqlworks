--서브 쿼리(Sub Query) : 부서질의 (중첩 쿼리)


--도서 중 가격이 가장 높은 도서 검색
--MAX(PRICE)
SELECT MAX(price) FROM book;

--도서 중 가장 비싼 가장 도서 검색
SELECT bookname
FROM book
WHERE price = (SELECT MAX(price) FROM book);

--도서를 구매한 적이 있는 고객의 이름 검색
SELECT cusid FROM orders;

/* SELECT name
FROM customer
WHERE cusid IN (1, 2, 3, 4); */

SELECT name
FROM customer
WHERE cusid IN (SELECT cusid FROM orders);

--조인 방식
--도서를 구매한 적이 있는 고객의 이름 검색
--SELECT DISTINCT cus.name (중복 제거)
SELECT cus.name
FROM customer cus, orders ord
WHERE cus.cusid = ord.cusid
GROUP BY cus.name;