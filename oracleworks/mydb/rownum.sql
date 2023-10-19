--ROWNUM(로우번호, 행번호)
--행 수를 제한하고 싶을 때 사용, SUDO COLUMNE이라함
CREATE TABLE ex_score(
    name VARCHAR2(20),
    score NUMBER(3)
);

INSERT INTO ex_score VALUES ('김하나', '94');
INSERT INTO ex_score VALUES ('고하나', '85');
INSERT INTO ex_score VALUES ('이하나', '100');
INSERT INTO ex_score VALUES ('박하나', '97');
INSERT INTO ex_score VALUES ('정하나', '87');
INSERT INTO ex_score VALUES ('최하나', '87');
INSERT INTO ex_score VALUES ('윤하나', '91');
INSERT INTO ex_score VALUES ('임하나', '77');
INSERT INTO ex_score VALUES ('장하나', '80');
INSERT INTO ex_score VALUES ('함하나', '95');

COMMIT;

--1행부터 5행까지 정보 출력
SELECT ROWNUM, name, score
FROM ex_score
WHERE ROWNUM <= 5;

SELECT ROWNUM, name, score
FROM ex_score
WHERE ROWNUM BETWEEN 1 AND 5;

--2행부터 6행까지 정보 출력
--ROWNUM은 1부터 시작해야하는 제한조건 존재
SELECT ROWNUM, name, score
FROM ex_score
WHERE ROWNUM >= 2 AND ROWNUM <= 6; --안됨

--점수를 높은 순으로 검색
SELECT *
FROM ex_score
ORDER BY score DESC;

--점수가 높은 순으로 5명을 검색
SELECT ROWNUM rank, name, score
FROM (SELECT * FROM ex_score ORDER BY score DESC)
WHERE ROWNUM <= 5;

-- 성적 순위
--1.성적을 내림차순으로 정렬한 후, 행번호를 지정
SELECT ROWNUM rank, name, score
FROM (SELECT * FROM ex_score ORDER BY score DESC);
--2.RANK() OVER()를 이용해 성적(내림차순)순으로 순위를 매김
SELECT RANK() OVER(ORDER BY score DESC) rank, name, score
FROM ex_score;
--3.DENSE_RANK() OVER()를 이용해 중복 순위 다음 순위로 넘어가도록 함
SELECT DENSE_RANK() OVER(ORDER BY score DESC) rank, name, score
FROM ex_score;