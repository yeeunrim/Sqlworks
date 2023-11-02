use mydb;

-- bookmall 구축
-- book 테이블

create table book(
	bookid int primary key,
    bookname varchar(60) not null,
    publisher varchar(60) not null,
    price int not null 
);

INSERT INTO book VALUES (1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO book VALUES (2, '축구하는 여자', '나무수', 13000);
INSERT INTO book VALUES (3, '축구의 이해', '대림미디어', 22000);
INSERT INTO book VALUES (4, '골프 바이블', '대림미디어', 35000);
INSERT INTO book VALUES (5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO book VALUES (6, '양궁의 실제', '굿스포츠', 6000);
INSERT INTO book VALUES (7, '야구의 추억', '이상미디어', 20000);
INSERT INTO book VALUES (8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO book VALUES (9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO book VALUES (10, 'Olympic Champions', 'Person', 13000);

select * from book;