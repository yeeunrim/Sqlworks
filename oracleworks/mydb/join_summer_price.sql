--계절학기 수강료, 등록 테이블
SELECT * FROM summer_price;
SELECT * FROM summer_register;

--학생의 모든 수강정보를 검색하시오
SELECT b.sid, b.subject, a.price
FROM summer_price a, summer_register b
WHERE a.subject = b.subject;

--Java 과목의 수강료 합계를 구하시오.
SELECT b.subject, sum(a.price)
FROM summer_price a, summer_register b
WHERE a.subject = b.subject AND b.subject = 'Java'
GROUP BY b.subject;

--과목별 수강료 합계
SELECT b.subject, sum(a.price)
FROM summer_price a, summer_register b
WHERE a.subject = b.subject
GROUP BY b.subject;

--과목별 수강료 합계 및 전체 총계
--ROLLUP(), CUBE()
--NVL(과목, '총계') : 과목이 NULL이 아니면 '과목'으로 출력, NULL이면 '총계'로 출력
SELECT NVL(b.subject, '총계') 수강과목, sum(a.price) "수강료 합계"
FROM summer_price a, summer_register b
WHERE a.subject = b.subject
GROUP BY ROLLUP(b.subject);

--학생이 수강하는 모든 과목의 총 수강료
SELECT sum(price)
FROM summer_price;

--'Python'과목 추가
INSERT INTO summer_register VALUES (301, 'Python');

SELECT subject, sum(price)
FROM summer_price
GROUP BY subject;