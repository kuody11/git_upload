


--��@�m��2 ��Ʃw�q
--�إ߳]�I��T���
create table EDU_student.LOCAT11
(VILL_ID char(4), ADDRESS_ID char(3), ADDRESS nvarchar2(30), PEOPLE integer,FLOOR char(1), TYPE varchar2(4), POLICE_ID varchar2(4));

--�إ��Һާ�����T���
create table EDU_student.VILLA11
(VILL_ID char(4), VILL_NM Nvarchar2(3), VILL_OFFICE nvarchar2(30), OFFICE_NMUBER varchar2(11));

--�إ��Һ�ĵ�������T���
create table POLICE11
(POLICE_ID varchar2(4), POLICE_NM Nvarchar2(4), POLICE_ADD nvarchar2(30), POLICE_NO varchar2(11));

--��@�m��3 ��Ʃw�q
--�s�W�]�I��T���e
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS,PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C001', 'L1','�]�߿��˫n���H��20��','100','1','���J','M001');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C002', 'L2','�]�߿��˫n��M����79��','3142','1','�j��','M001');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS,PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C003', 'L3', '�]�߿��˫n���s�s���T�q142��', '1072', '1', '�j��', 'M001');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C004', 'L4', '�]�߿����s���ظ�1498��', '32', '1', '���@�]�I', 'M001');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C005', 'L5', '�]�߿��]�ߥ��̥���80��', '106', '1', '���J', 'M002');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C005', 'L6', '�]�߿��]�ߥ����_��117��', '26', '1', '���J', 'M002');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C005', 'L7', '�]�߿��]�ߥ��շR��109��', '2038', '2', '���J', 'M002');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C005', 'L8', '�]�߿��]�ߥ��j�P��53��', '128', '2', '�j��', 'M002');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C006', 'L9', '�]�߿��Y�������ڨ��M����102��', '353', '1', '���@�]�I', 'M003');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C007', 'L10', '�]�߿��Y�������������@��69��', '501', '1', '�p����', 'M003');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C008', 'L11', '�]�߿��Y�����H�q��������65��', '194', '1', '���J', 'M003');
insert into EDU_student.LOCAT11 (VILL_ID, ADDRESS_ID, ADDRESS, PEOPLE, FLOOR, TYPE, POLICE_ID)
 values ('C008', 'L12', '�]�߿��Y�����H�q��������116��', '78', '1', '�p����', 'M003');
 commit;

--�s�W�Һާ�����T���e
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C001','�j�H��','�˫n���q��1035��','037-581072');
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C002','�˫n��', '�˫n��˫n�����s��103��', '037-472735');
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C003','�s�Ψ�', '�˫n��s�Ψ������14��', '037-614186');
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C004', '�H����', '���s��H����������136-1��', '037-724839');
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C005', '��]��', '�]�ߥ���]��������766��', '037-333240');
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C006', '���ڨ�', '���ڨ����ڸ�96��', '037-660001');
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C007', '������', '���������j��82��' ,'037-661145');
insert into VILLA11 (VILL_ID, VILL_NM, VILL_OFFICE, OFFICE_NUMBER)
 values ('C087', '�H�q��', '�H�q���H�q��53��1��', '037-616072');
 commit;

--�s�W�Һ�ĵ�������T���e
insert into POLICE11 (POLICE_ID, POLICE_NM, POLICE_ADD, POLICE_NO)
 values ('M001', '�˫n����', '�]�߿��˫n����ڵ�72��', '037-474796');
insert into POLICE11 (POLICE_ID, POLICE_NM, POLICE_ADD, POLICE_NO)
 values ('M002', '�]�ߤ���', '�]�߿��]�ߥ������109��', '037-320059');
insert into POLICE11 (POLICE_ID, POLICE_NM, POLICE_ADD, POLICE_NO)
 values ('M003', '�Y������', '�]�߿��Y����������503��', '037-663004');
 commit;
--��@�m��4 ��Ƭd��
--4.1(v)
select POL.POLICE_NM as ���Ҥ���,
POL.POLICE_NO as �����s���q��,
LOC.PEOPLE as �e�H�ƶq
 from POLICE11 pol
 inner join LOCAT11 loc on POL.POLICE_ID=LOC.POLICE_ID
 where LOC.PEOPLE>1000;

--4.2
select POL.POLICE_NM as ���Ҥ���,
 POL.POLICE_NO as �����s���q��,
 count(LOC.PEOPLE) as �e�H�ƶq
 from POLICE11 POL
 inner join LOCAT11 LOC on POL.POLICE_ID=LOC.POLICE_ID
 where PEOPLE>1000
 group by POL.POLICE_NM,POL.POLICE_NO;

--4.3
select POL.POLICE_NM as ���Ҥ���,
 POL.POLICE_NO as �����s���q��,
 count(LOC.PEOPLE) as �e�H�ƶq,
 LOC.ADDRESS as �����]�I�a�},
 LOC.TYPE as ����
 from POLICE11 POL
 inner join LOCAT11 LOC on POL.POLICE_ID=LOC.POLICE_ID
 where PEOPLE>1000
 group by POL.POLICE_NM, POL.POLICE_NO, LOC.ADDRESS, LOC.TYPE;

--4.4
select VIL.VILL_NM as �����O,
 LOC.ADDRESS as �����]�I�a�}, 
 LOC.PEOPLE as �e�H�ƶq,
 POL.POLICE_NM as ���Ҥ���,
 POL.POLICE_NO as �����s���q��
 from POLICE POL
 inner join LOCAT11 LOC on POL.POLICE_ID=LOC.POLICE_ID
 inner join VILLA11 VIL on LOC.VILL_ID=VILL.VILL_ID
 where LOC.ADDRESS like '%��%';

--4.5
select VIL.VILL_NM as �����O,
 VIL.VILL_OFFICE as �����O�줽��,
 LOC.ADDRESS as �����]�I�a�},
 LOC.PEOPLE as �e�H�ƶq
 from VILLA11 VIL
 inner join LOCAT11 LOC on VIL.VILL_ID=LOC.VILL_ID
 where LOC.TYPE in ('���J','�j��');

--�m��5 ��ƾޱ�
create table EDU_student.LOCATNEW
(�����O�N�� char(4),�a�}�N�� char(3),�a�}�]�I nvarchar2(30),
�e�H�ƶq integer,�a�U�Ӽh�� char(1),���O nvarchar2(4),�Һޤ����N�� varchar2(4)
);
insert into LOCATNEW ('�����O�N��', '�a�}�N��', '�a�}�]�I', '�e�H�ƶq', '�a�U�Ӽh��', '���O', '�Һޤ����N��')
 values ('C001', 'L1','�]�߿��˫n���H��20��', '100', '1', '���J', 'M001');
insert into LOCATNEW ('�����O�N��', '�a�}�N��', '�a�}�]�I', '�e�H�ƶq', '�a�U�Ӽh��', '���O', '�Һޤ����N��')
 values ('C002', 'L2','�]�߿��˫n��M����79��', '3142', '1', '�j��', 'M001');
insert into LOCATNEW ('�����O�N��', '�a�}�N��', '�a�}�]�I', '�e�H�ƶq', '�a�U�Ӽh��', '���O', '�Һޤ����N��')
 values ('C003', 'L3','�]�߿��˫n���s�s���T�q142��', '1072', '1', '�j��', 'M001');
insert into LOCATNEW ('�����O�N��', '�a�}�N��', '�a�}�]�I', '�e�H�ƶq', '�a�U�Ӽh��', '���O', '�Һޤ����N��')
 values ('C004', 'L4','�]�߿����s���ظ�1498��', '32', '1', '���@�]�I', 'M001');
insert into LOCATNEW('�����O�N��', '�a�}�N��', '�a�}�]�I', '�e�H�ƶq', '�a�U�Ӽh��', '���O', '�Һޤ����N��')
 values ('C005', 'L5','�]�߿��]�ߥ��̥���80��', '106', '1', '���J', 'M002');
insert into LOCATNEW ('�����O�N��', '�a�}�N��', '�a�}�]�I', '�e�H�ƶq', '�a�U�Ӽh��', '���O', '�Һޤ����N��')
 values ('C005', 'L6','�]�߿��]�ߥ����_��117��', '26', '1', '���J', 'M002');
insert into LOCATNEW ('�����O�N��', '�a�}�N��', '�a�}�]�I', '�e�H�ƶq', '�a�U�Ӽh��', '���O', '�Һޤ����N��')
 values ('C005', 'L7','�]�߿��]�ߥ��շR��109��', '2038', '2', '���J', 'M002');
insert into LOCATNEW ('�����O�N��', '�a�}�N��', '�a�}�]�I', '�e�H�ƶq', '�a�U�Ӽh��', '���O', '�Һޤ����N��')
 values ('C005', 'L8', '�]�߿��]�ߥ��j�P��53��', '128', '2', '�j��', 'M002');
insert into LOCATNEW ('�����O�N��', '�a�}�N��', '�a�}�]�I', '�e�H�ƶq', '�a�U�Ӽh��', '���O', '�Һޤ����N��')
 values ('C006', 'L9','�]�߿��Y�������ڨ��M����102��', '353', '1', '���@�]�I', 'M003');
insert into LOCATNEW ('�����O�N��', '�a�}�N��', '�a�}�]�I', '�e�H�ƶq', '�a�U�Ӽh��', '���O', '�Һޤ����N��')
 values ('C007', 'L10','�]�߿��Y�������������@��69��', '501', '1', '�p����', 'M003');
insert into LOCATNEW ('�����O�N��', '�a�}�N��', '�a�}�]�I', '�e�H�ƶq', '�a�U�Ӽh��', '���O', '�Һޤ����N��')
 values ('C008', 'L11','�]�߿��Y�����H�q��������65��', '194', '1', '���J', 'M003');
insert into LOCATNEW ('�����O�N��', '�a�}�N��', '�a�}�]�I', '�e�H�ƶq', '�a�U�Ӽh��', '���O', '�Һޤ����N��')
 values ('C008', 'L12', '�]�߿��Y�����H�q��������116��', '78', '1', '�p����', 'M003');
 commit;

--5.1 
update locatnew
 set �e�H�ƶq='5000'
 where �a�}�]�I='�]�߿��˫n��M����79��';
 commit;

--5.2
delete from locatnew
 where �e�H�ƶq<'1000';
 commit;