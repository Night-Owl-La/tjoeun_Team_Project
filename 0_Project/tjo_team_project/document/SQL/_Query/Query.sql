-- 영화관 일련번호 1에 대한 상영 정보 Query.
select 
 screen_regdata.screen_regdata_movietitle 영화명, 
 theater.theater_name 영화관이름,
 theater.theater_area 영화관지역,
 theater.theater_location 영화관위치,
 screen.screen_id 상영관번호, 
 screen.screen_classification 상영관구분
from 
 theater inner join screen on theater.theater_idx = screen.theater_idx
 inner join screen_regdata on screen_regdata.screen_idx = screen.screen_idx
 inner join screen_schedule on screen_schedule.screen_regdata_idx = screen_regdata.screen_regdata_idx
where theater.theater_idx = 1;

-- DOCID 'F32196' 겨울왕국에 대한 상영 정보 Query.
select 
 screen_regdata.screen_regdata_movietitle 영화명, 
 theater.theater_name 영화관이름,
 theater.theater_area 영화관지역,
 theater.theater_location 영화관위치,
 screen.screen_id 상영관번호, 
 screen.screen_classification 상영관구분 
from 
 screen_regdata inner join screen on screen_regdata.screen_idx = screen.screen_idx
 inner join theater on theater.theater_idx = screen.theater_idx
 inner join screen_schedule on screen_schedule.screen_regdata_idx = screen_regdata.screen_regdata_idx
where screen_regdata.docid = 'F32196';

-- 무비에어리어 강남점의 모든 상영일정 Query.
select 
 screen_regdata.screen_regdata_movietitle 영화명, 
 theater.theater_name 영화관이름,
 theater.theater_location 영화관위치,
 screen.screen_id 상영관번호, 
 screen.screen_classification 상영관구분,
 screen_schedule.screen_schedule_date 상영날짜,
 screen_schedule.screen_schedule_time 상영시간
from 
 theater inner join screen on theater.theater_idx = screen.theater_idx
 inner join screen_regdata on screen_regdata.screen_idx = screen.screen_idx
 inner join screen_schedule on screen_schedule.screen_regdata_idx = screen_regdata.screen_regdata_idx
where theater.theater_name = '무비에어리어 강남점'

--  2020-02-03 날짜에 강남지점의 겨울왕국2를 상영하는 모든 상영관의 좌석 정보.
select 
 screen_regdata.screen_regdata_movietitle 영화명, 
 theater.theater_name 영화관이름,
 screen.screen_id 상영관번호, 
 screen.screen_classification 상영관구분,
 screen_schedule.screen_schedule_date 상영날짜,
 screen_schedule.screen_schedule_time 상영시간,
 screen_seat.screen_seat_id 좌석번호,
 screen_seat.screen_seat_status 좌석상태
from 
 theater inner join screen on theater.theater_idx = screen.theater_idx
 inner join screen_regdata on screen_regdata.screen_idx = screen.screen_idx
 inner join screen_schedule on screen_schedule.screen_regdata_idx = screen_regdata.screen_regdata_idx
 inner join screen_seat on screen.screen_idx = screen_seat.screen_idx
where theater.theater_name = '무비에어리어 강남점' and screen_regdata.screen_regdata_movietitle = '겨울왕국2' and screen_schedule.screen_schedule_date = '2020-02-03'

-- 상영 등록된 모든 영화에 대한 모든 정보.
select 
    sr.docid 영화_국제등록코드,
    sr.screen_regdata_movietitle 영화이름, 
    t.theater_name 영화관_이름,
    t.theater_tel 영화관_연락처,
    t.theater_area 영화관_지역,
    t.theater_location 영화관_위치,
    s.screen_id 상영관_번호,
    s.screen_classification 상영관_구분,
    ss.screen_seat_total_amount 상영관_좌석_총개수
from 
    screen s inner join theater t on s.theater_idx = t.theater_idx
    inner join screen_regdata sr on sr.screen_idx = s.screen_idx
    inner join 
        (select screen.screen_idx, count(*) screen_seat_total_amount 
        from screen_seat inner join screen on screen_seat.screen_idx = screen.screen_idx
        GROUP BY screen.screen_idx) ss 
    on ss.screen_idx = s.screen_idx
order by sr.docid;