/*
  
--일련번호 관리 객체
 create sequence seq_user_idx
 
 create table user_info
 (
 	user_idx        int,                       --일련번호
 	user_id         varchar2(100) not null,    --아이디
 	user_pwd        varchar2(100) not null,    --비밀번호
 	user_name       varchar2(100) not null,    --이름
 	user_nickname	varchar2(100) not null,    --닉네임
 	user_tel   	    varchar2(100) not null,    --전화번호
 	user_email	    varchar2(100) not null,    --이메일
 	user_zipcode    varchar2(10),              --우편번호
 	user_addr	    varchar2(100),             --주소
 	user_ip     	varchar2(100),             --ip
 	user_grade	    varchar2(100),			   --회원구분(일반, 실버 , vip ,관리자)
 	user_regdate    date,					   --가입일자
 	user_modifydate date					   --수정일자
 )
 
 --기본키
 alter table user_info
   add constraint pk_user_idx primary key(user_idx);
   
 --id unique 제약
 alter table user_info
   add constraint unique_user_id unique(user_id);

--회원등급
alter table user_info
	add constraint ck_user_grade check(user_grade in('일반','실버','vip','관리자'));

--Sample data
 insert into user_info values(
 					seq_user_idx.nextVal,
 					'one',
 					'1234',
 					'일길동',
 					'길동이',
 					'010-1111-1111',
 					'one@thej.com',
 					'12345',
 					'서울 마포 노고산동 111',
 					'127.0.0.1',
 					'일반',
 					sysdate,
 					sysdate 
 );  
 
 
  insert into user_info values(
 					seq_user_idx.nextVal,
 					'two',
 					'1234',
 					'홍길순',
 					'길순이',
 					'010-1111-1004',
 					'two@thej.com',
 					'12345',
 					'서울 마포 노고산동 111',
 					'127.0.0.1',
 					'관리자',
 					sysdate,
 					sysdate 
 ); 
 
 insert into user_info values(
 					seq_user_idx.nextVal,
 					'admin',
 					'1234',
 					'김관리',
 					'관리삼',
 					'010-2222-1234',
 					'admin@thej.com',
 					'12345',
 					'서울 마포 노고산동 111',
 					'127.0.0.1',
 					'관리자',
 					sysdate,
 					sysdate 
 );  
 
 select * from user_info
 
 commit
   
     
 */