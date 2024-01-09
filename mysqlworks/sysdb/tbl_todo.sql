-- db 사용
use springdb;

-- todo 테이블 생성
create table tbl_todo(
	tno          bigint primary key auto_increment,
    title        varchar(100) not null,
    writer       varchar(20) not null,
    createddate  datetime default now()
);

-- insert
insert into tbl_todo(title, writer) 
values ('빠르게 집에 가기', '임예은');
insert into tbl_todo(title, writer) 
values ('배운 내용 복습하기', '임예은');
insert into tbl_todo(title, writer) 
values ('신년 계획 세우기', '임예은');
insert into tbl_todo(title, writer) 
values ('일주일에 3회 운동하기', '임예은');
insert into tbl_todo(title, writer) 
values ('12시 전에 잠들기', '임예은');

-- insert (재귀복사)
insert into tbl_todo(title, writer)
(select title, writer from tbl_todo);

-- select
select * from tbl_todo order by tno desc;
select * from tbl_todo order by tno asc limit 3;
select * from tbl_todo order by tno asc limit 2, 4;
select count(tno) from tbl_todo;
-- 검색 
select * from tbl_todo
where title like '%집%' or writer like '%예은%'
order by tno desc;

-- drop
drop table if exists tbl_todo;