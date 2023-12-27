-- 게시판

CREATE TABLE board (
    bno         NUMBER PRIMARY KEY,
    title       VARCHAR2(100),
    content     CLOB,
    createdate  TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate  TIMESTAMP,
    hit         NUMBER DEFAULT 0,
    filename    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    reply_count int,
    like_count int,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE    
);
CREATE SEQUENCE seq_bno NOCACHE;

INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '파리의 밤거리, 정말 환상적이었어요', '파리의 야경은 정말 말로 표현할 수 없을 정도로 아름다웠습니다. 에펠탑의 불빛 아래에서 느꼈던 그 감동을 잊을 수 없네요.', 'Explorer19');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '암스테르담의 아름다운 운하를 따라', '암스테르담의 운하를 따라 산책하는 것은 정말 특별한 경험이었습니다. 운하 옆의 아름다운 건물들이 인상적이었어요.', 'Traveler31');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '런던의 숨은 명소들을 찾아서', '런던은 숨겨진 보석 같은 명소들이 많았습니다. 작은 골목길에서도 새로운 발견이 기다리고 있었죠.', 'Traveler31');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '방콕의 활기찬 야시장 체험기', '방콕의 야시장은 정말 활기차고 매력적이었습니다. 다양한 먹거리와 상품들이 가득했어요.', 'Wanderer35');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '발리 해변의 이국적인 매력에 빠지다', '발리의 해변에서는 마치 다른 세계에 온 것 같았어요. 푸른 바다와 하얀 모래사장의 조화가 너무 아름다웠습니다.', 'Nomad48');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '로마 역사 속으로 떠난 시간 여행', '로마의 역사적인 건축물들을 보며 과거로의 시간 여행을 떠난 듯한 기분이었습니다. 콜로세움의 웅장함이 압도적이었어요.', 'Adventurer23');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '도쿄에서 만난 놀라운 맛집 탐방', '도쿄의 맛집을 탐방하며 일본 음식의 진수를 경험했습니다. 특히 초밥은 최고였어요!', 'Adventurer23');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '교토 고즈넉한 거리에서의 평화로운 하루', '교토의 고즈넉한 거리를 거니는 것은 마음의 평화를 찾는 시간이었습니다. 전통적인 일본의 아름다움이 고스란히 느껴졌어요.', 'Traveler81');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '시드니 항구의 낭만적인 일몰', '시드니 항구에서 바라본 일몰은 정말 장관이었습니다. 그 순간의 평화로움을 잊을 수가 없어요.', 'Tourist56');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '뉴욕에서의 색다른 문화 체험', '뉴욕에서는 다양한 문화와 예술을 접할 수 있었어요. 브로드웨이 뮤지컬은 정말 감동적이었습니다.', 'Tourist56');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '프라하의 마법 같은 야경', '프라하의 밤은 마법처럼 아름다웠어요. 구시가의 불빛과 성 비투스 대성당의 실루엣이 잊혀지지 않아요.', 'Explorer19');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '베를린의 역사적인 여정', '베를린의 역사적인 장소들을 방문하며 도시의 깊은 이야기를 느낄 수 있었어요. 브란덴부르크 문은 특히 인상적이었습니다.', 'Traveler31');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '이스탄불의 활기찬 시장 탐방', '이스탄불의 바자르는 색다른 문화의 향연이었어요. 다양한 상품과 향신료의 향기가 가득했죠.', 'Wanderer35');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '상하이의 현대적인 매력 속으로', '상하이의 현대적인 건축물과 번화한 거리는 눈부셨습니다. 푸동 지구의 야경은 환상적이었어요.', 'Nomad48');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '마이애미 해변에서의 활기찬 휴가', '마이애미 해변은 정말 활기차고 즐거웠어요. 푸른 바다와 백사장이 아름다운 추억을 만들어주었습니다.', 'Adventurer23');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '케이프타운의 경이로운 자연 경관', '케이프타운의 자연은 정말 숨이 멎을 정도로 아름다웠습니다. 테이블 마운틴에서 바라본 경관은 말로 표현할 수 없어요.', 'Adventurer23');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '모로코의 전통적인 매력에 빠지다', '모로코의 전통 시장과 건축물은 정말 독특했습니다. 색다른 문화의 매력에 푹 빠졌어요.', 'Traveler81');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '리스본의 활기찬 거리와 멋진 전망', '리스본의 구불구불한 거리와 멋진 전망은 여행의 즐거움을 더해주었습니다. 트램을 타고 도시를 둘러보는 것도 재미있었어요.', 'Tourist56');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '코타오에서 다이빙', '거북이가 귀여워', 'chaeh');
INSERT INTO board(bno, title, content, id, filename) VALUES (seq_bno.NEXTVAL, '태백 산양목양 몽토랑 추천이요', '산양 너무 귀여웠어요ㅠㅠㅠㅠㅠ', 'gaeun2', 'mongtorang.jpg');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '시드니 오페라하우스에서 음악회 감상', '역시 오페라하우스는 오페라하우스다', 'sanghyun');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '스위스 그린델발트 후기', '선글라스는 필수입니다! 그리고 따뜻한 옷 입고 가셔야 합니다.', 'yeeeuney');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '런던 축구관람', '재밌다!', 'jihun');
INSERT INTO board(bno, title, content, id) VALUES (seq_bno.NEXTVAL, '보라카이 호핑투어(스노쿨링)', '니모도 볼 수 있고, 거북이도 볼 수 있었어요! 귀여운 아기상어와 나란히 수영까쥐이~', 'nagyung');
COMMIT;



SELECT * FROM board ORDER BY bno;

SELECT * FROM board ORDER BY like_count DESC;

DROP TABLE board;

DELETE FROM board;



