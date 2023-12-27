-- 좋아요 blike 테이블

CREATE TABLE blike(
    likeno NUMBER PRIMARY KEY,
    bno    NUMBER NOT NULL,
    id     VARCHAR2(20) NOT NULL,
    FOREIGN KEY (bno) REFERENCES board(bno) ON DELETE CASCADE,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE   
);

CREATE SEQUENCE seq_likeno NOCACHE;

INSERT INTO blike(likeno, bno, id)
VALUES (seq_likeno.NEXTVAL, 2, 'show3239');

SELECT * FROM blike;

SELECT COUNT(likeno) FROM blike WHERE bno = 1;

DROP TABLE blike;
DROP SEQUENCE seq_likeno;

TRUNCATE TABLE blike;

DELETE FROM blike WHERE id = 'show3239' and bno = 1; 

COMMIT;

DELETE FROM blike;
