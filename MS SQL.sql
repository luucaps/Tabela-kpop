
create table funcao(
	idFuncao	int primary key 
,	nome		varchar(20) not null
);

insert into funcao(idFuncao, nome)
values(1, 'Líder'), (2, 'Visual'), (3, 'Vocalista'), (4, 'Rapper'), (5, 'Dançarino');

create table grupo(
	idGrupo	int primary key
,	nome	varchar(50) not null
);

insert into grupo(idGrupo, nome)
values(1, 'BTS')
,	  (2, 'EXO')	
,	  (3, 'BigBang');

create table artista(
	idArtista		int primary key
,	nome			varchar(100) not null
,	salario			numeric(10,2)
,	dataNascimento             datetime
,	idFuncao		int not null 
,	idGrupo		              int null 
,            FOREIGN KEY(idFuncao) REFERENCES funcao(idFuncao)
,            FOREIGN KEY(idGrupo) REFERENCES grupo(idGrupo)
);

set dateformat dmy;

insert into artista(idArtista, nome, salario, dataNascimento, idFuncao, idGrupo)
values (1, 'Jungkook', 130000, '01/09/1997', 3, 1)
,	   (2, 'D.O', 200000, '12/01/1993', 3, 2)	
,	   (3, 'Taeyang', 100000, '18/05/1988', 5, 3)	
,	   (4, 'V', 130000, '30/12/1995', 3, 1)	
,	   (5, 'Henry Lau', null, '11/10/1989', 4, null);
