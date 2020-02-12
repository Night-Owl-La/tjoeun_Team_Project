-- 0. 상영관 시퀀스 생성.
create sequence seq_screen_idx;

-- 1. 상영관 테이블 생성.
create table screen
(
	screen_idx int,
	theater_idx int,
	screen_id int not null,
	screen_classification int not null
);

-- 2. 제약조건 추가.
alter table screen add constraint pk_screen_idx primary key(screen_idx);
alter table screen add constraint fk_screen_theater_idx foreign key(theater_idx) references theater(theater_idx) on delete cascade;

-- 3. -> 12.screen_seat 테이블 생성 후 계속.

-- 4. 상영관 좌석 자동 생성 트리거 생성. -> !!!! 반드시 developer툴에서 실행. Eclipse에서 안됨, sqlplus도 안됨. !!!!
create or replace trigger trg_screen
after insert on screen
for each row
begin
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'A1', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'A2', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'A3', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'A4', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'A5', 0);
	
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'B1', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'B2', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'B3', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'B4', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'B5', 0);
	
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'C1', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'C2', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'C3', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'C4', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'C5', 0);
	
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'D1', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'D2', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'D3', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'D4', 0);
	insert into screen_seat values(seq_screen_seat_idx.nextVal, :new.screen_idx, 'D5', 0);
end;

-- 5. sample data 삽입.
--p_key / 강남점(1) / 1상영관 / 2D
insert into screen values(seq_screen_idx.nextVal, 1, 1, 2);
--p_key / 신촌점(2) / 1상영관 / 3D
insert into screen values(seq_screen_idx.nextVal, 2, 1, 3);
--p_key / 홍대점(3) / 1상영관 / 4D
insert into screen values(seq_screen_idx.nextVal, 3, 1, 4);

--p_key / 강남점(1) / 2상영관 / 2D
insert into screen values(seq_screen_idx.nextVal, 1, 2, 2);
--p_key / 강남점(1) / 3상영관 / 3D
insert into screen values(seq_screen_idx.nextVal, 1, 3, 3);

-- 4. 적용.
commit