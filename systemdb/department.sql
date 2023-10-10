--부서와 사원 테이블 생성
CREATE TABLE department(
    deptid NUMBER PRIMARY KEY, --기본키
    deptname VARCHAR2(20) NOT NULL, --NULL불허
    location VARCHAR2(20) NOT NULL
);

--자료 입력
INSERT INTO department(deptid, deptname, location) VALUES (10, '전산팀', '서울');
INSERT INTO department(deptid, deptname, location) VALUES (20, '총무팀', '인천');
INSERT INTO department(deptid, deptname, location) VALUES (30, '마케팅팀', '성남');

COMMIT;

/*자료 검색*/
--모든 칼럼 검색('*' 사용)
SELECT * FROM department;

--특정한 데이터(행:로우) 검색
--부서이름이 전산팀인 row(레코드) 검색
SELECT * FROM department WHERE deptname = '전산팀';

--자료 수정(부서이름 변경 관리팀 -> 경영팀)
UPDATE department SET deptname = '경영팀'
WHERE deptid = 20;

DROP TABLE DEPARTMENT;

ROLLBACK; --COMMIT 이전에 실행되면 취소됨

--자료 삭제(부서번호가 30번인 마케팅팀 삭제)
DELETE FROM department 
WHERE deptid = 30;

COMMIT;

