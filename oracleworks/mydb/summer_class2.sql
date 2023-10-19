--수강료 테이블
CREATE TABLE summer_price(
    subject VARCHAR2(20) PRIMARY KEY,
    price NUMBER
);

INSERT INTO summer_price VALUES ('C', 30000);
INSERT INTO summer_price VALUES ('Java', 45000);
INSERT INTO summer_price VALUES ('Python', 40000);

--여름학기 등록 테이블
CREATE TABLE summer_register(
    sid NUMBER,
    subject VARCHAR2(20),
    FOREIGN KEY(subject) REFERENCES summer_price(subject)
);

DROP TABLE summer_price;
DROP TABLE summer_register;

INSERT INTO summer_register VALUES (100, 'C');
INSERT INTO summer_register VALUES (101, 'Java');
INSERT INTO summer_register VALUES (200, 'Python');
INSERT INTO summer_register VALUES (201, 'Java');

COMMIT;

--삭제 이상 없음
--200번 학생의 수강 신청 취소
DELETE FROM summer_register
WHERE sid = 200;

--Python 과목의 수강료
SELECT price
FROM summer_price
WHERE subject = 'Python';

--삽입 이상 없음
--수강료 테이블에 'C++' 강좌를 35,000원으로 삽입
INSERT INTO summer_price VALUES('C++', 35000);

--수정 이상 없음
--Java 수강료를 45,000원에서 40,000원으로 변경
UPDATE summer_price SET price = 40000
WHERE subject = 'Java';

--수강료가 가장 싼 과목
SELECT subject
FROM summer_price
WHERE price = (SELECT MIN(price) FROM summer_price);

--수강 신청 정보 확인하기
SELECT * FROM summer_price;
SELECT * FROM summer_register;

COMMIT;