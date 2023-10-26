--자바 프로젝트랑 연동할 테이블 생성
CREATE TABLE users(
    userid VARCHAR2(20) PRIMARY KEY,
    username VARCHAR2(30) NOT NULL,
    userpassword VARCHAR2(20) NOT NULL,
    userage NUMBER(3) NOT NULL,
    useremail VARCHAR2(50) NOT NULL
);

INSERT INTO users VALUES ('yeeeuney', '임예은', 'pw991215', 25, '1515eun@daum.net');

COMMIT;

SELECT * FROM users;