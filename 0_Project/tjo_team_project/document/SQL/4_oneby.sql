-- 0. 자주찾는질문 시퀀스 생성.
create sequence seq_oneby_idx;

-- 1. 자주찾는질문 테이블 생성.
create table oneby
(
	oneby_idx			 int,
	oneby_category	 varchar2(255)	 not null,
	oneby_title		 varchar2(255)	 not null,
	oneby_content		 varchar2(255)	 not null,
	oneby_regdate			 date 		 not null,
	oneby_modifydate		 date 		 not null,
	oneby_filename			 varchar2(255),
	
	user_idx			int
);

-- 2. 기본키 제약조건 추가.
alter table oneby add constraint pk_oneby_idx primary key(oneby_idx);
--alter table oneby add constraint fk_oneby_idx foreign key(user_idx) references user_info;

-- 3. sample data 삽입.
insert into oneby values(seq_oneby_idx.nextVal, '문의', '예약방법이 어떻게 되나요?', '예약방법을 알려주세요.', sysdate, sysdate, '', 1);
insert into oneby values(seq_oneby_idx.nextVal, '제안', '신촌 영화관 화장실 크기가 너무 작아요', '확장 공사해주세요.', sysdate, sysdate, '', 2);
insert into oneby values(seq_oneby_idx.nextVal, '불만', '오늘 로비 청소상태가 안좋네요', '떨어진 팝콘이 영화 끝날 때 까지 방치되있고, 직원들도 너무 불친절해요..', sysdate, sysdate, '', 3);

-- 4. 적용.
commit