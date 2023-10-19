--은행 계좌 테이블 생성
CREATE TABLE account(
    ano VARCHAR2(20) PRIMARY KEY,
    owner VARCHAR2(20) NOT NULL,
    balance NUMBER NOT NULL
);

INSERT INTO account VALUES ('11-11-111', '임예은', 10000);

UPDATE account SET balance = 40000 WHERE ano = '44-44-4444';
ROLLBACK;

COMMIT;

SELECT * FROM account;