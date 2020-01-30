-- 1. 상영날짜시간 테이블 생성.
create table screen_date
(
	scr_idx int,
	scr_d_date varchar(255),
	scr_d_time varchar(255),
	DOCID varchar(255)
);

-- 2. 제약조건 추가.
alter table screen_date add constraint pk_screen_date_idx primary key(scr_idx);
alter table screen_date add constraint fk_screen_date_idx foreign key(scr_idx) references screen(scr_idx) on delete cascade;
alter table screen_date add constraint fk_screen_date_docid foreign key(DOCID) references screen_reg_info(DOCID) on delete cascade;

-- 3. sample data 삽입.
insert into screen_date values(30, '2020-01-30', '20:00', 'F48331');
insert into screen_date values(31, '2020-01-30', '21:00', 'F41181');
insert into screen_date values(32, '2020-01-30', '22:00', 'F32196');

insert into screen_date values(33, '2020-01-30', '20:00', 'F32196');
insert into screen_date values(34, '2020-01-30', '20:00', 'F41181');

-- 4. 적용.
commit