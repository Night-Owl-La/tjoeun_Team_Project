-- 0. 상영좌석 시퀀스 생성.
create sequence seq_screen_seat_idx;

-- 1. 상영좌석 테이블 생성.
create table screen_seat
(
	screen_seat_idx int,
	screen_idx int,
	screen_seat_id VARCHAR(255) not null,
	screen_seat_status int
);

-- 2. 제약조건 추가.
alter table screen_seat add constraint pk_screen_seat_idx primary key(screen_seat_idx);
alter table screen_seat add constraint fk_screen_seat_screen_idx foreign key(screen_idx) references screen(screen_idx) on delete cascade;

-- 4. 적용.
commit