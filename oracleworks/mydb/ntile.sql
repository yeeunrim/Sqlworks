CREATE TABLE exam_score(
    이름 VARCHAR2(20),
    국어 NUMBER,
    영어 NUMBER,
    수학 NUMBER
);

--국어 : 120점 만점 / 영어 : 80점 만점 / 수학 : 80점 만점
INSERT INTO exam_score VALUES ('임예은', 116, 77, 75);
INSERT INTO exam_score VALUES ('이나경', 101, 69, 80);
INSERT INTO exam_score VALUES ('서지훈', 118, 62, 60);
INSERT INTO exam_score VALUES ('손흥민', 96, 72, 70);
INSERT INTO exam_score VALUES ('이강인', 103, 77, 55);
INSERT INTO exam_score VALUES ('김민재', 78, 66, 61);
INSERT INTO exam_score VALUES ('정우영', 85, 72, 75);
INSERT INTO exam_score VALUES ('황희찬', 99, 70, 53);
INSERT INTO exam_score VALUES ('오현규', 105, 75, 69);
INSERT INTO exam_score VALUES ('조규성', 117, 68, 73);

SELECT * FROM exam_score;

--등급 분류 : NTILE()
--주어진 수만큼 행들을 n등분한 후, 현재 행에 해당하는 등급을 구하는 함수
--대표적인 예로는 수능 등급을 분류하는 것이다.
--NTILE(수) OVER(ORDER BY 정렬기준)

--국어 과목 등급 검색
SELECT 이름, 국어, NTILE(8) OVER(ORDER BY 국어 DESC) 국어등급
FROM exam_score;
--'서지훈'을 제외한 국어 과목 등급 검색
SELECT 이름, 국어, NTILE(8) OVER(ORDER BY 국어 DESC) 국어등급
FROM exam_score
WHERE 이름 <> '서지훈'; --'<>' 기호는 NOT EQUAL의 의미
--전체 과목 등급 검색
SELECT 이름, 
       국어, NTILE(8) OVER(ORDER BY 국어 DESC) 국어등급,
       영어, NTILE(8) OVER(ORDER BY 영어 DESC) 영어등급,
       수학, NTILE(8) OVER(ORDER BY 수학 DESC) 수학등급
FROM exam_score;

COMMIT;