--조건 처리 함수

--TABLE : Mytest
CREATE TABLE Mytest(
    class VARCHAR2(1),   --반
    name VARCHAR2(6)     --이름(한글-2글자)
);

INSERT INTO Mytest VALUES('A', '조조');
INSERT INTO Mytest VALUES('A', '조조');
INSERT INTO Mytest VALUES('A', '조조');
INSERT INTO Mytest VALUES('B', '유비');
INSERT INTO Mytest VALUES('B', '관우');
INSERT INTO Mytest VALUES('C', '여포');
INSERT INTO Mytest VALUES('C', '여포');

COMMIT;

SELECT * FROM Mytest;

--조회
--전체 인원수 계산
SELECT COUNT(*) 인원수
FROM MYtest;

--반별 인원수 계산
SELECT class, COUNT(name) 인원수
FROM MYtest
GROUP BY class;

--반별 인원수 계산(중복 이름 제거)
SELECT class, COUNT(DISTINCT name) 인원수
FROM MYtest
GROUP BY class;

--DECODE(칼럼명, 조건, 참, 거짓)
SELECT COUNT(DECODE(class, 'A', 1)) A,
       COUNT(DECODE(class, 'B', 1)) B,
       COUNT(DECODE(class, 'C', 1)) C
FROM Mytest;

--CASE ~ WHEN ~ THEN ~ END
SELECT
    COUNT(CASE WHEN class='A' THEN 1 END) A,
    COUNT(CASE WHEN class='B' THEN 1 END) B,
    COUNT(CASE WHEN class='C' THEN 1 END) C
FROM Mytest;

----------------------------------------------------

--TABLE : Mytest2
CREATE TABLE Mytest2(
    COL1 NUMBER(1)
);

INSERT INTO Mytest2 VALUES (NULL);
INSERT INTO Mytest2 VALUES (0);
INSERT INTO Mytest2 VALUES (NULL);
INSERT INTO Mytest2 VALUES (0);
INSERT INTO Mytest2 VALUES (NULL);

SELECT * FROM Mytest2;

--조회
--COL1의 데이터가 NULL이면 -1으로 표기함
SELECT
    DECODE(COL1, NULL, -1, COL1) DATA,
    CASE
        WHEN COL1 IS NULL THEN -1
        ELSE COL1
    END DATA2
FROM Mytest2;