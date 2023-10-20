--축구선수 테이블(u-23/a대표)

--축구선수 종합 테이블
CREATE TABLE soccer_player(
    name VARCHAR2(20), --이름
    team VARCHAR2(100), --소속팀
    teambyage VARCHAR2(50) --(U-23 VS A대표)
);

INSERT INTO soccer_player VALUES ('손흥민', '토트넘 훗스퍼', 'A대표');
INSERT INTO soccer_player VALUES ('이강인', '파리 생제르맹', 'U-23, A대표');
INSERT INTO soccer_player VALUES ('김민재', '바이에른 뮌헨', 'A대표');
INSERT INTO soccer_player VALUES ('정우영', '슈투트가르트', 'U-23, A대표');

SELECT * FROM soccer_player;

--제1정규화 : 테이블 분리
--team 테이블
CREATE TABLE team(
    name VARCHAR2(20),
    team VARCHAR2(100)
);

INSERT INTO team VALUES ('손흥민', '토트넘 훗스퍼');
INSERT INTO team VALUES ('이강인', '파리 생제르맹');
INSERT INTO team VALUES ('김민재', '바이에른 뮌헨');
INSERT INTO team VALUES ('정우영', '슈투트가르트');

--tba 테이블
CREATE TABLE tba(
    name VARCHAR2(20),
    teambyage VARCHAR2(50)
);

INSERT INTO tba VALUES ('손흥민', 'A대표');
INSERT INTO tba VALUES ('이강인', 'U-23');
INSERT INTO tba VALUES ('이강인', 'A대표');
INSERT INTO tba VALUES ('김민재', 'A대표');
INSERT INTO tba VALUES ('정우영', 'U-23');
INSERT INTO tba VALUES ('정우영', 'A대표');

SELECT * FROM team;
SELECT * FROM tba;

--조인
--1. 선수이름, 팀, 연령별 대표에 대한 정보 출력
SELECT a.name, a.team, b.teambyage
FROM team a, tba b
WHERE a.name = b.name;

SELECT a.name, a.team, b.teambyage
FROM team a INNER JOIN tba b
ON a.name = b.name;

SELECT name, a.team, b.teambyage
FROM team a JOIN tba b
USING (name);

--조회
--2. 'A대표'가 들어가는 선수의 정보 출력
SELECT a.name, a.team, b.teambyage
FROM team a, tba b
WHERE a.name = b.name AND b.teambyage LIKE '%A대표%';