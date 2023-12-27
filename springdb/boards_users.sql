-- database 생성
create database springdb;

-- db 사용
use springdb;

drop table if exists boards;
create table boards(
	id           bigint primary key auto_increment,
    boardtitle   varchar(100) not null,
    boardwriter  varchar(20) not null,
    boardcontent text not null,
    createtime   datetime default now()
);

select * from boards;