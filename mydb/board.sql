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

--게시글 추가
INSERT INTO board(bno, btitle, bcontent, bwriter) 
VALUES (seq.NEXTVAL, '가입인사', '안녕하세요~ 만나서 반갑습니다.', 'today10');
INSERT INTO board(bno, btitle, bcontent, bwriter) 
VALUES (seq.NEXTVAL, '공지사항', '천장 에어컨 청소합니다.', 'admin0000');

--커밋
COMMIT;

--전체 조회 (내림차순)
SELECT * FROM board
ORDER BY bno DESC;