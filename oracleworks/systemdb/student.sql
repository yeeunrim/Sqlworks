--학생 테이블 생성
CREATE TABLE student(
    snumber NUMBER PRIMARY KEY,
    sname VARCHAR2(20) NOT NULL,
    age NUMBER(2) NOT NULL,
    gender VARCHAR2(6) NOT NULL,
    address VARCHAR2(50),
    mname VARCHAR2(30) NOT NULL,
    FOREIGN KEY(mname) REFERENCES major(mname) --외래키
);

--학생 추가
INSERT INTO student (snumber, sname, age, gender, address, mname)
VALUES (1001, '이강', 22, '여자', '서울 강서구', '소프트웨어학과');
INSERT INTO student (snumber, sname, age, gender, address, mname)
VALUES (1002, '박대양', 34, '남자', '인천 남구', '전기전자공학과');
--무결성 제약조건 위배(부모키가 없습니다.)
/* INSERT INTO student (snumber, sname, age, gender, address, mname)
VALUES (1003, '김산', 29, '남자', '서울 동대문구', '회계학과'); */ 
--주소부분에 null 삽입('')
--하지만 홑따음표 안에 빈칸을 삽입할 경우, 공백문자 삽입됨(' ')
INSERT INTO student (snumber, sname, age, gender, address, mname)
VALUES (1003, '우영우', 31, '여자', '', '전기전자공학과');

--전체 학생 조회
SELECT * FROM student;

--이름이 '이강'인 학생의 학번, 이름, 나이를 조회하기
SELECT snumber, sname, age FROM student
WHERE sname = '이강'; --자바와는 다르게 '='는 '같다'라는 의미로 쓰인다.

--이름에 '우'가 포함된 학생의 모든 정보를 출력하기
--<표기법>
--1. '우%' = '우'로 시작하는 것
--2. '%우' = '우'로 끝나는 것
--3. '%우%' = '우'를 포함하는 것
SELECT * FROM student
WHERE sname LIKE '%우%';

--나이가 30세 이상이고 성별이 남자인 학생의 모든 정보를 출력
SELECT * FROM student
WHERE age >= 30 AND gender = '남자';

--주소가 없는 학생의 정보를 출력하시오
SELECT * FROM student
WHERE address IS NULL;
--WHERE address = ' ';

--주소가 없는 학생 삭제하기
DELETE FROM student
WHERE address IS NULL;

--주소가 null인 데이터에 '수원 영통구'로 입력
UPDATE student SET address = '수원 영통구'
WHERE address IS NULL;

--정렬하기(오름차순-ASC, 내림차순-DESC)
--학생의 나이가 많은순으로 정렬하여 출력하시오.
SELECT * FROM student
ORDER BY age ASC; --ASC를 생략하면 내림차순 정렬

--학과명이 전기전자공학과인 학생 중에서 나이가 많은 순으로 정렬하여 출력하시오
SELECT * FROM student
WHERE mname = '전기전자공학과'
ORDER BY age DESC;

ROLLBACK;

COMMIT;