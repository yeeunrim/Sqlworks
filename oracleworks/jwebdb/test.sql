-- 테이블 생성 확인 (RESOURCE)
CREATE TABLE test(
    msg VARCHAR2(30)
);

-- 데이터 권한 확인 (DBA)
INSERT INTO test VALUES ('확인되었습니다.');
SELECT * FROM test;