--고객 테이블 생성
CREATE TABLE customer(
    cusid NUMBER PRIMARY KEY,
    name VARCHAR2(40) NOT NULL,
    address VARCHAR2(50) ,
    phone VARCHAR2(20)
);

--고객 생성
INSERT INTO customer(cusid, name, address, phone) 
VALUES (1, '박지성', '영국 맨체스터', '000-5000-0001');
INSERT INTO customer(cusid, name, address, phone) 
VALUES (2, '김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO customer(cusid, name, address, phone) 
VALUES (3, '안산', '대한민국 광주광역시', '000-7000-0001');
INSERT INTO customer(cusid, name, address, phone) 
VALUES (4, '류현진', '미국 토론토', '');
INSERT INTO customer(cusid, name, address, phone) 
VALUES (5, '손흥민', '영국 토트넘', '000-8000-0001');

COMMIT;