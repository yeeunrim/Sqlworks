--여름 학기 테이블
CREATE TABLE summer_class(
    sid NUMBER,             --학번
    subject VARCHAR2(20),   --수강과목
    price NUMBER            --수강료
); 

INSERT INTO summer_class VALUES (100, 'c', 30000);
INSERT INTO summer_class VALUES (101, 'Java', 45000);
INSERT INTO summer_class VALUES (200, 'Python', 40000);
INSERT INTO summer_class VALUES (201, 'Java', 45000);

--계절학기를 수강하는 학생의 학번과 수강하는 과목
SELECT sid, subject
FROM summer_class;

--'Python'강좌의 수강료
SELECT price
FROM summer_class
WHERE subject = 'Python';

--여름학기를 듣는 학생 수와 수강료 총액
SELECT COUNT(*) 학생수,
       SUM(price) 수강료총액
FROM summer_class;


--200번 학생이 수강취소
DELETE FROM summer_class
WHERE sid = 200;
ROLLBACK;
--삭제 이상
--수강 취소를 한다고 해서 강좌가 없어지면 안된다.
--'Python'강좌의 수강료
SELECT price
FROM summer_class
WHERE subject = 'Python';

--삽입 이상
--C++ 강좌 개설 : 신청한 학생이 없는 상태
INSERT INTO summer_class VALUES (NULL, 'c++', 35000);
--학생 3명, 튜플은 4개 (불일치)
SELECT COUNT(*) 수강인원
FROM summer_class;
SELECT COUNT(sid) 수강인원
FROM summer_class;

--Java 수강료가 45,000원에서 40,000원으로 변경
UPDATE summer_class SET price = 40000
WHERE subject = 'Java';
ROLLBACK;
--수정 이상
--UPDATA문을 다음과 같이 작성하면 이상 현상 발생
--총 2건 중 1건만 수정
UPDATE summer_class SET price = 40000
WHERE subject = 'Java' AND sid = 101;
--'Java'강좌의 수강료
SELECT price
FROM summer_class
WHERE subject = 'Java';

COMMIT;

SELECT * FROM summer_class;

DROP TABLE summer_class;