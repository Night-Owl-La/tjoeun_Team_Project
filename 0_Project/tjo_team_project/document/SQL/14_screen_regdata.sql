-- 0. 상영등록 정보 시퀀스 생성.
create sequence seq_screen_regdata_idx;

-- 1. 상영 등록정보 테이블 생성.
create table screen_regdata
(
	scr_r_idx int,
	scr_r_title varchar(255) not null,
	DOCID varchar(255) not null,
	tht_idx int,
	scr_idx int,
	scr_sc_idx int
)

-- 2. 제약조건 추가.
alter table screen_regdata add constraint pk_screen_regdata_idx primary key(scr_r_idx);
alter table screen_regdata add constraint fk_screen_regdata_tht_idx foreign key(tht_idx) references theater(tht_idx) on delete cascade;
alter table screen_regdata add constraint fk_screen_regdata_scr_idx foreign key(scr_idx) references screen(scr_idx) on delete cascade;
alter table screen_regdata add constraint fk_screen_regdata_scr_sc_idx foreign key(scr_sc_idx) references screen_schedule(scr_sc_idx) on delete cascade;

-- 3. sample data 삽입.
insert into screen_regdata values(seq_screen_regdata_idx.nextVal, '겨울왕국', 'F48331', 1, 1, 1);
insert into screen_regdata values(seq_screen_regdata_idx.nextVal, '겨울왕국의 무민', 'F41181', 1, 2, 2);
insert into screen_regdata values(seq_screen_regdata_idx.nextVal, '겨울왕국2', 'F32196', 1, 3, 3);
insert into screen_regdata values(seq_screen_regdata_idx.nextVal, '겨울왕국', 'F48331', 2, 4, 4);
insert into screen_regdata values(seq_screen_regdata_idx.nextVal, '겨울왕국', 'F48331', 3, 5, 5);

-- 4. 적용.
commit