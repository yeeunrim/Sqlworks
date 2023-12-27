CREATE TABLE users(
    id      VARCHAR2(30) NOT NULL,
    pw      VARCHAR2(30) NOT NULL,
    tel     VARCHAR2(15) NOT NULL,
    email   VARCHAR2(50) NOT NULL,
    birth   NUMBER NOT NULL,
    gender  VARCHAR2(6) NOT NULL,
    introduction VARCHAR(100),
    image VARCHAR(100),
    accountDay    TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifiedDay   TIMESTAMP,  
    PRIMARY KEY(id)
);

INSERT INTO users(id, pw, tel, email, birth, gender)
VALUES ('관리자', '123456', '01063453239', 'test@naver.com', '19920129', '여');

INSERT ALL 
INTO users(id, pw, tel, email, birth, gender) VALUES ('관리자', 'asdf1234!!!!', '01078765061', 'show1234@gmail.com', '19881121', '남')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Nomad48', 'asdf1234!!!!', '01078765061', 'nomad48@gmail.com', '19881121', '여')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Adventurer23', 'asdf1234!!!!', '01043497014', 'adventurer23@hotmail.com', '19751125', '여')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Wanderer92', 'asdf1234!!!!', '01054332979', 'wanderer92@gmail.com', '19980108', '여')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Explorer19', 'asdf1234!!!!', '01056947429', 'explorer19@outlook.com', '19790123', '여')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Tourist56', 'asdf1234!!!!', '01033257265', 'tourist56@yahoo.com', '19700328', '여')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Traveler31', 'asdf1234!!!!', '01095794060', 'traveler31@yahoo.com', '19900215', '남')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Wanderer35', 'asdf1234!!!!', '01073423268', 'wanderer35@yahoo.com', '19630109', '여')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Traveler81', 'asdf1234!!!!', '01086851296', 'traveler81@yahoo.com', '19971224', '여')
INTO users(id, pw, tel, email, birth, gender) VALUES ('GlobeTrotter67', 'asdf1234!!!!', '01012345678', 'globetrotter67@outlook.com', '19940612', '남')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Backpacker42', 'asdf1234!!!!', '01087654321', 'backpacker42@gmail.com', '19870523', '여')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Explorer88', 'asdf1234!!!!', '01025836947', 'explorer88@naver.com', '19920915', '여')
INTO users(id, pw, tel, email, birth, gender) VALUES ('TravelGuru55', 'asdf1234!!!!', '01095175382', 'travelguru55@hotmail.com', '19741206', '남')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Jetsetter71', 'asdf1234!!!!', '01036925814', 'jetsetter71@yahoo.com', '19910819', '남')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Voyager36', 'asdf1234!!!!', '01074185296', 'voyager36@daum.net', '19881230', '여')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Wayfarer24', 'asdf1234!!!!', '01012398765', 'wayfarer24@gmail.com', '19960321', '남')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Pathfinder90', 'asdf1234!!!!', '01078945612', 'pathfinder90@naver.com', '19790517', '여')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Rover75', 'asdf1234!!!!', '01045612378', 'rover75@hotmail.com', '19820729', '남')
INTO users(id, pw, tel, email, birth, gender) VALUES ('Odyssey53', 'asdf1234!!!!', '01098765432', 'odyssey53@yahoo.com', '19940906', '여')
INTO users(id, pw, tel, email, birth, gender, image) VALUES ('chaeh', '123456789@q', '01066669999', 'chaeh@naver.com', '19990207', '여' ,'chaeh.png')
INTO users(id, pw, tel, email, birth, gender, image) VALUES ('gaeun2', 'asdf1234!!!!', '01022223333', 'gaeun2@naver.com', '19951012', '여' ,'gaeun2.png')
INTO users(id, pw, tel, email, birth, gender, image) VALUES ('sanghyun', '!1q2w3e4r', '01063453239', 'show3239@naver.com', '19920129', '남', 'sanghyun.png')
INTO users(id, pw, tel, email, birth, gender, image) VALUES ('yeeeuney', 'yeeun1215!!', '01040892878', 'yeeene@naver.com', '19991215', '여', 'yeeeuney.png')
INTO users(id, pw, tel, email, birth, gender, image) VALUES ('jihun', '12345678@', '010-2448-9169', 'jihun9169@naver.com', '19991214', '남', 'jihun.png')
INTO users(id, pw, tel, email, birth, gender, image) VALUES ('nagyung', '19990618!', '010-3169-2214', 'lia@naver.com', '19990618', '여', 'nagyung.png')
SELECT * FROM DUAL;

COMMIT;


SELECT * FROM users ORDER BY accountDay DESC;

-- 프로필 업데이트
UPDATE users SET id = 'test', introduction = '안녕하세요', image = 'profile' WHERE id = 'test3';

-- 칼럼 삭제
ALTER TABLE users DROP COLUMN introduction;

-- 수정
UPDATE users SET image = '서울' WHERE id = 'test1111';

DELETE FROM users;

