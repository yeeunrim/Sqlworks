--새로운 사용자 생성
CREATE USER yeeunrim IDENTIFIED BY pw991215;
--세션 권한 부여
GRANT CREATE SESSION TO yeeunrim;
--테이블 권한 부여
GRANT CREATE TABLE, RESOURCE TO yeeunrim;
--데이터 조작 권한 부여
GRANT CONNECT, DBA TO yeeunrim;