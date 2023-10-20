SELECT * FROM drink2;

--테이블 복사
CREATE TABLE drink2 AS SELECT * FROM drink;

--재귀 복사(INSERT INTO ~ SELECT) : VALUES 사용안함
INSERT INTO drink2 SELECT * FROM drink2;

--ROWNUM (SUDO COLUMN - 제공된 관리자 칼럼)
SELECT ROWNUM, drink_code, drink_name
FROM drink2
WHERE ROWNUM <= 10;

--FROM절에서 서브쿼리 사용 - 인라인뷰
--별칭(rn)을 사용한 이유 : ROWNUM은 1부터 포함이기 때문에 부득이하게 별칭을 사용
--SELECT * --*로 하면 검색 가능
SELECT rn, drink_code, drink_name
FROM (SELECT ROWNUM rn, drink_code, drink_name FROM drink2)
--WHERE ROWNUM >= 11 AND ROWNUM <= 20; --검색 안됨
WHERE rn >= 11 AND rn <= 20; --별칭(변수) 사용해야지 검색 가능