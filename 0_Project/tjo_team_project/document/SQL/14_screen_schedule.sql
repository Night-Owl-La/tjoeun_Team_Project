-- 0. 상영영화 등록정보 시퀀스 생성.
create sequence seq_screen_schedule_idx;

-- 1. 상영영화 등록정보 테이블 생성.
create table screen_schedule
(
	screen_schedule_idx int,
	screen_regdata_idx int,
	screen_schedule_date VARCHAR(255) not null,
	screen_schedule_time VARCHAR(255) not null
);

-- 2. 제약조건 추가.
alter table screen_schedule add constraint pk_screen_schedule_idx primary key(screen_schedule_idx);
alter table screen_schedule add constraint fk_screen_schedule_regdata_idx foreign key(screen_regdata_idx) references screen_regdata(screen_regdata_idx) on delete cascade;

-- 3. sample data 삽입.
--p_key / 상영등록 일련번호 / 2020-02-03 / 20:00.
insert into screen_schedule values(seq_screen_schedule_idx.nextVal, 1, '2020-02-03', '20:00' );
--p_key / 상영등록 일련번호 / 2020-02-03 / 22:00.
insert into screen_schedule values(seq_screen_schedule_idx.nextVal, 2, '2020-02-03', '22:00' );
--p_key / 상영등록 일련번호 / 2020-02-04 / 20:00.
insert into screen_schedule values(seq_screen_schedule_idx.nextVal, 3, '2020-02-04', '20:00' );
--p_key / 상영등록 일련번호 / 2020-02-03 / 09:00.
insert into screen_schedule values(seq_screen_schedule_idx.nextVal, 4, '2020-02-03', '09:00' );
--p_key / 상영등록 일련번호 / 2020-02-03 / 03:00.
insert into screen_schedule values(seq_screen_schedule_idx.nextVal, 5, '2020-02-03', '03:00' );

-- 4. 적용.
commit