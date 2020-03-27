create table Member (
	UID VARCHAR(20),
	UPW VARCHAR(20),
	ENABLED VARCHAR(20),
	AUTHORITY VARCHAR(20)
)



select * from g4_write_notice order by datetime desc limit 0,5




create table Agony (
	ANUM int auto_increment primary key,
	AID VARCHAR(100),
	ANAME VARCHAR(20),
	AUTHORITY VARCHAR(100),
	AUNIVERSITY VARCHAR(50),
	ATITLE VARCHAR(1000),
	ACONTENT text(255),
	ADATE DATE,
	AREAD VARCHAR(10)
)ALTER TABLE Agony CONVERT TO character SET utf8;

create table AgonyComment (
	CNUM int auto_increment primary key,
	ANUM int(10) NOT NULL,
	CID varchar(100) NOT NULL,
	CCONTENT VARCHAR(100) NOT NULL,
	CDATE DATE
)ALTER TABLE AgonyComment CONVERT TO character SET utf8;


create table Corruption (
	CT_NUM int auto_increment primary key,
	CT_ID VARCHAR(100),
	CT_NAME VARCHAR(20),
	CT_AUTHORITY VARCHAR(100),
	CT_UNIVERSITY VARCHAR(50),
	CT_TITLE VARCHAR(1000),
	CT_CONTENT text(255),
	CT_DATE DATE,
	CT_READ VARCHAR(10)
)ALTER TABLE Corruption CONVERT TO character SET utf8;

create table CorruptionComment (
	CC_NUM int auto_increment primary key,
	CT_NUM int(10) NOT NULL,
	CC_ID varchar(100) NOT NULL,
	CC_CONTENT text(100) NOT NULL,
	CC_DATE DATE
)ALTER TABLE CorruptionComment CONVERT TO character SET utf8;

select * from AgonyComment where anum = '3';

select count(*) from Agony where aconfirm='n'

insert into Agony(AID, ATITLE, ACONTENT, ACONFIRM, ADATE) values("hong", "tt", "ㅁㄴㅇㅁㄴㅇㄴㅁ", "n", "2018-10-23");
insert into Agony values('asd','ㅁㄴㅇㄹ','ㅁㄴㅇㄹ','2018-10-19','n');

update Agony set ATITLE='testestestest', ACONTENT='test' where ATITLE='test1';

select * from AgonyComment where anum = '3'
select * from AgonyComment;
select * from Agony;
select * from CorruptionComment;
select * from Agony where ANUM='3';
select * from Agony order by ADATE desc;
select * from Agony order by bNum desc;

DROP TABLE Agony;

delete from Agony where anum='25';
