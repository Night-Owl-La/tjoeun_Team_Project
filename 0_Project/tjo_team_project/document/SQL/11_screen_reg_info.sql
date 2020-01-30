
-- 1. 상영 등록정보 테이블 생성.
create table screen_reg_info
(
	DOCID varchar(255),
	scr_reg_title varchar(255) not null
);

-- 2. 제약조건 추가.
alter table screen_reg_info add constraint pk_screen_reg_info_docid primary key(DOCID);

-- 3. sample data 삽입.
insert into screen_reg_info values('F48331', '겨울왕국');
insert into screen_reg_info values('F41181', '겨울왕국의 무민');
insert into screen_reg_info values('F32196', '겨울왕국2');

-- 4. 적용.
commit