-- 나의 계획

CREATE TABLE board2 (
    bno2         NUMBER PRIMARY KEY,
    title2       VARCHAR2(100),
    content2     CLOB,
    createdate2  TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate2  TIMESTAMP,
    hit2         NUMBER DEFAULT 0,
    filename2    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    reply_count2 int,
    like_count2 int,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE    
);

CREATE SEQUENCE seq_bno2 NOCACHE;

INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '내년 일본 여행 계획', '내년 봄에 일본으로 여행을 계획하고 있습니다. 도쿄와 교토를 중심으로 여행할 예정이에요.', 'Nomad48');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '유럽 배낭여행 계획', '여름에 3주 동안 유럽 배낭여행을 계획 중입니다. 주요 방문 도시는 파리, 로마, 베를린입니다.', 'Adventurer23');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '호주 자동차 여행 계획', '호주를 자동차로 여행할 계획을 세우고 있습니다. 대자연을 만끽하고 싶어요.', 'Tourist56');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '태국 문화 탐방 여행 계획', '태국의 다양한 문화와 역사를 체험하고 싶어서 여행 계획을 세우고 있습니다.', 'Nomad48');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '미국 국립공원 탐방 계획', '미국의 여러 국립공원을 탐방하는 여행을 계획하고 있습니다. 자연과 함께 힐링하고 싶어요.', 'Traveler31');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '스페인 음식 여행 계획', '스페인의 맛있는 음식을 탐방하기 위한 여행 계획을 세우고 있습니다. 특히 타파스를 기대하고 있어요.', 'Tourist56');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '뉴질랜드 모험 여행 계획', '뉴질랜드의 아름다운 자연을 모험하며 여행할 계획을 세우고 있습니다.', 'Nomad48');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '중국 역사 탐방 여행 계획', '중국의 역사적인 명소들을 탐방할 여행 계획을 세우고 있습니다. 만리장성 방문이 가장 기대돼요.', 'Wanderer92');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '캐나다 겨울 스포츠 여행 계획', '캐나다에서 겨울 스포츠를 즐기기 위한 여행을 계획 중입니다. 스키와 스노보드를 즐길 생각이에요.', 'Traveler81');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '몽골 자연 체험 여행 계획', '몽골의 넓은 평원과 전통 문화를 체험할 여행 계획을 세우고 있습니다. 게르에서의 하룻밤이 기대돼요.', 'Traveler81');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '한국 전통 마을 여행 계획', '한국의 전통 마을을 여행하며 역사와 문화를 체험할 계획입니다. 안동 하회마을과 전주 한옥마을이 목표지요.', 'Explorer88');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '페루 마추픽추 트레킹 계획', '페루의 마추픽추를 트레킹하는 여행을 계획 중입니다. 잉카 문명의 신비를 직접 체험하고 싶어요.', 'Backpacker42');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '베트남 음식 문화 여행 계획', '베트남 전역을 여행하며 다양한 현지 음식을 맛보는 여행을 계획 중입니다. 특히 쌀국수를 기대하고 있어요.', 'Voyager36');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '인도 요가 수련 여행 계획', '인도에서 요가 수련을 하며 몸과 마음의 평화를 찾는 여행을 계획하고 있습니다.', 'Pathfinder90');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '러시아 횡단열차 여행 계획', '시베리아 횡단열차를 타고 러시아를 여행하는 계획을 세우고 있습니다. 기차 여행의 낭만을 기대하고 있어요.', 'Rover75');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '그리스 역사 탐방 여행 계획', '그리스의 역사적인 명소들을 탐방하는 여행을 계획 중입니다. 아테네와 산토리니를 방문할 예정이에요.', 'Odyssey53');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '이집트 문명 탐방 여행 계획', '이집트의 고대 문명을 탐방하는 여행을 계획 중입니다. 피라미드와 스핑크스가 기대되네요.', 'GlobeTrotter67');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '칠레 파타고니아 트레킹 계획', '칠레의 파타고니아 지역을 트레킹하며 대자연을 체험할 계획입니다. 토레스 델 파이네 국립공원 방문이 목표입니다.', 'Jetsetter71');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '태국에서 한달', '맛있는거 먹기', 'chaeh');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '호주에서 로드트립', '30일동안 호주동부, 남부 돌고 올 예정입니다', 'gaeun2');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '일본에서 일주일', '일식 맛집 찾기', 'sanghyun');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '삿포로/도쿄 5박6일 여행', 'DAY1 - 인천국제공항 출발', 'yeeeuney');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '유럽여행', '축구관람하세요~', 'jihun');
INSERT INTO board2(bno2, title2, content2, id) VALUES (seq_bno2.NEXTVAL, '제주도 뷰 맛집 추천!', '제주도 서쪽, 애월에 커피도 간식도 맛있지만 뷰까지 맛집인 카페 추천드려요~', 'nagyung');
COMMIT;

SELECT * FROM board2;


SELECT * FROM board2 ORDER BY like_count2 DESC;


-- reply 테이블 생성
CREATE TABLE reply2 (
    rno2         NUMBER PRIMARY KEY,                 -- 댓글번호
    bno2         NUMBER NOT NULL,                    -- 게시글번호
    rcontent2    VARCHAR2(2000) NOT NULL,            -- 댓글내용
    replyer2     VARCHAR2(20) NOT NULL,              -- 작성자
    rdate2       TIMESTAMP DEFAULT SYSTIMESTAMP,     -- 작성일
    rupdate2     TIMESTAMP,                          -- 수정일
    FOREIGN KEY (bno2) REFERENCES board2(bno2) ON DELETE CASCADE
);
DROP TABLE reply2;

CREATE SEQUENCE seq_rno2 NOCACHE;

INSERT INTO reply2(rno2, bno2, rcontent2, replyer2)
VALUES (seq_rno2.NEXTVAL, 1, '첫번째 댓글입니다.', 'show3239');

select * from reply2;

CREATE TABLE blike2(
    likeno2 NUMBER PRIMARY KEY,
    bno2    NUMBER NOT NULL,
    id     VARCHAR2(20) NOT NULL,
    FOREIGN KEY (bno2) REFERENCES board2(bno2) ON DELETE CASCADE,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE   
);
DROP TABLE blike2;

CREATE SEQUENCE seq_likeno2 NOCACHE;

DELETE FROM board2;

commit;