-- 0. 상영관 시퀀스 생성.
create sequence seq_screen_idx;

-- 1. 상영관 테이블 생성.
create table screen
(
	scr_idx int,
	scr_id int not null,
	scr_seat_count int,
	tht_idx int,
	DOCID varchar(255)
);

-- 2. 제약조건 추가.
alter table screen add constraint pk_screen_idx primary key(scr_idx);
alter table screen add constraint fk_screen_idx foreign key(tht_idx) references theater(tht_idx) on delete cascade;
alter table screen add constraint fk_screen_docid foreign key(DOCID) references screen_reg_info(DOCID);

alter table screen add DOCID varchar(255)

-- 3. sample data 삽입.
insert into screen values(seq_screen_idx.nextVal, 1, 25, 1, 'F48331');
insert into screen values(seq_screen_idx.nextVal, 2, 25, 1, 'F41181');
insert into screen values(seq_screen_idx.nextVal, 3, 25, 1, 'F32196');

insert into screen values(seq_screen_idx.nextVal, 1, 25, 2, 'F32196');
insert into screen values(seq_screen_idx.nextVal, 1, 25, 3, 'F41181');

-- 4. 적용.
commit