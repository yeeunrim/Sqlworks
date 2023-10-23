-- java 게시판 연동 - board table 생성
create table board(
	bno int primary key auto_increment,
    btitle varchar(100) not null,
    bcontent text not null,
	bwriter varchar(20) not null,
    bdate timestamp default now()
);

insert into board(btitle, bcontent, bwriter) values ('제목', '내용입니다', 'today23');

select * from board;

commit;