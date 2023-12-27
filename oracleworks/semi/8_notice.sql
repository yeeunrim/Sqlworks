CREATE TABLE notice (
    nno         NUMBER PRIMARY KEY,
    ntitle       VARCHAR2(100),
    ncontent     CLOB,
    ncreatedate  TIMESTAMP DEFAULT SYSTIMESTAMP,
    nmodifydate  TIMESTAMP,
    nhit         NUMBER DEFAULT 0,
    nfilename    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    nreply_count int,
    nlike_count int,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE    
);

CREATE SEQUENCE seq_nno NOCACHE;

INSERT INTO notice(nno, ntitle, ncontent, id) VALUES (seq_nno.NEXTVAL, '여행지 안전 수칙 안내', '최근 안전 문제로 인해 여행지의 안전 수칙이 강화되었습니다. 여행 전 반드시 확인해 주세요.', '관리자');
INSERT INTO notice(nno, ntitle, ncontent, id) VALUES (seq_nno.NEXTVAL, '웹사이트 점검 안내', '시스템 개선을 위한 웹사이트 점검이 진행될 예정입니다. 이용에 불편을 드려 죄송합니다.', '관리자');
INSERT INTO notice(nno, ntitle, ncontent, id) VALUES (seq_nno.NEXTVAL, '회원 가입 혜택 안내', '신규 회원 가입 시 다양한 혜택을 제공합니다. 지금 바로 가입하시고 혜택을 누리세요!', '관리자');
INSERT INTO notice(nno, ntitle, ncontent, id) VALUES (seq_nno.NEXTVAL, '여행 후기 공모전 개최', '여행 후기 공모전을 개최합니다. 참가하시어 소중한 경험을 공유해 주세요. 다양한 상품이 준비되어 있습니다.', 'show3239');
commit;

select * from notice;

SELECT * FROM notice ORDER BY nno DESC;
SELECT * FROM (SELECT ROWNUM RN, no.* FROM (SELECT * FROM notice WHERE " + field + " LIKE ? ORDER BY nno DESC) no);

CREATE TABLE nreply (
    nrno         NUMBER PRIMARY KEY,                 -- 댓글번호
    nno         NUMBER NOT NULL,                    -- 게시글번호
    nrcontent    VARCHAR2(2000) NOT NULL,            -- 댓글내용
    nreplyer     VARCHAR2(20) NOT NULL,              -- 작성자
    nrdate       TIMESTAMP DEFAULT SYSTIMESTAMP,     -- 작성일
    nrupdate     TIMESTAMP,                          -- 수정일
    FOREIGN KEY (nno) REFERENCES notice(nno) ON DELETE CASCADE
);
DROP TABLE nreply;

CREATE SEQUENCE seq_nrno NOCACHE;

INSERT INTO nreply(nrno, nno, nrcontent, nreplyer)
VALUES (seq_nrno.NEXTVAL, 1, '첫번째 댓글입니다.', 'show3239');

CREATE TABLE nlike(
    nlikeno NUMBER PRIMARY KEY,
    nno    NUMBER NOT NULL,
    id     VARCHAR2(20) NOT NULL,
    FOREIGN KEY (nno) REFERENCES notice(nno) ON DELETE CASCADE,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE   
);
DROP TABLE nlike;

CREATE SEQUENCE seq_nlikeno NOCACHE;


DELETE FROM notice;

