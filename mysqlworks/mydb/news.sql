USE mydb;

-- news 테이블 생성
CREATE TABLE news(
	aid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    create_date TIMESTAMP DEFAULT NoW(),
    img VARCHAR(40)
);

INSERT INTO news(title, content, img) VALUES ('경제 뉴스', '휘발유 값이 너무 올랐습니다.', 'car.jpg');
INSERT INTO news(title, content, img) VALUES ('정치 뉴스', '이스라엘과 팔레스타인 전쟁', 'war.JpG');
INSERT INTO news(title, content, img) VALUES ('스포츠 뉴스', '한국과 베트남 축구 성적 - 6:0', 'soccer.jpg');
INSERT INTO news(title, content, img) VALUES ('과학 뉴스', '협동 로봇, 청소 서비스 로봇', 'robot.png');

SELECT * FROM news;

-- 등록 시간 순으로 정렬 (최근 등록일이 위로 올라감)
SELECT * 
FROM news
ORDER BY create_date DESC;

-- 뉴스 내용 중에 '이스라엘'이 포함된 뉴스를 검색
SELECT *
FROM news
WHERE content LIKE '%이스라엘%';

-- 뉴스 기사의 총 개수
SELECT COUNT(*) "뉴스의 총 개수"
FROM news;

DROP TABLE news;