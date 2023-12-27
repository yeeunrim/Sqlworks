-- member 테이블 생성
CREATE TABLE member(
    mno      INT,
    id       VARCHAR2(20) NOT NULL UNIQUE,
    passwd   VARCHAR2(20) NOT NULL,
    name     VARCHAR2(30) NOT NULL,
    email    VARCHAR2(50),
    gender   VARCHAR2(6),
    joindate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(mno)
);

CREATE SEQUENCE seq_mno NOCACHE;

INSERT INTO member(mno, id, passwd, name, email, gender)
VALUES (seq_mno.NEXTVAL, 'khit', 'm1234567', '임예은', 'khit@gmail.com', 'female');

COMMIT;

SELECT * FROM member ORDER BY mno;
SELECT * FROM member WHERE id = 'khit';
SELECT * FROM member WHERE id = 'khit' AND passwd = 'm1234567';

DROP TABLE member;
DROP SEQUENCE seq_mno;

-- result 별칭이지만 칼럼 역할을 함
SELECT COUNT(*) as result
FROM member WHERE id = 'khit';

-- 아이디의 개수가 1이면 true, 아니면 false 출력
SELECT DECODE(COUNT(*), 1, 'true', 'false') AS result
FROM member WHERE id = 'khit';