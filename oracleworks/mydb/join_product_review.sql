--조인 연습
--product, product_review
SELECT * FROM product;
SELECT * FROM product_review;


--리뷰가 있는 상품의 정보를 검색
--리뷰 테이블에 product_name 칼럼을 조인
--동등조인(EQUI JOIN)
SELECT b.review_no,
       b.product_code,
       a.product_name,
       b.member_id,
       b.content,
       b.regdate
FROM product a, product_review b
WHERE a.product_code = b.product_code;

SELECT a.product_name,
       b.*
FROM product a, product_review b
WHERE a.product_code = b.product_code;

--스칼라 서브쿼리로 바꾸기 : 한개의 칼럼만 반환
--리뷰테이블에 product_name 칼럼을 출력
SELECT A.review_no,
       A.product_code,
       (SELECT B.product_name FROM product B WHERE A.product_code = B.product_code) product_name,
       A.member_id,
       A.content,
       A.regdate
FROM product_review A;


--ANSI(미국협회) 조인 - STANDARD JOIN(표준조인)
--내부조인(INNER JOIN ~ ON)
SELECT b.review_no,
       b.product_code,
       a.product_name,
       b.member_id,
       b.content,
       b.regdate
FROM product a INNER JOIN product_review b
    ON a.product_code = b.product_code;
    

--외부조인(LEFT OUTER, RIGHT 조인)
--리뷰가 있던 없던 모든 상품의 정보를 검색
SELECT a.product_name,
       b.review_no,
       b.product_code,
       b.member_id,
       b.content,
       b.regdate
FROM product a LEFT JOIN product_review b
    ON a.product_code = b.product_code;
    
    
--리뷰가 없는 상품의 정보를 출력
SELECT a.product_name "상품후기가 없는 상품"
FROM product a LEFT JOIN product_review b
    ON a.product_code = b.product_code
WHERE b.content IS NULL;