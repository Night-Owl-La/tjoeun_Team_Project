-- 0. system 계정으로 접속후.

-- 1. user 생성
create user team_user identified by team;
-- 반드시 위의 유저명, 비밀번호를 지켜야 합니다. 임의 변경 금지.

-- 2. user 권한 설정.
grant dba to team_user;

-- 3. 적용.
commit;