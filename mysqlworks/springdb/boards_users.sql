-- database 생성
create database springdb;

-- db 사용
use springdb;

-- users 테이블
create table users(
	id          bigint primary key auto_increment,
    userid      varchar(20) unique,
    userpasswd  varchar(20) not null,
    username    varchar(30) not null,
    userage     int 
);

-- users를 참조하는 boards 테이블 생성
create table boards(
	id           bigint primary key auto_increment,
    boardtitle   varchar(100) not null,
    userid       varchar(20) not null,
    boardcontent text not null,
    hit          int default 0,
    createdtime  datetime default now(),
    updatedtime  datetime,
    foreign key(userid) references users(userid) on delete cascade
);

-- boards를 참조하는 reply 테이블 생성
desc boards; -- type 확인
create table reply(
	id 			  bigint primary key auto_increment,
    boardid 	  bigint,
    replyer 	  varchar(20) not null,
	replycontent  varchar(1000) not null,
    createdtime   datetime default now(),
    updatedtime   datetime,
    foreign key(boardid) references boards(id) on delete cascade
);

-- select
select * from users;
select * from boards;
select * from reply;

-- insert (재귀복사)
insert into boards (boardtitle, userid, boardcontent)
(select boardtitle, userid, boardcontent from boards);

-- count (전체)
select count(id) from boards;

-- drop
drop table if exists users;
drop table if exists boards;
drop table if exists reply;