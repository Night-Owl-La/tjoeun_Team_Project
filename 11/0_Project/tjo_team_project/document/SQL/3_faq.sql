-- 0. 자주찾는질문 시퀀스 생성.
create sequence seq_faq_idx;

-- 1. 자주찾는질문 테이블 생성.
create table faq
(
	faq_idx			 int,
	faq_category	 varchar2(255)	 not null,
	faq_title		 varchar2(255)	 not null,
	faq_content		 varchar2(255)	 not null,
	faq_view_count	 int,
	faq_regdate			 date 		 not null,
	faq_modifydate		 date 		 not null,
	faq_author		 varchar2(255)   not null
);

-- 2. 기본키 제약조건 추가.
alter table faq add constraint pk_faq_idx primary key(faq_idx);

-- 3. sample data 삽입.
insert into faq values(seq_notice_idx.nextVal, '예약', '예약하는 방법', '예약하는 방법, 1.돈을 넣으세요. 2.예약하세요. 3.끝.', 0, sysdate, sysdate, '관리자');
insert into faq values(seq_notice_idx.nextVal, '환불', '환불하는 방법', '환불하는 방법, 1.고객센터로 전화하세요. 2.환불하세요. 3.끝.', 0, sysdate, sysdate, '관리자');
insert into faq values(seq_notice_idx.nextVal, '리뷰', '리뷰 수정하는 방법', '리뷰 수정하는 방법, 1.수정버튼을 누르세요. 2.수정하세요. 3.끝.', 0, sysdate, sysdate, '관리자');

-- 4. 적용.
commit