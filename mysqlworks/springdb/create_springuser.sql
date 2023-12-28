-- 계정 : springuser, 비번 : pwspring
create user 'springuser'@'localhost' identified by 'pwspring';

-- springuser에게 모든 권한 부여
grant all privileges on *.* to 'springuser'@'localhost'