

-- 0. 등록된 상영작 영화정보 테이블 생성.
create table regScreen
(	 docid varchar2(255),
	 reg_title varchar2(255) not null,
	 reg_rating varchar2(255),
	 reg_price int
	 	 
)

-- 1. 기본키 제약조건 추가.
alter table regScreen add constraint pk_regScreen_docid primary key(docid);

commit