-- (개인/기업) 회원 번호, 이메일, 비밀번호, 이름(대표자명), 연락처(사업자번호), 탈퇴 여부 뷰

CREATE OR REPLACE VIEW FIND_VIEW AS
SELECT PER_NO AS NO, PER_EMAIL AS EMAIL, PER_PW AS PW, PER_NAME AS NAME, PER_PHONE AS PHONE, PER_LEAVE AS LEAVE
FROM PERSONAL_TB
UNION
SELECT BUS_NO, BUS_EMAIL, BUS_PW, BUS_CEO, BUS_LCNO, BUS_LEAVE
FROM BUSINESS_TB;


-- 회원 번호, 경고 종류, 경고 시각 뷰

CREATE OR REPLACE VIEW BLK_VIEW AS
SELECT BLK.PER_NO, OUT.OUT_NAME, BLK.BLK_TIME
FROM BLK INNER JOIN OUT
ON BLK.OUT_NO = OUT.OUT_NO;


-- 기업 테이블 BUS, 서비스 테이블 SVC, 업종 테이블 BCT, 사진 테이블 GLR, 사진 종류 테이블 GCT 조인 뷰

CREATE OR REPLACE VIEW BUS_DT_VIEW AS 
SELECT BUS.BUS_NO, BUS.BUS_NAME, BUS.BUS_CEO, BUS.BUS_LCNO, BUS.BUS_PHONE, BUS.BUS_POST, BUS.BUS_ADDR, BUS.BUS_ADDR2,
SVC.SVC_PRI, SVC.SVC_CHK, BCT.BCT_NAME, GLR.GLR_FILE, GLR.GLR_LOC, GCT.GCT_NAME
FROM BUS INNER JOIN SVC
ON BUS.BUS_NO = SVC.BUS_NO
INNER JOIN BCT
ON SVC.BCT_CODE = BCT.BCT_CODE
INNER JOIN GLR
ON GLR.BUS_NO = BUS.BUS_NO
INNER JOIN GCT
ON GCT.GCT_NO = GLR.GCT_NO;

-- 개인 최근 예약 목록 뷰
create or replace view RECENTMYBOOKINGLIST_VIEW as 
select bk.bk_no, bk.per_no, bk.bus_no, bus.bus_name, pty.pty_name, bk.pet_no, pet.pet_name, per.per_name, bk.bk_time, bk.vs_start, bk.bk_chk
from bk inner join per
on bk.per_no = per.per_no
inner join bus
on bk.bus_no = bus.bus_no
inner join pet
inner join pty on pet.pty_no = pty.pty_no;

--기업 공지사항 뷰
create or replace view BUS_NOTICE_VIEW as select 
bbo.bus_no, bbo.bbo_no, bct.bct_name, bbc.bbc_name, bbo.bbo_title, bbo.bbo_date 
from bbo inner join bus
on bbo.bus_no = bus.bus_no
inner join bct
on bbo.bct_code = bct.bct_code
inner join bbc
on bbo.bbc_no = bbc.bbc_no;

--관리자 공지사항(페이징) 뷰
create or replace view ABOLIST_PAGING as select 
abo.abo_no, abc.abc_name, abo.abo_title, abo.abo_ctt, abo.abo_date 
from abo inner join abc
on abo.abc_no = abc.abc_no;
