-- Q&A

CREATE TABLE board3 (
    bno3         NUMBER PRIMARY KEY,
    title3       VARCHAR2(100),
    content3     CLOB,
    createdate3  TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate3  TIMESTAMP,
    hit3         NUMBER DEFAULT 0,
    filename3    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    reply_count3 int,
    like_count3 int,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE    
);

CREATE SEQUENCE seq_bno3 NOCACHE;

INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '해외 여행시 필수 준비물은 무엇인가요?', '처음 해외 여행을 계획 중인데, 필수로 챙겨야 할 준비물이 궁금합니다. 경험자분들의 조언 부탁드려요.', 'Traveler31');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '비행기 이륙 시 귀가 아프는데, 해결 방법이 있나요?', '비행기를 탈 때마다 귀가 너무 아픕니다. 이를 완화할 수 있는 방법을 알고 싶어요.', 'Traveler31');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '유럽 여행 중 픽포켓을 피하는 방법은?', '유럽 여행 중 소매치기를 조심해야 한다고 들었습니다. 픽포켓을 피할 수 있는 방법이 있을까요?', 'Adventurer23');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '여행지에서 현지 음식 알레르기 대처 팁이 궁금합니다', '특정 음식 알레르기가 있어 걱정이 됩니다. 여행지에서 알레르기 대처 방법이 궁금해요.', 'Nomad48');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '혼자 여행하기 좋은 나라 추천 부탁드려요', '혼자 여행하기에 안전하고 즐거운 나라에 대한 추천을 받고 싶습니다.', 'Wanderer92');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '장기 여행 시 짐 줄이는 팁이 필요해요', '장기 여행을 계획 중인데, 짐을 어떻게 줄일 수 있는지 조언 부탁드립니다.', 'Tourist56');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '여행지에서 인터넷 사용법이 궁금합니다', '해외에서 데이터 사용이나 와이파이 접속은 어떻게 하나요?', 'Nomad48');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '비행기 좌석 선택 팁을 알고 싶어요', '비행기 좌석을 선택할 때 불편함 없이 즐길 수 있는 좌석 선택 방법이 궁금합니다.', 'Wanderer92');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '현지에서의 의사소통 팁을 알려주세요', '외국어를 잘하지 못하는데, 현지에서 의사소통을 잘하는 방법이 궁금합니다.', 'Traveler31');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '여행 중 긴급 상황 대처 방법이 궁금해요', '여행 중 예상치 못한 긴급 상황이 발생했을 때 어떻게 대처해야 하는지 조언 부탁드립니다.', 'Explorer19');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '여행 중 현지 언어를 배우는 효과적인 방법은?', '여행지에서 현지 언어를 배우고 싶은데, 효과적인 학습 방법이 궁금합니다.', 'Nomad48');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '해외 여행 중 환전하는 가장 좋은 방법은 무엇인가요?', '해외 여행 시 환전을 어떻게 하는 것이 가장 유리할까요?', 'Explorer19');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '여행지에서의 건강 관리 팁이 궁금합니다', '여행 중 건강을 유지하기 위한 팁이 있을까요?', 'Wanderer92');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '혼자 여행할 때 안전을 지키는 방법은?', '혼자 여행을 계획 중인데, 안전하게 여행하는 방법이 궁금합니다.', 'Tourist56');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '장기 여행 시 짐 꾸리는 법에 대한 조언이 필요해요', '장기 여행을 앞두고 있는데, 짐을 어떻게 꾸려야 할지 조언이 필요합니다.', 'Traveler81');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '여행지에서 현지 음식을 즐기는 법을 알려주세요', '여행지의 현지 음식을 최대한 즐기고 싶어요. 좋은 방법이 있을까요?', 'Wanderer35');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '여행 중에도 운동을 계속하고 싶어요, 어떻게 해야 하나요?', '여행을 하면서도 운동 루틴을 유지하고 싶은데, 효과적인 방법이 있나요?', 'Adventurer74');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '여행 사진 잘 찍는 비결이 궁금합니다', '여행 중 멋진 사진을 남기고 싶어요. 사진 찍는 좋은 팁이 있을까요?', 'Nomad48');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '여행지에서 로컬 문화를 경험하는 방법은?', '여행지에서 진정한 로컬 문화를 경험하고 싶어요. 어떻게 해야 할까요?', 'Explorer19');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '여행지에서 Wi-Fi 연결은 어떻게 하나요?', '해외여행 중 인터넷을 사용하려면 어떤 방법이 좋을까요?', 'Traveler81');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '뉴질랜드 치안', '자동차 도난이 많다던데 지정된 구역만 사용하면 괜찮을까요?', 'chaeh');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '크리스마스에 갈만한 곳', '크리스마스 분위기 뿜뿜한 곳 추천해주세요~', 'gaeun2');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '해외여행 준비물', '특별히 챙겨야할 물건이 있을까요?', 'sanghyun');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '유럽 치안', '프랑스 치안이 안좋다고 하던데 정말 안좋나요? 필요한 준비물 같은 거 있을까요?', 'yeeeuney');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '스위스 스카이다이빙', '스카이다이빙 하다가 죽은 사람도 있던데 괜찮겠죠?', 'jihun');
INSERT INTO board3(bno3, title3, content3, id) VALUES (seq_bno3.NEXTVAL, '호주 워킹홀리데이 비자', '호주로 워킹홀리데이 떠나고 싶은데 비자 발급해보신분! 도와주세용', 'nagyung');
COMMIT;


SELECT * FROM board3;


SELECT * FROM board3 ORDER BY like_count3 DESC;


-- reply 테이블 생성
CREATE TABLE reply3 (
    rno3         NUMBER PRIMARY KEY,                 -- 댓글번호
    bno3         NUMBER NOT NULL,                    -- 게시글번호
    rcontent3    VARCHAR2(2000) NOT NULL,            -- 댓글내용
    replyer3     VARCHAR2(20) NOT NULL,              -- 작성자
    rdate3       TIMESTAMP DEFAULT SYSTIMESTAMP,     -- 작성일
    rupdate3     TIMESTAMP,                          -- 수정일
    FOREIGN KEY (bno3) REFERENCES board3(bno3) ON DELETE CASCADE
);
DROP TABLE reply3;

CREATE SEQUENCE seq_rno3 NOCACHE;

INSERT INTO reply3(rno3, bno3, rcontent3, replyer3)
VALUES (seq_rno3.NEXTVAL, 1, '첫번째 댓글입니다.', 'show3239');

select * from reply3;

CREATE TABLE blike3(
    likeno3 NUMBER PRIMARY KEY,
    bno3    NUMBER NOT NULL,
    id     VARCHAR2(20) NOT NULL,
    FOREIGN KEY (bno3) REFERENCES board3(bno3) ON DELETE CASCADE,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE   
);
DROP TABLE blike3;

CREATE SEQUENCE seq_likeno3 NOCACHE;

commit;

DELETE FROM board3;