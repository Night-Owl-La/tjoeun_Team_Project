/*

--일련번호 관리 객체
create sequence seq_timetable_idx


-- timetable table생성
create table timetable
(
	tht_idx	        	int,				--영화관번호
	tht_name	       	varchar2(500),		--영화관명
	scr_idx				int,				--상영관번호
	scr_seat_count		int, 				--상영관총좌석수
	scr_d_date			varchar2(500),		--상영날짜
	scr_d_time			varchar2(500), 		--상영시간
	docid			 	varchar2(500)		--api고유번호
)

-- 기본키 설정
alter table timetable
	add constraint pk_timetable_tht_idx primary key(tht_idx);
	
-- 참조키 설정
alter table timetable
	add constraint fk_timetable_scr_idx foreign key(scr_idx)
										references timetable(tht_idx)
	

-- SAMPLE
insert into timetable values(1,
							 'CGV GANGNAM',
							 1,
							 20,
							 '2020.01.29',
							 '11:00',
							 'F48331');

insert into timetable values(2,
							 'CGV GANGNAM',
							 1,
							 20,
							 '2020.01.29',
							 '15:00',
							 'F48331');

insert into timetable values(3,
							 'CGV GANGNAM',
							 1,
							 20,
							 '2020.01.29',
							 '20:00',
							 'F48331');
							 
insert into timetable values(4,
							 'CGV SONGPA',
							 3,
							 15,
							 '2020.01.29',
							 '13:00',
							 'F48331');











commit

select * from timetable

drop table timetable

*/