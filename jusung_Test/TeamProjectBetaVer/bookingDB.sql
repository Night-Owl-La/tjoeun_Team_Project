/*

-- booking table생성

create sequence seq_booking_idx

create table booking
(
	bk_idx	         	int,				--예약고유번호
	bk_regdate       	date, 				--등록일자
	bk_ticket_count	 	int, 				--영화매수
	bk_saet_location 	varchar2(500), 		--좌석위치
	bk_select_date	 	varchar2(500), 		--선택한 날짜
	bk_select_location	varchar2(500), 		--선택한 영화관
	bk_select_time	 	varchar2(500), 		--선택한 시간
	user_idx		 	int,				--사용자idx
	docid			 	varchar2(500)		--api 고유번호
)

-- 
alter table booking
	add constraint pk_bk_idx primary key(bk_idx);
	
-- 
alter table booking
	add constraint fk_user_idx foreign key(user_idx)

-- SAMPLE
insert into booking values(seq_booking_idx.nextVal,
							sysdate,
							1,
							'A3',
							'2020.01.29',
							'CGV_GANGNAM',
							'11:00',
							21,
							'midway001');

commit

select * from booking

drop table booking

*/