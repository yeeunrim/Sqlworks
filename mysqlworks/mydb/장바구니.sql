-- 먼저 db를 선택함
USE mydb;

CREATE TABLE 장바구니(
	아이템번호 INT PRIMARY KEY AUTO_INCREMENT,
	아이템 VARCHAR(20),
    가격 INT
);

DROP TABLE 장바구니;

INSERT INTO 장바구니(아이템, 가격) VALUES ('두부', 2000);
INSERT INTO 장바구니(아이템, 가격) VALUES ('계란', 7000);
INSERT INTO 장바구니(아이템, 가격) VALUES ('파', 1500);
INSERT INTO 장바구니(아이템, 가격) VALUES ('감자', 3000);

SELECT * FROM 장바구니;

-- '파'의 가격을 검색
SELECT * FROM 장바구니 WHERE 아이템번호 = 3;

-- 가격별로 정렬
SELECT * FROM 장바구니 ORDER BY 가격;

-- 아이템의 총 개수, 가격의 평균
SELECT COUNT(*) 총개수,
       ROUND(AVG(가격), -2) 평균가격
FROM 장바구니;