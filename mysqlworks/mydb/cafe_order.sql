-- 제2정규화 (음료, 주문테이블)
create table drink(
	drink_code varchar(3) primary key, -- 음료코드
    drink_name varchar(20) not null    -- 음료이름
);

create table cafe_order(
	order_no int primary key auto_increment, -- 주문번호
    drink_code varchar(3) not null,          -- 음료코드
    order_cnt int not null,                  -- 주문수량
    foreign key(drink_code) references drink(drink_code)
    on delete cascade -- 부모키의 데이터가 삭제되면 자식 데이터도 함께 삭제
);

-- drink 자료 추가
insert into drink values ('A01', '아메리카노');
insert into drink values ('B01', '아이스티');
insert into drink values ('C01', '샌드위치');

-- cafe_order 자료 추가
insert into cafe_order(drink_code, order_cnt) values ('A01', 3);
insert into cafe_order(drink_code, order_cnt) values ('B01', 1);
insert into cafe_order(drink_code, order_cnt) values ('A01', 2);

-- drink 테이블에서 drink_code = 'B01'인 데이터 삭제
-- 삭제 이상 발생 -> on delete cascade 구문 추가
delete from drink where drink_code = 'B01';

-- 주문 테이블에 음료 이름을 포함하여 출력 (조인)
-- 동등조인(equi join)
select a.drink_code, a.drink_name, b.order_cnt
from drink a, cafe_order b
where a.drink_code = b.drink_code;
-- 내부조인(inner join)
select a.drink_code, a.drink_name, b.order_cnt
from drink a join cafe_order b
	on a.drink_code = b.drink_code;

-- 주문에 관계없이 주문정보와 음료 정보를 모두 출력 
-- 외부조인(left/right join)
select a.*, b.order_cnt
from drink a left join cafe_order b
 on	a.drink_code = b.drink_code;
 -- 주문 없는 상품의 정보를 출력
 select a.*, b.order_cnt
from drink a left join cafe_order b
 on	a.drink_code = b.drink_code
where order_cnt is null;

-- drink 자료 조회
select * from drink;

-- cafe_order 자료 조회
select * from cafe_order;

drop table drink;
drop table cafe_order;