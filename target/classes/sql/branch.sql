create table branchboard(
	branchNum INT(4) auto_increment primary key,					
	branchArea varchar(255),				
	branchPosition varchar(255),				
	branchName varchar(255),
	branchUni varchar(255),
	branchMail varchar(255),
	branchKind INT(4)
)default character set utf8 collate utf8_general_ci;

show variables like 占쎌걼har%占쏙옙;

create table test(...........) 
ALTER TABLE branchboard convert to charset utf8;

select * from branchboard;

select * from branchboard WHERE branchKind = 1 order by branchNum asc
		 limit 0, 10
select * from branchboard order by branchNum limit(1),10;

drop table branchboard;

select count(*) from branchboard;

select * from branchboard order by branchNum asc limit 110, 10;

		insert 
		into 
		branchboard(
		branchNum,
		branchArea,
		branchPosition,
		branchName,
		branchUni,
		branchMail
		)
		values( 
		0,
		'占쎄퐣占쎌뒻占쏙옙筌욑옙占쎌돳',
		'�룯�빘�삢',
		'占쎌읈占쎌뒭燁삼옙',
		'揶쏅베沅볩옙占쏙옙釉경뤃占�');
		
		insert 
		into 
		branchboard(
		branchNum,
		branchArea,
		branchPosition,
		branchName,
		branchUni,
		branchMail
		)
		values( 
		0,
		'占쎈땾占쎌뜚筌욑옙�겫占�',
		'占쎈린占쎄문',
		'占쎌넺占쎄쉐沃섓옙',
		'占쎄쉐域뱀쥒占쏙옙占쏙옙釉경뤃占�');
		 
			insert 
		into 
		branchboard(
		branchNum,
		branchArea,
		branchPosition,
		branchName,
		branchUni
		)
		values( 
		0,
		'占쎄퐬占쎌뵠甕곌쑴占썽겫占�',
		'占쎈린占쎄문',
		'占쎌넺占쎄쉐沃섓옙',
		'疫꿸퀣釉욑옙占�')
		
		
		        16 占쎄퐣占쎌뒻占쏙옙筌욑옙占쎌돳      �룯�빘�삢             占쎌읈占쎌뒭燁삼옙        揶쏅베沅볩옙占쏙옙釉경뤃占�
