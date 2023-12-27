-- voter 테이블 생성
CREATE TABLE voter(
    vno NUMBER PRIMARY KEY,
    mid VARCHAR2(20),
    bno NUMBER,
    FOREIGN KEY (mid) REFERENCES MEMBER (id) ON DELETE CASCADE,
    FOREIGN KEY (bno) REFERENCES BOARD (bno) ON DELETE CASCADE
);

CREATE SEQUENCE seq_vno NOCACHE;

INSERT INTO voter(vno, bno, mid) VALUES (seq_vno.NEXTVAL, 1, 'yeeuney');

SELECT * FROM voter;
SELECT * FROM voter WHERE bno = 1;

-- 해당 게시글의 총 개수
SELECT COUNT(*) FROM voter WHERE bno = 1;

-- 좋아요 유무 확인
SELECT COUNT(*) FROM voter WHERE bno = 128 AND mid = 'khit';
SELECT COUNT(*) FROM voter WHERE bno = 128 AND mid = 'yeeuney';

TRUNCATE TABLE voter;
DROP SEQUENCE seq_vno;