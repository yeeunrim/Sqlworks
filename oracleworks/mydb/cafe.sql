--음료테이블 작성
CREATE TABLE drink(
    drink_code VARCHAR2(3) PRIMARY KEY,
    drink_name VARCHAR2(30) NOT NULL
);

INSERT INTO drink VALUES ('A01', '아메리카노');
INSERT INTO drink VALUES ('B01', '카페라떼');
INSERT INTO drink VALUES ('C01', '자몽에이드');

COMMIT;

SELECT * FROM drink;

--주문 테이블 작성
CREATE TABLE cafe_order(
    order_number VARCHAR2(10) PRIMARY KEY,
    drink_code VARCHAR2(3) NOT NULL,
    order_cnt NUMBER NOT NULL,
    FOREIGN KEY (drink_code) REFERENCES drink(drink_code)
);

INSERT INTO cafe_order VALUES ('2023100101', 'A01', 3);
INSERT INTO cafe_order VALUES ('2023100102', 'B01', 1);
INSERT INTO cafe_order VALUES ('2023100103', 'A01', 2);

COMMIT;

SELECT * FROM drink;
SELECT * FROM cafe_order;

--문제) 아래의 출력형태로 SQL문을 작성하시오.
--1.동등조인
SELECT b.order_number,
       a.drink_code,
       a.drink_name,
       b.order_cnt
FROM drink a, cafe_order b
WHERE a.drink_code = b.drink_code;
--2.내부조인
--INNER JOIN ~ ON
SELECT b.order_number,
       a.drink_code,
       a.drink_name,
       b.order_cnt
FROM drink a JOIN cafe_order b
    ON a.drink_code = b.drink_code;
--INNER JOIN ~ USING
SELECT b.order_number,
       drink_code,
       drink_name,
       b.order_cnt
FROM drink a JOIN cafe_order b
    USING (drink_code); 

--외부조인
--주문이 없는 음료를 포함해서 모든 주문 정보를 출력
SELECT b.order_number,
       a.drink_code,
       a.drink_name,
       b.order_cnt
FROM drink a LEFT JOIN cafe_order b
    ON a.drink_code = b.drink_code;
