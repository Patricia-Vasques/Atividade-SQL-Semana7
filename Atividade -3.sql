create table Usuario(
	id_usuario SERIAL primary key,
	nome VARCHAR (80),
	login VARCHAR (50),
	senha VARCHAR (20),
	email VARCHAR (50),
	data_nasc DATE,
	CPF VARCHAR(20),
	rg VARCHAR(20)
	);

create table Jogo(
	id_jogo SERIAL primary key,
	nome VARCHAR (50),
	data_lancamento DATE,
	id_genero INT,
	
	foreign key (id_genero) references Genero(id_genero)
);

create table Plataforma (
	id_plataforma SERIAL primary key,
	nome VARCHAR (50)
);

create table Genero (
	id_genero SERIAL primary key,
	genero VARCHAR (50)
);

create table jogo_plataforma (
 id_jogo INT,
 id_plataforma INT,
 
 foreign key (id_jogo) references Jogo(id_jogo),
 foreign key (id_plataforma) references Plataforma(id_plataforma)
);

create table Foto (
	id_foto SERIAL primary key,
	id_jogo INT,
	url VARCHAR (50),
	foreign key (id_jogo) references Jogo(id_jogo)
);

create table Video(
	id_video SERIAL primary key,
	id_jogo INT,
	url VARCHAR (200),
	foreign key (id_jogo) references Jogo(id_jogo)
);

insert into Usuario(nome, login, senha, email,
	data_nasc, CPF, rg) values ('Derpson da Silva','derpinho','derpinho91', 'derpinho91@hotmail.com',
	'01/01/1991', '123.123.123-12', '4.123.123');


--Inserir o genero do Jogo
insert into Genero(genero) values ('Simulação da Vida Real');

-- Inserir o jogo "The Sims 4 Base" na tabela de jogos
insert into Jogo (nome, data_lancamento, id_genero)
values ('The Sims 4 Base', CURRENT_DATE, 1);


-- Inserir as associações entre o jogo e as plataformas
insert into Plataforma (nome)
values ('Playstation 4'), ('Playstation 5'), ('Desktop');