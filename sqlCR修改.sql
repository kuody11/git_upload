


--實作練習2 資料定義
--建立設施資訊表單
create table EDU_student.LOCAT11
(VILL_ID char(4), ADDRESS_ID char(3), ADDRESS nvarchar2(30), PEOPLE integer,FLOOR char(1), TYPE varchar2(4), POLICE_ID varchar2(4));

--建立轄管村里資訊表單
create table EDU_student.VILLA11
(VILL_ID char(4), VILL_NM Nvarchar2(3), VILL_OFFICE nvarchar2(30), OFFICE_NMUBER varchar2(11));

--建立轄管警察分局資訊表單
create table POLICE11
(POLICE_ID varchar2(4), POLICE_NM Nvarchar2(4), POLICE_ADD nvarchar2(30), POLICE_NO varchar2(11));

--實作練習3 資料定義
--新增設施資訊內容
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS,PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C001', 'L1','苗栗縣竹南鎮中埔街20號','100','1','公寓','M001');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C002', 'L2','苗栗縣竹南鎮和平街79號','3142','1','大樓','M001');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS,PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C003', 'L3', '苗栗縣竹南鎮龍山路三段142號', '1072', '1', '大樓', 'M001');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C004', 'L4', '苗栗縣後龍鎮中華路1498號', '32', '1', '公共設施', 'M001');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C005', 'L5', '苗栗縣苗栗市米市街80號', '106', '1', '公寓', 'M002');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C005', 'L6', '苗栗縣苗栗市光復路117號', '26', '1', '公寓', 'M002');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C005', 'L7', '苗栗縣苗栗市博愛街109號', '2038', '2', '公寓', 'M002');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C005', 'L8', '苗栗縣苗栗市大同路53號', '128', '2', '大樓', 'M002');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C006', 'L9', '苗栗縣頭份市民族里和平路102號', '353', '1', '公共設施', 'M003');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C007', 'L10', '苗栗縣頭份市忠孝忠孝一路69號', '501', '1', '私營單位', 'M003');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C008', 'L11', '苗栗縣頭份市信義里中正路65號', '194', '1', '公寓', 'M003');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C008', 'L12', '苗栗縣頭份市信義里中正路116號', '78', '1', '私營單位', 'M003');
 commit;

--新增轄管村里資訊內容
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C001','大埔里','竹南鎮公義路1035號','037-581072');
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C002','竹南里', '竹南鎮竹南里中山路103號', '037-472735');
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C003','山佳里', '竹南鎮山佳里國光街14號', '037-614186');
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C004', '埔頂里', '後龍鎮埔頂里中興路136-1號', '037-724839');
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C005', '綠苗里', '苗栗市綠苗里中正路766號', '037-333240');
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C006', '民族里', '民族里民族路96號', '037-660001');
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C007', '忠孝里', '忠孝里光大街82號' ,'037-661145');
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C087', '信義里', '信義里信義路53巷1號', '037-616072');
 commit;

--新增轄管警察分局資訊內容
insert into POLICE11 (POLICE_ID, POLICE_NM, POLICE_ADD, POLICE_NO)
 values ('M001', '竹南分局', '苗栗縣竹南鎮民族街72號', '037-474796');
insert into POLICE11 (POLICE_ID, POLICE_NM, POLICE_ADD, POLICE_NO)
 values ('M002', '苗栗分局', '苗栗縣苗栗市金鳳街109號', '037-320059');
insert into POLICE11 (POLICE_ID, POLICE_NM, POLICE_ADD, POLICE_NO)
 values ('M003', '頭份分局', '苗栗縣頭份市中興路503號', '037-663004');
 commit;
--實作練習4 資料查詢
--4.1(v)
select POL.POLICE_NM as 管轄分局,
POL.POLICE_NO as 分局連絡電話,
LOC.PEOPLE as 容人數量
 from POLICE11 pol
 inner join LOCAT11 loc on POL.POLICE_ID=LOC.POLICE_ID
 where LOC.PEOPLE>1000;

--4.2
select POL.POLICE_NM as 管轄分局,
 POL.POLICE_NO as 分局連絡電話,
 count(LOC.PEOPLE) as 容人數量
 from POLICE11 POL
 inner join LOCAT11 LOC on POL.POLICE_ID=LOC.POLICE_ID
 where PEOPLE>1000
 group by POL.POLICE_NM,POL.POLICE_NO;

--4.3
select POL.POLICE_NM as 管轄分局,
 POL.POLICE_NO as 分局連絡電話,
 count(LOC.PEOPLE) as 容人數量,
 LOC.ADDRESS as 避難設施地址,
 LOC.TYPE as 類型
 from POLICE11 POL
 inner join LOCAT11 LOC on POL.POLICE_ID=LOC.POLICE_ID
 where PEOPLE>1000
 group by POL.POLICE_NM, POL.POLICE_NO, LOC.ADDRESS, LOC.TYPE;

--4.4
select VIL.VILL_NM as 村里別,
 LOC.ADDRESS as 避難設施地址, 
 LOC.PEOPLE as 容人數量,
 POL.POLICE_NM as 管轄分局,
 POL.POLICE_NO as 分局連絡電話
 from POLICE POL
 inner join LOCAT11 LOC on POL.POLICE_ID=LOC.POLICE_ID
 inner join VILLA11 VIL on LOC.VILL_ID=VILL.VILL_ID
 where LOC.ADDRESS like '%中%';

--4.5
select VIL.VILL_NM as 村里別,
 VIL.VILL_OFFICE as 村里別辦公室,
 LOC.ADDRESS as 避難設施地址,
 LOC.PEOPLE as 容人數量
 from VILLA11 VIL
 inner join LOCAT11 LOC on VIL.VILL_ID=LOC.VILL_ID
 where LOC.TYPE in ('公寓','大樓');

--練習5 資料操控
create table EDU_student.LOCATNEW
(村里別代號 char(4),地址代號 char(3),地址設施 nvarchar2(30),
容人數量 integer,地下樓層數 char(1),類別 nvarchar2(4),轄管分局代號 varchar2(4)
);
insert into LOCATNEW ('村里別代號', '地址代號', '地址設施', '容人數量', '地下樓層數', '類別', '轄管分局代號')
 values ('C001', 'L1','苗栗縣竹南鎮中埔街20號', '100', '1', '公寓', 'M001');
insert into LOCATNEW ('村里別代號', '地址代號', '地址設施', '容人數量', '地下樓層數', '類別', '轄管分局代號')
 values ('C002', 'L2','苗栗縣竹南鎮和平街79號', '3142', '1', '大樓', 'M001');
insert into LOCATNEW ('村里別代號', '地址代號', '地址設施', '容人數量', '地下樓層數', '類別', '轄管分局代號')
 values ('C003', 'L3','苗栗縣竹南鎮龍山路三段142號', '1072', '1', '大樓', 'M001');
insert into LOCATNEW ('村里別代號', '地址代號', '地址設施', '容人數量', '地下樓層數', '類別', '轄管分局代號')
 values ('C004', 'L4','苗栗縣後龍鎮中華路1498號', '32', '1', '公共設施', 'M001');
insert into LOCATNEW('村里別代號', '地址代號', '地址設施', '容人數量', '地下樓層數', '類別', '轄管分局代號')
 values ('C005', 'L5','苗栗縣苗栗市米市街80號', '106', '1', '公寓', 'M002');
insert into LOCATNEW ('村里別代號', '地址代號', '地址設施', '容人數量', '地下樓層數', '類別', '轄管分局代號')
 values ('C005', 'L6','苗栗縣苗栗市光復路117號', '26', '1', '公寓', 'M002');
insert into LOCATNEW ('村里別代號', '地址代號', '地址設施', '容人數量', '地下樓層數', '類別', '轄管分局代號')
 values ('C005', 'L7','苗栗縣苗栗市博愛街109號', '2038', '2', '公寓', 'M002');
insert into LOCATNEW ('村里別代號', '地址代號', '地址設施', '容人數量', '地下樓層數', '類別', '轄管分局代號')
 values ('C005', 'L8', '苗栗縣苗栗市大同路53號', '128', '2', '大樓', 'M002');
insert into LOCATNEW ('村里別代號', '地址代號', '地址設施', '容人數量', '地下樓層數', '類別', '轄管分局代號')
 values ('C006', 'L9','苗栗縣頭份市民族里和平路102號', '353', '1', '公共設施', 'M003');
insert into LOCATNEW ('村里別代號', '地址代號', '地址設施', '容人數量', '地下樓層數', '類別', '轄管分局代號')
 values ('C007', 'L10','苗栗縣頭份市忠孝忠孝一路69號', '501', '1', '私營單位', 'M003');
insert into LOCATNEW ('村里別代號', '地址代號', '地址設施', '容人數量', '地下樓層數', '類別', '轄管分局代號')
 values ('C008', 'L11','苗栗縣頭份市信義里中正路65號', '194', '1', '公寓', 'M003');
insert into LOCATNEW ('村里別代號', '地址代號', '地址設施', '容人數量', '地下樓層數', '類別', '轄管分局代號')
 values ('C008', 'L12', '苗栗縣頭份市信義里中正路116號', '78', '1', '私營單位', 'M003');
 commit;

--5.1 
update locatnew
 set 容人數量='5000'
 where 地址設施='苗栗縣竹南鎮和平街79號';
 commit;

--5.2
delete from locatnew
 where 容人數量<'1000';
 commit;