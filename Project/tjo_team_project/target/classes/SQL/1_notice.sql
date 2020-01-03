-- 0. �������� ������ ����.
create sequence seq_notice_idx;

-- 1. �������� ���̺� ����.
create table notice
(
	notice_idx			int,
	notice_title		varchar2(100)	not null,
	notice_content		varchar2(100),
	notice_date			date 			not null,
	notice_author		varchar2(100)	not null
);

-- 2. �⺻Ű �������� �߰�.
alter table notice add constraint pk_notice_idx primary key(notice_idx);

-- 3. sample data ����.
insert into notice values(seq_notice_idx.nextVal, 'ù��° ��������', 'ù��° �������� ����', sysdate, '������');
insert into notice values(seq_notice_idx.nextVal, '�ι�° ��������', '�ι�° �������� ����', sysdate, '������');
insert into notice values(seq_notice_idx.nextVal, '����° ��������', '����° �������� ����', sysdate, '������');

-- 4. ����.
commit;