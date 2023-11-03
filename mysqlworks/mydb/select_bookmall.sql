USE mydb;

-- bookmall 조회
SELECT * FROM book;

-- 도서를 이름순으로 정렬
SELECT * FROM book
ORDER BY bookname;

-- 도서를 가격이 높은순으로 정렬
SELECT * FROM book
ORDER BY price DESC;

-- 도서 이름에 '축구'가 포함된 출판사 검색
SELECT publisher FROM book
WHERE bookname LIKE "%축구%";

-- 도서 이름에 '축구'가 포함되고 가격이 10000원 이상인 도서 검색 
SELECT * FROM book
WHERE bookname LIKE "%축구%" AND price >= 10000;

-- 도서 테이블에 있는 중복된 이름을 제외하고 모든 출판사를 검색
SELECT DISTINCT publisher FROM book;

-- 가격이 10000원 이상이고 20000원 이하인 도서 검색
SELECT * FROM book
WHERE price >= 10000 AND price <= 20000;
SELECT * FROM book
WHERE price between 10000 AND 20000;

-- 가격이 13000원이 아닌 도서 검색
SELECT * FROM book
WHERE price != 13000;
SELECT * FROM book
WHERE price <> 13000;ALTER

-- 도서 중에서 가장 가격이 높은 도서 검색
SELECT MAX(price) FROM book;
-- 서브쿼리 이용
SELECT * FROM book
WHERE price = (SELECT MAX(price) FROM book);

------------------------------------------ 

SELECT * FROM customer;

-- 고객을 이름순으로 정렬(오름차순)
SELECT * FROM customer
ORDER BY name;

-- 전화번호가 없는 고객 검색
-- 오라클과는 다르게 NULL이 아니라 공백으로 인식이 된다.
-- <안되는 예시> 
-- SELECT * FROM customer
-- WHERE phone = ""; 
SELECT * FROM customer
WHERE phone = "";

-- 주소가 '대한민국'인 고객 검색
SELECT * FROM customer
WHERE address LIKE "%대한민국%";
-- 주소가 '대한민국'이 아닌 고객 검색
SELECT * FROM customer
WHERE address NOT LIKE "%대한민국%";

-- 고객의 총인원수 검색
SELECT COUNT(*) '총 인원' FROM customer;

------------------------------------------ 

SELECT * FROM orders;

-- 주문 테이블에서 주문가격의 총 판매액 조회
SELECT SUM(saleprice) 총판매액 FROM orders;

-- 주문 테이블에서 주문가격의 총 판매액, 총 평균액 조회
SELECT SUM(saleprice) 총판매액, ROUND(AVG(saleprice), 0) 총평균액
FROM orders;

-- 고객별로 주문한 도서의 총판매액 조회
SELECT cusid 고객번호, COUNT(bookid) 도서수량, SUM(saleprice) 총판매액
FROM orders
GROUP BY cusid;
-- (추가) 3권 이상인 주문한 자료 검색
SELECT cusid 고객번호, COUNT(bookid) 도서수량, SUM(saleprice) 총판매액
FROM orders
GROUP BY cusid
HAVING COUNT(bookid) >= 3;
-- (추가) 고객 이름까지 추가해서 자료 검색
SELECT cus.cusid, cus.name, SUM(ord.saleprice)
FROM customer cus, orders ord
WHERE cus.cusid = ord.cusid
GROUP BY cusid;
-- HAVING COUNT(bookid) >= 3; 