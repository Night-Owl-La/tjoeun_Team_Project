-- 0. 상영관 일정 시퀀스 생성.
create sequence seq_screen_schedule_idx;

-- 1. 상영일정 테이블 생성.
create table screen_schedule
(
	scr_sc_idx int,
	scr_sc_date varchar(255) not null,
	scr_sc_time varchar(255) not null,
	scr_idx int
);

-- 2. 제약조건 추가.
alter table screen_schedule add constraint pk_screen_schedule_idx primary key(scr_sc_idx);
alter table screen_schedule add constraint fk_screen_schedule_scr_idx foreign key(scr_idx) references screen(scr_idx) on delete cascade;

-- 3. sample data 삽입.
insert into screen_schedule values(seq_screen_schedule_idx.nextVal, '2020-01-30', '20:00', 1);
insert into screen_schedule values(seq_screen_schedule_idx.nextVal, '2020-01-30', '21:00', 2);
insert into screen_schedule values(seq_screen_schedule_idx.nextVal, '2020-01-30', '22:00', 3);

insert into screen_schedule values(seq_screen_schedule_idx.nextVal, '2020-01-30', '02:00', 4);
insert into screen_schedule values(seq_screen_schedule_idx.nextVal, '2020-01-30', '09:00', 5);

-- 4. 적용.
commit