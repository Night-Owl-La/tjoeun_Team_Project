-- 1. 상영관 좌석 테이블 생성.
create table screen_seat
(
	scr_idx int,
	a1 int,
	a2 int,
	a3 int,
	a4 int,
	a5 int,
	
	b1 int,
	b2 int,
	b3 int,
	b4 int,
	b5 int,
	
	c1 int,
	c2 int,
	c3 int,
	c4 int,
	c5 int,
	
	d1 int,
	d2 int,
	d3 int,
	d4 int,
	d5 int,
	
	e1 int,
	e2 int,
	e3 int,
	e4 int,
	e5 int
);

-- 2. 제약조건 추가.
alter table screen_seat add constraint pk_screen_seat_idx primary key(scr_idx);
alter table screen_seat add constraint fk_screen_seat_idx foreign key(scr_idx) references screen(scr_idx) on delete cascade;

-- 3. sample data 삽입.
insert into screen_seat values
	( 32, 
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0 );
insert into screen_seat values
	( 33, 
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0 );
insert into screen_seat values
	( 34, 
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0 );
insert into screen_seat values
	( 30, 
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0 );
insert into screen_seat values
	( 31, 
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0 );

-- 4. 적용.
commit