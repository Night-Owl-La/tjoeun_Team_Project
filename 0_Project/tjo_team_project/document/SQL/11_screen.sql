-- 0. 상영관 시퀀스 생성.
create sequence seq_screen_idx;

-- 1. 상영관 테이블 생성.
create table screen
(
	scr_idx int,
	scr_id int not null,
	scr_seat_count int not null,
	tht_idx int
);

-- 2. 제약조건 추가.
alter table screen add constraint pk_screen_idx primary key(scr_idx);
alter table screen add constraint fk_screen_idx foreign key(tht_idx) references theater(tht_idx) on delete cascade;

-- 3. sample data 삽입.
insert into screen values(seq_screen_idx.nextVal, 1, 20, 1);
insert into screen values(seq_screen_idx.nextVal, 2, 20, 1);
insert into screen values(seq_screen_idx.nextVal, 3, 20, 1);

insert into screen values(seq_screen_idx.nextVal, 1, 20, 2);
insert into screen values(seq_screen_idx.nextVal, 1, 20, 3);

-- 4. 적용.
commit