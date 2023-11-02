use mydb;

----------------------------------------------------

-- 현재 날짜와 시간
select now() from dual;

----------------------------------------------------

create table date_test1(
	reg_date DATE,
    hire_date DATE
);

insert into date_test1 values(now(), '2023-10-01');
insert into date_test1 values(now(), '2023-10-11');
insert into date_test1 values(now(), '2023/12/15');

select * from date_test1;

----------------------------------------------------

create table date_test2(
	reg_date DATE default (current_date()), -- 날짜 
    create_date timestamp default now(), 	-- 날짜와 시간 
    hire_date DATE 							-- 특정한 날짜    
);

insert into date_test2(hire_date) values('2023-10-01');
insert into date_test2(hire_date) values('2023-12-15');

select * from date_test2;