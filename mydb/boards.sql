--게시판 테이블 생성
CREATE TABLE boards(
    bno NUMBER PRIMARY KEY,
    btitle VARCHAR2(100) NOT NULL,
    bcontent CLOB NOT NULL, --CLOB(Character Large Of Byte)
    bwriter VARCHAR2(50) NOT NULL,
    bdate DATE DEFAULT SYSDATE,
    bfilename VARCHAR2(50),
    bfiledata BLOB --BLOB(Binary Large Of Byte)
);

--시퀀스 생성
CREATE SEQUENCE seq_bno NOCACHE;

--게시글 추가
INSERT INTO boards (bno, btitle, bcontent, bwriter)
VALUES (seq_bno.NEXTVAL, 'smartphone', '삼성 갤릭시 s21입니다.', 'today');

INSERT INTO boards (bno, btitle, bcontent, bwriter, bdate, bfilename, bfiledata)
VALUES (seq_bno.NEXTVAL, 'smartphone', '삼성 갤릭시 s21입니다.', 'today', SYSDATE, null, null);

COMMIT;

SELECT * FROM boards 
WHERE bwriter = 'sky123'
ORDER BY bno DESC;

DROP TABLE boards;
DROP SEQUENCE seq_bno;