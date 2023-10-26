--자바 게시판 구현할 board 테이블 생성
CREATE TABLE board(
    bno NUMBER PRIMARY KEY,
    btitle VARCHAR2(100) NOT NULL,
    bcontent CLOB NOT NULL, --CLOB(Character Large Of Byte)
    bwriter VARCHAR2(50) NOT NULL,
    bdate DATE DEFAULT SYSDATE
);

--시퀀스 생성
CREATE SEQUENCE seq NOCACHE;

DROP SEQUENCE seq;

--게시글 추가
INSERT INTO board(bno, btitle, bcontent, bwriter) 
VALUES (seq.NEXTVAL, '가입인사', '안녕하세요~ 만나서 반갑습니다.', 'today10');
INSERT INTO board(bno, btitle, bcontent, bwriter) 
VALUES (seq.NEXTVAL, '공지사항', '천장 에어컨 청소합니다.', 'admin0000');

--재귀 복사
INSERT INTO board(bno, btitle, bcontent, bwriter) 
(SELECT seq.NEXTVAL, btitle, bcontent, bwriter FROM board);

--커밋
COMMIT;

--전체 조회 (내림차순)
SELECT * FROM board
ORDER BY bno DESC;

--ROWNUM을 이용한 페이지처리
--ROWNUM은 1을 포함하기 때문에 rn으로 저장해서 처리했다.
SELECT rn, bno, btitle, bcontent, bwriter, bdate
FROM (SELECT ROWNUM rn, bno, btitle, bcontent, bwriter, bdate 
      FROM board)
WHERE rn >= 11 AND rn <= 20;

--ROWID : 데이터를 구분할 수 있는 유일한 값
--데이터 파일에 저장 블록을 확인할 수 있다.
--이를 통해 데이터를 검색할 수 있다.
SELECT ROWID, bno, btitle
FROM board
WHERE ROWID = 'AAATm3AAHAAAAObAAB';

TRUNCATE TABLE board;