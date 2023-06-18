create table Usuario(
	id_usuario SERIAL primary key,
	nome VARCHAR (80),
	login VARCHAR (50),
	senha VARCHAR (20),
	email VARCHAR (50),
	data_nasc DATE,
	CPF VARCHAR (11),
	rg VARCHAR(10)
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

create table Vido(
	id_video SERIAL primary key,
	id_jogo INT,
	url VARCHAR (200),
	foreign key (id_jogo) references Jogo(id_jogo)
);