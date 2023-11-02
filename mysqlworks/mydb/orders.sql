-- 주문 테이블 생성

CREATE TABLE orders(
    orderid INT PRIMARY KEY,
    cusid INT NOT NULL,
    bookid INT NOT NULL,
    saleprice INT NOT NULL,
    orderdate DATE NOT NULL,
    FOREIGN KEY(cusid) REFERENCES customer(cusid), -- 외래키
    FOREIGN KEY(bookid) REFERENCES book(bookid)    -- 외래키
);

INSERT INTO orders(orderid, cusid, bookid, saleprice, orderdate) 
VALUES (1, 1, 1, 6000, '2018-07-01');
INSERT INTO orders(orderid, cusid, bookid, saleprice, orderdate) 
VALUES (2, 1, 3, 21000, '2018-07-03');
INSERT INTO orders(orderid, cusid, bookid, saleprice, orderdate) 
VALUES (3, 2, 5, 8000, '2018-07-03');
INSERT INTO orders(orderid, cusid, bookid, saleprice, orderdate) 
VALUES (4, 3, 6, 6000, '2018-07-04');
INSERT INTO orders(orderid, cusid, bookid, saleprice, orderdate) 
VALUES (5, 4, 7, 20000, '2018-07-05');
INSERT INTO orders(orderid, cusid, bookid, saleprice, orderdate) 
VALUES (6, 1, 2, 12000, '2018-07-07');
INSERT INTO orders(orderid, cusid, bookid, saleprice, orderdate) 
VALUES (7, 4, 8, 13000, '2018-07-07');
INSERT INTO orders(orderid, cusid, bookid, saleprice, orderdate) 
VALUES (8, 3, 10, 12000, '2018-07-08');
INSERT INTO orders(orderid, cusid, bookid, saleprice, orderdate) 
VALUES (9, 2, 10, 7000, '2018-07-09');
INSERT INTO orders(orderid, cusid, bookid, saleprice, orderdate) 
VALUES (10, 3, 8, 13000, '2018-07-10');

SELECT * FROM orders;