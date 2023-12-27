-- 동행자 찾기

CREATE TABLE board1 (
    bno1         NUMBER PRIMARY KEY,
    title1       VARCHAR2(100),
    content1     CLOB,
    createdate1  TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate1  TIMESTAMP,
    hit1         NUMBER DEFAULT 0,
    filename1    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    reply_count1 int,
    like_count1 int,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE    
);
DROP TABLE board1;

CREATE SEQUENCE seq_bno1 NOCACHE;

INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '제주도 함께 여행할 동행자 구해요', '제주도에서의 여행을 함께 즐길 동행자를 찾습니다. 자연을 사랑하고 사진 찍는 걸 좋아하시는 분이면 더 좋을 것 같아요.', 'Adventurer23');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '해외 여행 동행자 찾아요! 영어 가능하신 분', '다음 달 유럽 여행을 계획 중입니다. 영어 소통이 가능하고 적극적인 여행을 좋아하시는 분을 찾고 있습니다.', 'Wanderer92');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '서울에서의 문화 탐방, 함께 하실 분', '서울의 숨겨진 문화 명소를 탐방할 계획입니다. 역사와 문화에 관심 많으신 분 환영합니다.', 'Tourist56');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '등산 동행자 구합니다. 초보자도 환영!', '함께 산을 오르며 자연을 즐길 수 있는 동행자를 찾습니다. 경험은 중요하지 않아요, 열정만 있으면 됩니다!', 'Nomad48');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '해변에서의 요가 동행자를 찾습니다', '해변에서 요가를 함께 할 수 있는 동행자를 찾고 있습니다. 힐링과 명상을 함께 나누고 싶어요.', 'Wanderer92');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '동남아 배낭여행 동행자 모집', '동남아를 함께 배낭여행할 동행자를 찾습니다. 모험을 좋아하고 새로운 것에 도전하는 것을 좋아하는 분이면 좋겠습니다.', 'Tourist56');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '자전거 동호회 회원 모집', '함께 도시 곳곳을 자전거로 달릴 수 있는 동호회원을 모집합니다. 일상에서 벗어나 자유로운 라이딩을 즐기고 싶은 분들의 많은 참여 바랍니다.', 'Wanderer35');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '사진 촬영을 좋아하는 동행자 구합니다', '함께 사진 촬영을 즐길 수 있는 동행자를 찾고 있습니다. 취미로 사진 찍기를 좋아하시는 분들 환영합니다.', 'Adventurer23');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '함께 요리할 동행자를 찾습니다', '다양한 요리를 함께 만들고 시식할 동행자를 찾고 있습니다. 요리에 관심이 많은 분들과 함께하고 싶어요.', 'Nomad48');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '영화 동호회 회원 모집합니다', '다양한 장르의 영화를 함께 볼 수 있는 동호회원을 모집합니다. 영화에 대한 열정이 있으신 분들을 기다립니다.', 'Wanderer92');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '함께 캠핑 갈 동행자 구합니다', '자연 속에서 캠핑을 즐길 동행자를 찾습니다. 야외 활동을 좋아하시는 분이면 더 좋을 것 같습니다.', 'Traveler31');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '바다낚시 동행자를 찾습니다', '함께 바다낚시를 즐길 수 있는 동행자를 구합니다. 낚시 경험이 많지 않아도 괜찮습니다.', 'Explorer88');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '뮤지컬 관람할 동행자 구해요', '다음 주 뮤지컬 관람을 계획 중입니다. 뮤지컬을 좋아하시는 분이라면 함께하실래요?', 'Voyager36');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '산책 좋아하는 동행자 구합니다', '매일 저녁 공원에서 산책을 즐기는데 함께할 분을 찾습니다. 가볍게 걷고 싶으신 분 환영해요.', 'Pathfinder90');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '함께 할 언어 교환 파트너 구합니다', '영어와 한국어 언어 교환을 원합니다. 서로의 언어 실력을 향상시킬 수 있는 좋은 기회가 될 거예요.', 'Rover75');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '맛집 탐방 동행자 구합니다', '함께 다양한 맛집을 탐방할 수 있는 동행자를 찾고 있어요. 먹는 걸 좋아하시는 분들 환영합니다!', 'Odyssey53');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '테마파크 동행자 구해요', '주말에 테마파크를 방문할 계획인데, 함께할 동행자를 찾습니다. 재미있게 놀 수 있는 분을 기다립니다!', 'GlobeTrotter67');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '함께 할 트레킹 동료를 찾습니다', '자연을 좋아하는 분과 함께 트레킹을 하고 싶습니다. 건강하게 즐길 수 있는 동료를 찾고 있어요.', 'Backpacker42');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '선량한 20대 동행자 구합니다', '9박10일중 계획에 따라 2~3일정도 동행하실분 댓글주세요', 'chaeh');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '스키 타러 가실 분 구해요', '겨울지나기 전에 스키장 한번 가줘야지요? 댓글 남겨주세용', 'gaeun2');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '같이 시드니 배낭여행 하실 분', '혼자는 걱정되서 같이 가실 분 구해요', 'sanghyun');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '토트넘 vs 맨유 경기 같이 직관하러 가실 분', '시간 맞으시는 분, 댓글 남겨주세요 !', 'yeeeuney');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '오늘 저녁밥 먹을 사람!', '오늘 12/18 런던에서 저녁밥 먹을사람 댓글!', 'jihun');
INSERT INTO board1(bno1, title1, content1, id) VALUES (seq_bno1.NEXTVAL, '호핑투어 같이하실 20대분들!', '해양스포츠 및 액티비티 활동이 들어있는 호핑투어 같이가요!타임은 3시나 5시 둘 중 하나로 정할거에요. 원하시는 시간 댓글 남겨주세~~', 'nagyung');
COMMIT;

SELECT * FROM board1;


SELECT * FROM board1 ORDER BY like_count1 DESC;


-- reply 테이블 생성
CREATE TABLE reply1 (
    rno1         NUMBER PRIMARY KEY,                 -- 댓글번호
    bno1         NUMBER NOT NULL,                    -- 게시글번호
    rcontent1    VARCHAR2(2000) NOT NULL,            -- 댓글내용
    replyer1     VARCHAR2(20) NOT NULL,              -- 작성자
    rdate1       TIMESTAMP DEFAULT SYSTIMESTAMP,     -- 작성일
    rupdate1     TIMESTAMP,                          -- 수정일
    FOREIGN KEY (bno1) REFERENCES board1(bno1) ON DELETE CASCADE
);
DROP TABLE reply1;

CREATE SEQUENCE seq_rno1 NOCACHE;

INSERT INTO reply1(rno1, bno1, rcontent1, replyer1)
VALUES (seq_rno1.NEXTVAL, 1, '첫번째 댓글입니다.', 'show3239');

select * from reply1;
drop table reply1;
drop SEQUENCE seq_rno1;


CREATE TABLE blike1(
    likeno1 NUMBER PRIMARY KEY,
    bno1    NUMBER NOT NULL,
    id     VARCHAR2(20) NOT NULL,
    FOREIGN KEY (bno1) REFERENCES board1(bno1) ON DELETE CASCADE,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE   
);
DROP TABLE blike1;

CREATE SEQUENCE seq_likeno1 NOCACHE;

commit;

DELETE FROM blike1;