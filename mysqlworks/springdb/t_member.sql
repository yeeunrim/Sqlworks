-- db 사용
use springdb;

-- t_member 테이블 생성
create table t_member(
	id        bigint primary key auto_increment,
    email     varchar(50) unique,
    password  varchar(20) not null,
    name      varchar(20) not null,
    age       int 
);

-- select
select * from t_member;
select * from t_member where email = '1515eun@daum.net' and password = 'yeeun1215!';

-- drop
drop table if exists t_member;