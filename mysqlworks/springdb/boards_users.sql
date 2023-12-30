-- database 생성
create database springdb;

-- db 사용
use springdb;

-- boards 테이블
drop table if exists boards;
create table boards(
	id           bigint primary key auto_increment,
    boardtitle   varchar(100) not null,
    boardwriter  varchar(20) not null,
    boardcontent text not null,
    hit          int default 0,
    createdtime  datetime default now(),
    updatedtime  datetime
);

select * from boards;

-- users 테이블
drop table if exists users;
create table users(
	id          bigint primary key auto_increment,
    userid      varchar(20) unique,
    userpasswd  varchar(20) not null,
    username    varchar(30) not null,
    userage     int 
);

select * from users;
