-- 0. 상영티켓 시퀀스 생성.
create sequence seq_screen_ticket_idx;

-- 1. 상영티켓 테이블 생성.
create table screen_ticket
(
	scr_tk_idx int,
	scr_tk_regdate date not null,
	scr_tk_price int not null,
	scr_tk_status varchar(255) not null,
	scr_r_idx int,
	scr_seat_idx int,
	user_idx int
);

-- 2. 제약조건 추가.
alter table screen_ticket add constraint pk_screen_ticket_idx primary key(scr_tk_idx);
alter table screen_ticket add constraint fk_screen_ticket_r_idx foreign key(scr_r_idx) references screen_regdata(scr_r_idx);
alter table screen_ticket add constraint fk_screen_ticket_seat_idx foreign key(scr_seat_idx) references screen_seat(scr_seat_idx);
--alter table screen_ticket add constraint fk_screen_ticket_user_idx foreign key(user_idx) references user_info(user_idx);

-- 3. sample data 삽입.
insert into screen_ticket values(seq_screen_ticket_idx.nextVal, sysdate, 10000, '사용불가', 1, 1, 1);

-- 4. 적용.
commit