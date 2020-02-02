-- 0. 상영관 좌석 시퀀스 생성.
create sequence seq_screen_seat_idx;

-- 1. 상영관 좌석 테이블 생성.
create table screen_seat
(
	scr_seat_idx int,
	scr_seat_id varchar(255) not null,
	scr_seat_status int not null,
	scr_idx int
);

-- 2. 제약조건 추가.
alter table screen_seat add constraint pk_screen_seat_idx primary key(scr_seat_idx);
alter table screen_seat add constraint fk_screen_seat_idx foreign key(scr_idx) references screen(scr_idx) on delete cascade;

-- 3. sample data 삽입.
--
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A1', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A2', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A3', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A4', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A5', 0, 1);

insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B1', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B2', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B3', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B4', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B5', 0, 1);

insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C1', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C2', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C3', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C4', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C5', 0, 1);

insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D1', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D2', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D3', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D4', 0, 1);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D5', 0, 1);

--
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A1', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A2', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A3', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A4', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A5', 0, 2);

insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B1', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B2', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B3', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B4', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B5', 0, 2);

insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C1', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C2', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C3', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C4', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C5', 0, 2);

insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D1', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D2', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D3', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D4', 0, 2);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D5', 0, 2);

--
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A1', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A2', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A3', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A4', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A5', 0, 3);

insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B1', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B2', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B3', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B4', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B5', 0, 3);

insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C1', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C2', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C3', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C4', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C5', 0, 3);

insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D1', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D2', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D3', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D4', 0, 3);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D5', 0, 3);

--
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A1', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A2', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A3', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A4', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A5', 0, 4);

insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B1', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B2', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B3', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B4', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B5', 0, 4);

insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C1', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C2', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C3', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C4', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C5', 0, 4);

insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D1', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D2', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D3', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D4', 0, 4);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D5', 0, 4);

--
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A1', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A2', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A3', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A4', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'A5', 0, 5);

insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B1', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B2', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B3', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B4', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'B5', 0, 5);

insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C1', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C2', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C3', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C4', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'C5', 0, 5);

insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D1', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D2', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D3', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D4', 0, 5);
insert into screen_seat values (seq_screen_seat_idx.nextVal, 'D5', 0, 5);

-- 4. 적용.
commit