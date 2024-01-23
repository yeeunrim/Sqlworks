-- database 생성
create database bootdb;

-- db 사용
use bootdb;

-- 테이블 구조
desc board;
desc member;
desc t_board;
desc t_member;
desc tbl_member;
desc tbl_board;

-- 조회
select * from board;
select * from member;
select * from board order by id asc;
select * from board order by id desc;

-- bootboard
select * from tbl_member;
select * from tbl_board order by id desc;

-- bootboard2
select * from t_board;
select * from t_member;