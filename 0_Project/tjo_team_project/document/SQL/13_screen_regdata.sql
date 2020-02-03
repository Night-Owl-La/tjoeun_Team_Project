-- 0. 상영영화 등록정보 시퀀스 생성.
create sequence seq_screen_regdata_idx;

-- 1. 상영영화 등록정보 테이블 생성.
create table screen_regdata
(
	screen_regdata_idx int,
	screen_idx int,
	DOCID VARCHAR(255) not null,
	screen_regdata_movietitle VARCHAR(255) not null
);

-- 2. 제약조건 추가.
alter table screen_regdata add constraint pk_screen_regdata_idx primary key(screen_regdata_idx);
alter table screen_regdata add constraint fk_screen_regdata_screen_idx foreign key(screen_idx) references screen(screen_idx) on delete cascade;

-- 3. sample data 삽입.
--p_key / 강남 1상영관 / 영화 국제등록코드 / 겨울왕국2.
insert into screen_regdata values(seq_screen_regdata_idx.nextVal, 1, 'F48331', '겨울왕국2' );
--p_key / 신촌 1상영관 / 영화 국제등록코드 / 겨울왕국의 무민.
insert into screen_regdata values(seq_screen_regdata_idx.nextVal, 2, 'F41181', '겨울왕국의 무민' );
--p_key / 홍대 1상영관 / 영화 국제등록코드 / 겨울왕국.
insert into screen_regdata values(seq_screen_regdata_idx.nextVal, 3, 'F32196', '겨울왕국' );

--p_key / 강남 2상영관 / 영화 국제등록코드 / 겨울왕국2.
insert into screen_regdata values(seq_screen_regdata_idx.nextVal, 4, 'F41181', '겨울왕국의 무민' );
--p_key / 강남 3상영관 / 영화 국제등록코드/ 겨울왕국
insert into screen_regdata values(seq_screen_regdata_idx.nextVal, 5, 'F32196', '겨울왕국' );

-- 4. 적용.
commit