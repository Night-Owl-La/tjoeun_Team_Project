-- 0. system �������� ������.

-- 1. user ����
create user team_user identified by team;
-- �ݵ�� ���� ������, ��й�ȣ�� ���Ѿ� �մϴ�. ���� ���� ����.

-- 2. user ���� ����.
grant dba to team_user;

-- 3. ����.
commit;