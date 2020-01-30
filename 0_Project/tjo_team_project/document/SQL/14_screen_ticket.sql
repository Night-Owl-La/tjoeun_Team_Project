-- 1. 상영티켓 테이블 생성.
create table screen_ticket
(
	scr_idx int,
	scr_t_date varchar(255) not null,
	scr_t_time varchar(255) not null,
	scr_t_price int not null
);

-- 2. 제약조건 추가.
alter table screen_ticket add constraint fk_screen_ticket_idx foreign key(scr_idx) references screen(scr_idx) on delete cascade;

-- 3. sample data 삽입.
insert into screen_ticket values(1, '2020-01-30', '20:00', 12000);
insert into screen_ticket values(2, '2020-01-30', '21:00', 12000);
insert into screen_ticket values(3, '2020-01-30', '22:00', 12000);

insert into screen_ticket values(4, '2020-01-30', '02:00', 10000);
insert into screen_ticket values(5, '2020-01-30', '09:00', 10000);

-- 4. 적용.
commit