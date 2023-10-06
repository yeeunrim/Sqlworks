--테이블 생성(CREATE)
CREATE TABLE ex2 (
    col_date DATE, --날짜 자료형(시스템의 현재 날짜)
    col_timestamp TIMESTAMP --날짜와 시간 자료형
);

--현재 날짜 삽입(INSERT)
INSERT INTO ex2 VALUES ( SYSDATE, SYSTIMESTAMP );
INSERT INTO ex2(hire_date) VALUES ('2023-09-01');

COMMIT;

SELECT * FROM ex2;

--테이블 변경(ALTER) - 입사일 컬럼 추가
ALTER TABLE ex2 ADD hire_date VARCHAR2(20);

--테이블 삭제(DROP)
DROP TABLE ex2;