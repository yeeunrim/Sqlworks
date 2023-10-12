--뷰(VIEW) 생성
--UPDATE, DELETE 기능을 사용할 수 있음
--주소에 '대한민국'을 포함하는 고객들로 구성된 뷰 생성
CREATE VIEW vw_customer
AS SELECT * FROM customer
    WHERE address LIKE '%대한민국%';
    
SELECT * FROM vw_customer;

--이름이 김연아를 신유빈으로 변경함
--원본 정보까지 변경되었음
UPDATE vw_customer
    SET name = '신유빈'
    WHERE name = '김연아';
    
--고객아이디가 3인 고객을 삭제
--참조하고 있는 order 테이블이 있어서 삭제 불가
DELETE FROM vm_customer
WHERE cusid = 3;
    
COMMIT;

--VIEW 삭제
DROP VIEW vw_customer;