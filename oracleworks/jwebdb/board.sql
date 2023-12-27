-- board 테이블 생성
CREATE TABLE board(
    bno        NUMBER PRIMARY KEY,
    title      VARCHAR2(100) NOT NULL,
    content    CLOB NOT NULL,
    createdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modifydate TIMESTAMP,
    hit        NUMBER DEFAULT 0,
    filename   VARCHAR2(50),
    id         VARCHAR2(20) NOT NULL,
    FOREIGN KEY(id) REFERENCES member(id) ON DELETE CASCADE
);

CREATE SEQUENCE seq_bno NOCACHE;

INSERT INTO board(bno, title, content, id)
VALUES (seq_bno.NEXTVAL, '글제목1', '글내용1', 'khit');
INSERT INTO board(bno, title, content, id)
VALUES (seq_bno.NEXTVAL, '글제목2', '글내용2', 'khit');
INSERT INTO board(bno, title, content, id)
VALUES (seq_bno.NEXTVAL, '글제목3', '글내용3', 'khit');
INSERT INTO board(bno, title, content, id)
VALUES (seq_bno.NEXTVAL, '글제목4', '글내용4', 'khit');

-- 재귀복사
INSERT INTO board (bno, title, content, id)
(SELECT seq_bno.NEXTVAL, title, content, id FROM board);

-- 페이지 처리
-- ROWNUM은 1을 포함해서 시작해야 하는 문제 존재
SELECT ROWNUM, board.*
FROM board
WHERE ROWNUM >= 1 AND ROWNUM <= 10;
-- 페이지 처리 (서브쿼리)
SELECT *
FROM (SELECT ROWNUM RN, board.* FROM board ORDER BY bno DESC)
WHERE RN >= 11 AND RN <= 20;
-- 페이지 처리 (서브쿼리 - deep2단계) 
-- 다 다른 결과가 나오는 불안정한 문제가 발생
SELECT *
FROM (SELECT ROWNUM RN, bo.* 
    FROM (SELECT * FROM board ORDER BY bno DESC) bo) -- board 별칭 사용
WHERE RN >= 11 AND RN <= 20;

-- 전체 게시글 수
SELECT COUNT(*) AS total FROM board;

-- 문자열 검색 (제목 & 아이디)
SELECT * FROM board 
WHERE title LikE '%1%'
ORDER BY bno DESC;
SELECT * FROM board 
WHERE id LikE 'khit'
ORDER BY bno DESC;

SELECT * FROM board ORDER BY bno;

COMMIT;

DROP TABLE board;
DROP SEQUENCE seq_bno;

DELETE FROM board;