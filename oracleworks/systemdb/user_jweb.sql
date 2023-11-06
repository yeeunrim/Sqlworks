-- 윈도우 기준(계정에 'c##'을 안붙여도 되는 방법)
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

-- jweb user 계정 생성
CREATE USER jweb IDENTIFIED BY pwjweb;

-- 권한 부여, 리소스 공간 확보
GRANT CONNECT, RESOURCE, DBA TO jweb;