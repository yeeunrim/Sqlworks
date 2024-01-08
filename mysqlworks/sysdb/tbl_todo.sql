-- db 사용
use springdb;

-- todo 테이블 생성
create table tbl_todo(
	tno          bigint primary key auto_increment,
    title        varchar(100) not null,
    writer       varchar(20) not null,
    createddate  datetime default now()
);

-- select
select * from tbl_todo;

-- drop
drop table if exists tbl_todo;



