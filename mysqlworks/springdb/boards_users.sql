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

-- boards 테이블
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

select * from users;
select * from boards;

drop table if exists users;
drop table if exists boards;