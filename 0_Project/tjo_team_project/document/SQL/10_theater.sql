-- 0. 영화관 시퀀스 생성.
create sequence seq_theater_idx;

-- 1. 영화관 테이블 생성.
create table theater
(
	tht_idx int,
	tht_name VARCHAR(255) not null,
	tht_tel VARCHAR(255) not null,
	tht_area VARCHAR(255) not null,
	tht_location VARCHAR(255) not null
	
);

-- 2. 기본키 제약조건 추가.
alter table theater add constraint pk_theater_idx primary key(tht_idx);

-- 3. sample data 삽입.
insert into theater values(seq_theater_idx.nextVal, 'BBB 강남점', '010-0000-0001', '강남', '강남건물 어딘가 3층');
insert into theater values(seq_theater_idx.nextVal, 'BBB 신촌점', '010-0000-0001', '신촌', '신촌건물 어딘가 3층');
insert into theater values(seq_theater_idx.nextVal, 'BBB 홍대점', '010-0000-0001', '홍대', '홍대건물 어딘가 3층');

-- 4. 적용.
commit