-- reply 테이블 생성
CREATE TABLE reply (
    rno         NUMBER PRIMARY KEY,                 -- 댓글번호
    bno         NUMBER NOT NULL,                    -- 게시글번호
    rcontent    VARCHAR2(2000) NOT NULL,            -- 댓글내용
    replyer     VARCHAR2(20) NOT NULL,              -- 작성자
    rdate       TIMESTAMP DEFAULT SYSTIMESTAMP,     -- 작성일
    rupdate     TIMESTAMP,                          -- 수정일
    FOREIGN KEY (bno) REFERENCES board(bno) ON DELETE CASCADE
);

CREATE SEQUENCE seq_rno NOCACHE;

-- 1번 게시글 검색
SELECT * FROM board WHERE bno = 1;

-- 1번 게시글에 댓글 달기
INSERT INTO reply(rno, bno, rcontent, replyer)
VALUES (seq_rno.NEXTVAL, 1, '첫번째 댓글입니다.', 'khit');
INSERT INTO reply(rno, bno, rcontent, replyer)
VALUES (seq_rno.NEXTVAL, 1, '두번째 댓글입니다.', 'show3239');

COMMIT;

DELETE FROM reply;