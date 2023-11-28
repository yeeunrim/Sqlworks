-- 계정 : myuser, 비번 : pwmyuser
create user 'myuser'@'localhost' identified by 'pwmyuser';

-- myuser에게 모든 권한 부여
grant all privileges on *.* to 'myuser'@'localhost'