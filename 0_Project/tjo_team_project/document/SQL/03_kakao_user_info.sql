/*

--일련번호 관리 객체
create sequence seq_kakao_user_idx

--삭제
drop table kakao_user_info


create table kakao_user_info
(
	kakao_user_idx         int,
 	kakao_user_email       varchar2(100) not null unique     --이메일
)

 --기본키
 alter table kakao_user_info
   add constraint pk_kakao_user_email primary key(kakao_user_idx);

--Sample data
insert into kakao_user_info values(
 				seq_kakao_user_idx.nextVal,
 				'one@thej.com'
);


insert into kakao_user_info values(
 				seq_kakao_user_idx.nextVal,
 				'two@thej.com'
);



insert into kakao_user_info values(
 				seq_kakao_user_idx.nextVal,
 				'admin@thej.com'
);

select * from kakao_user_info where kakao_user_email='admin@thej.com'

*/