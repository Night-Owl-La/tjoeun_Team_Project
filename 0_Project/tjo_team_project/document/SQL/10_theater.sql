-- 0. 영화관 시퀀스 생성.
create sequence seq_theater_idx;

-- 1. 영화관 테이블 생성.
create table theater
(
	theater_idx int,
	theater_name VARCHAR(255) not null,
	theater_tel VARCHAR(255) not null,
	theater_area VARCHAR(255) not null,
	theater_location VARCHAR(255) not null,
	theater_opening_date DATE not null,
	theater_closed_date DATE
);

-- 2. 기본키 제약조건 추가.
alter table theater add constraint pk_theater_idx primary key(theater_idx);

-- 3. sample data 삽입.
insert into theater values(seq_theater_idx.nextVal, '무비에어리어 강남점', '010-0000-0003', '강남', '강남건물 어딘가 3층', sysdate, '');
insert into theater values(seq_theater_idx.nextVal, '무비에어리어 신촌점', '010-0000-0005', '신촌', '신촌건물 어딘가 5층', sysdate, '');
insert into theater values(seq_theater_idx.nextVal, '무비에어리어 홍대점', '010-0000-0007', '홍대', '홍대건물 어딘가 7층', sysdate, '');

-- 4. 적용.
commit