
--��@�m��2 ��Ʃw�q
--�إ߳]�I��T���

create table EDU_student.LOCAT
(�����O�N�� char(4),�a�}�N�� char(3),�a�}�]�I nvarchar2(30),
�e�H�ƶq integer,�a�U�Ӽh�� char(1),���O nvarchar2(4),�Һޤ����N�� varchar2(4)
);

--�إ��Һާ�����T���
create table EDU_student.VILLA
(�����O�N�� char(4),�����O Nvarchar2(3),�����줽�� nvarchar2(30),�����줽�ǹq�� varchar2(11)
);

--�إ��Һ�ĵ�������T���
create table POlICE
(�����N�� varchar2(4),�Һޤ��� Nvarchar2(4),�����a�} nvarchar2(30),�����q�� varchar2(11)
);

--��@�m��3 ��Ʃw�q
--�s�W�]�I��T���e
insert into LOCAT ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C001', 'L1','�]�߿��˫n���H��20��','100','1','���J','M001');
insert into LOCAT ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C002', 'L2','�]�߿��˫n��M����79��','3142','1','�j��','M001');
insert into LOCAT ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C003', 'L3','�]�߿��˫n���s�s���T�q142��','1072','1','�j��','M001');
insert into LOCAT ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C004', 'L4','�]�߿����s���ظ�1498��','32','1','���@�]�I','M001');
insert into LOCAT ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C005', 'L5','�]�߿��]�ߥ��̥���80��','106','1','���J','M002');
insert into LOCAT ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C005', 'L6','�]�߿��]�ߥ����_��117��','26','1','���J','M002');
insert into LOCAT ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C005', 'L7','�]�߿��]�ߥ��շR��109��','2038','2','���J','M002');
insert into LOCAT ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C005', 'L8','�]�߿��]�ߥ��j�P��53��','128','2','�j��','M002');
insert into LOCAT ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C006', 'L9','�]�߿��Y�������ڨ��M����102��','353','1','���@�]�I','M003');
insert into LOCAT ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C007', 'L10','�]�߿��Y�������������@��69��','501','1','�p����','M003');
insert into LOCAT ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C008', 'L11','�]�߿��Y�����H�q��������65��','194','1','���J','M003');
insert into LOCAT ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C008', 'L12','�]�߿��Y�����H�q��������116��','78','1','�p����','M003');

--�s�W�Һާ�����T���e
insert into VILLA ("�����O�N��","�����O","�����줽��","�����줽�ǹq��")
 values ('C001','�j�H��','�˫n���q��1035��','037-581072');
insert into VILLA ("�����O�N��","�����O","�����줽��","�����줽�ǹq��")
 values ('C002','�˫n��','�˫n��˫n�����s��103��','037-472735');
insert into VILLA ("�����O�N��","�����O","�����줽��","�����줽�ǹq��")
 values ('C003','�s�Ψ�','�˫n��s�Ψ������14��','037-614186');
insert into VILLA ("�����O�N��","�����O","�����줽��","�����줽�ǹq��")
 values ('C004','�H����','���s��H����������136-1��','037-724839');
insert into VILLA ("�����O�N��","�����O","�����줽��","�����줽�ǹq��")
 values ('C005','��]��','�]�ߥ���]��������766��','037-333240');
insert into VILLA ("�����O�N��","�����O","�����줽��","�����줽�ǹq��")
 values ('C006','���ڨ�','���ڨ����ڸ�96��','037-660001');
insert into VILLA ("�����O�N��","�����O","�����줽��","�����줽�ǹq��")
 values ('C007','������','���������j��82��','037-661145');
insert into VILLA ("�����O�N��","�����O","�����줽��","�����줽�ǹq��")
 values ('C087','�H�q��','�H�q���H�q��53��1��','037-616072');

--�s�W�Һ�ĵ�������T���e
insert into POLICE ("�����N��","�Һޤ���","�����a�}","�����q��")
 values ('M001','�˫n����','�]�߿��˫n����ڵ�72��','037-474796');
insert into POLICE ("�����N��","�Һޤ���","�����a�}","�����q��")
 values ('M002','�]�ߤ���','�]�߿��]�ߥ������109��','037-320059');
insert into POLICE ("�����N��","�Һޤ���","�����a�}","�����q��")
 values ('M003','�Y������','�]�߿��Y����������503��','037-663004');

--��@�m��4 ��Ƭd��
--4.1(v)
select POL.�Һޤ���,POL.�����q��,LOC.�e�H�ƶq
 from POLICE POL
 inner join LOCAT LOC on POL.�����N��=LOC.�Һޤ����N��
 where �e�H�ƶq>1000;

--4.2
select POL.�Һޤ���,POL.�����q��,count(LOC.�e�H�ƶq)
 from POLICE POL
 inner join LOCAT LOC on POL.�����N��=LOC.�Һޤ����N��
 where �e�H�ƶq>1000
 group by POL.�Һޤ���,POL.�����q��;

--4.3
select POL.�Һޤ���,POL.�����q��,count(LOC.�e�H�ƶq),LOC.�a�}�]�I,LOC.���O
 from POLICE POL
 inner join LOCAT LOC on POL.�����N��=LOC.�Һޤ����N��
 where �e�H�ƶq>'1000'
 group by POL.�Һޤ���,POL.�����q��,LOC.�a�}�]�I,LOC.���O;

--4.4
select VIL.�����O,LOC.�a�}�]�I,LOC.�e�H�ƶq, POL.�Һޤ���,POL.�����q��
 from POLICE POL
 inner join LOCAT LOC on POL.�����N��=LOC.�Һޤ����N��
 inner join villa VIL on LOC.�����O�N��=VIL.�����O�N��
 where LOC.�a�}�]�I like '%��%';

--4.5
select VIL.�����O, VIL.�����줽��, LOC.�a�}�]�I,LOC.�e�H�ƶq
 from VILLA VIL
 inner join LOCAT LOC on VIL.�����O�N��=LOC.�����O�N��
 where LOC.���O in ('���J', '�j��');

--�m��5 ��ƾޱ�
create table LOCATNEW
(�����O�N�� char(4),�a�}�N�� char(3),�a�}�]�I nvarchar2(30),
�e�H�ƶq integer,�a�U�Ӽh�� char(1),���O nvarchar2(4),�Һޤ����N�� varchar2(4)
);
insert into LOCATNEW ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C001', 'L1','�]�߿��˫n���H��20��','100','1','���J','M001');
insert into LOCATNEW ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C002', 'L2','�]�߿��˫n��M����79��','3142','1','�j��','M001');
insert into LOCATNEW ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C003', 'L3','�]�߿��˫n���s�s���T�q142��','1072','1','�j��','M001');
insert into LOCATNEW ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C004', 'L4','�]�߿����s���ظ�1498��','32','1','���@�]�I','M001');
insert into LOCATNEW("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C005', 'L5','�]�߿��]�ߥ��̥���80��','106','1','���J','M002');
insert into LOCATNEW ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C005', 'L6','�]�߿��]�ߥ����_��117��','26','1','���J','M002');
insert into LOCATNEW ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C005', 'L7','�]�߿��]�ߥ��շR��109��','2038','2','���J','M002');
insert into LOCATNEW ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C005', 'L8','�]�߿��]�ߥ��j�P��53��','128','2','�j��','M002');
insert into LOCATNEW ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C006', 'L9','�]�߿��Y�������ڨ��M����102��','353','1','���@�]�I','M003');
insert into LOCATNEW ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C007', 'L10','�]�߿��Y�������������@��69��','501','1','�p����','M003');
insert into LOCATNEW ("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C008', 'L11','�]�߿��Y�����H�q��������65��','194','1','���J','M003');
insert into lLOCATNEW("�����O�N��","�a�}�N��","�a�}�]�I","�e�H�ƶq","�a�U�Ӽh��","���O","�Һޤ����N��")
 values ('C008', 'L12','�]�߿��Y�����H�q��������116��','78','1','�p����','M003');

--5.1 
update LOCATNEW
 set �e�H�ƶq='5000'
 where �a�}�]�I='�]�߿��˫n��M����79��';

--5.2
delete from LOCATNEW
 where �e�H�ƶq<1000;
