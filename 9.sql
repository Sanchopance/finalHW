INSERT INTO CasualAnimal ( NAME, birthDay )
VALUES
	( 'Шарик', '2020-01-23' ),
	( 'Рекс', '2020-01-24' ),
	( 'Василий', '2015-02-14' ),
	( 'Рыжий', '2021-06-24' ),
	( 'Чип', '2023-01-01' ),
	( 'Дейл', '2023-01-02' ),
	( 'Граф Воронцов', '2002-11-30' ),
	( 'Граф Орлов', '2010-12-30' ),
	( 'Корабль', '2008-08-01' ),
	( 'Заблудший', '2014-03-18' ),
	( 'Осел', '2001-04-09' ),
	( 'Юлий', '2007-07-31' );
INSERT INTO Commands ( command )
VALUES
	( "Голос" ),
	( "Взять" ),
	( "Сидеть" ),
	( "Дай лапу" ),
	( "Вперед" ),
	( "Стой" ),
	( "Лежать" );
INSERT INTO AnimalCommand ( Animal_id, Command_id ) SELECT
ca.id,
c.id 
FROM
	CasualAnimal AS ca,
	Commands AS c 
WHERE
	ca.NAME = "Шарик" 
	AND c.command IN ( "Взять", "Голос", "Сидеть" );
INSERT INTO AnimalCommand ( Animal_id, Command_id ) SELECT
ca.id,
c.id 
FROM
	CasualAnimal AS ca,
	Commands AS c 
WHERE
	ca.NAME = "Рекс" 
	AND c.command IN ( "Взять" );
INSERT INTO AnimalCommand ( Animal_id, Command_id ) SELECT
ca.id,
c.id 
FROM
	CasualAnimal AS ca,
	Commands AS c 
WHERE
	ca.NAME = "Василий" 
	AND c.command IN ( "Дай лапу" );
INSERT INTO AnimalCommand ( Animal_id, Command_id ) SELECT
ca.id,
c.id 
FROM
	CasualAnimal AS ca,
	Commands AS c 
WHERE
	ca.NAME = "Рыжий" 
	AND c.command IN ( "Дай лапу" );
INSERT INTO AnimalCommand ( Animal_id, Command_id ) SELECT
ca.id,
c.id 
FROM
	CasualAnimal AS ca,
	Commands AS c 
WHERE
	ca.NAME = "Чип" 
	AND c.command IN ( "Лежать" );
INSERT INTO AnimalCommand ( Animal_id, Command_id ) SELECT
ca.id,
c.id 
FROM
	CasualAnimal AS ca,
	Commands AS c 
WHERE
	ca.NAME = "Дейл" 
	AND c.command IN ( "Лежать" );
INSERT INTO AnimalCommand ( Animal_id, Command_id ) SELECT
ca.id,
c.id 
FROM
	CasualAnimal AS ca,
	Commands AS c 
WHERE
	ca.NAME = "Граф Воронцов" 
	AND c.command IN ( "Вперед", "Стой" );
INSERT INTO AnimalCommand ( Animal_id, Command_id ) SELECT
ca.id,
c.id 
FROM
	CasualAnimal AS ca,
	Commands AS c 
WHERE
	ca.NAME = "Граф Орлов" 
	AND c.command IN ( "Вперед", "Стой" );