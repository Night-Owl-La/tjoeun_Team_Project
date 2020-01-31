/*

-- 일령번호 관리 객체
create sequence seq_movielist_idx

-- 영화선택 테이블 생성
create table movielist
(
	idx				int, 		   --일련번호
	ml_title     	varchar2(500), --영화
	ml_poster		varchar2(255), --영화포스터
	ml_plot			varchar2(500), --영화내용
	ml_directorList varchar2(500), --영화감독
	ml_actorList 	varchar2(500), --배우
	ml_runtime 		varchar2(500), --상영시간
	ml_ratingGrade 	varchar2(500), --관람등급
	ml_prodYear 	date, 		   --제작년도
	ml_company 		varchar2(500), --제작사
	user_idx		int,		   --회원일련번호
	
	
	docid			varchar2(500) --영화고유아이디
)

-- 기본키 설정
alter table board
	add constraint pk_movielist_idx primary key(idx);

-- 참조키 설정
alter table board
	add constraint fk_movielist_user_idx foreign key(user_idx)

-- SAMPLE
insert into movielist values(seq_movielist_idx.nextVal,
							'백두산',
							'백두산.jpg',
							'대한민국 관측 역사상 최대 규모의 백두산 폭발 발생...',
							'이해준',
							'이병헌',
							'130 minutes',
							'12세 이상 관람가',
							'2019.12.19',
							'CJ Entertainment',
							'1');


insert into movielist values(seq_movielist_idx.nextVal,
							'MidWay',
							'Midway.jpg',
							'Midway is a 2019 American war film based on the
							Attack on Pearl Harbor...',
							'Roland Emmerich',
							'Ed Skrein',
							'138 minutes',
							'12세 이상 관람가',
							'2019.11.08',
							'Lions Gate Entertainment',
							'2');


insert into movielist values(seq_movielist_idx.nextVal,
							'Frozen 2',
							'Frozen2.jpg',
							'King Agnarr of Arendelle tells a story
							 to his young children,
							 Elsa and Anna, that their grandfather,
							 King Runeard, established a treaty with 
							 the neighboring tribe of Northuldra by 
							 building a dam in their homeland,
							 the Enchanted Forest....',
							'Chris Buck',
							'Kristen Bell',
							'103 minutes',
							'전체 관람가',
							'2019.11.22',
							'Walt Disney Pictures',
							'3');

commit

select * from movielist

drop table movielist

*/