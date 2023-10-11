--새로운 사용자(user) 생성
CREATE USER mydb IDENTIFIED BY pwmydb;
--세션(저장을 유지) 생성 권한 부여
GRANT CREATE SESSION TO mydb;
--테이블, 자원(resource) 생성
GRANT CREATE TABLE, RESOURCE TO mydb; --4번실행
--DBA(DataBase Agent)에 접속(연결)할 권한 부여
GRANT CONNECT, DBA TO mydb;