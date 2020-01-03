-- 0. 공지사항 시퀀스 생성.
create sequence seq_notice_idx;

-- 1. 공지사항 테이블 생성.
create table notice
(
	notice_idx			int,
	notice_title		varchar2(100)	not null,
	notice_content		varchar2(100),
	notice_date			date 			not null,
	notice_author		varchar2(100)	not null
);

-- 2. 기본키 제약조건 추가.
alter table notice add constraint pk_notice_idx primary key(notice_idx);

-- 3. sample data 삽입.
insert into notice values(seq_notice_idx.nextVal, '첫번째 공지사항', '첫번째 공지사항 내용', sysdate, '관리자');
insert into notice values(seq_notice_idx.nextVal, '두번째 공지사항', '두번째 공지사항 내용', sysdate, '관리자');
insert into notice values(seq_notice_idx.nextVal, '세번째 공지사항', '세번째 공지사항 내용', sysdate, '관리자');

-- 4. 적용.
commit;