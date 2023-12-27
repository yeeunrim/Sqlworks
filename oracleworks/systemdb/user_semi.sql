--user 계정 : semi, 비번 pwsemi
CREATE USER c##semi IDENTIFIED BY pwsemi;

--SESSION 권한(로그인-인증) 부여
GRANT CREATE SESSION TO c##semi;

--DB의 테이블 생성 권한 부여
GRANT CREATE TABLE, RESOURCE TO c##semi;

--데이터 조작할 모든 권한 부여 - DML(삽입, 조회, 수정, 삭제)
GRANT CONNECT, DBA TO c##semi;