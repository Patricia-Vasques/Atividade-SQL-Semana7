--Atividade 3

CREATE TABLE Ator (
	id_ator SERIAL PRIMARY KEY,
	nome VARCHAR (80),
	dt_nascimento DATE,
	altura INT,
	peso INT
);

CREATE TABLE Filme (
	id_filme SERIAL PRIMARY KEY,
	nome VARCHAR (50),
	tempo_minutos INT
);

CREATE TABLE Genero(
	id_genero SERIAL PRIMARY KEY,
	nome VARCHAR (30)
);

CREATE TABLE Genero_Filme(
	id_Genero_Filme SERIAL PRIMARY KEY,
	id_filme INT,
	id_genero INT,
	
	FOREIGN KEY (id_filme) references Filme(id_filme),
	FOREIGN KEY (id_genero) REFERENCES Genero(id_genero)
);

select nome, tempo_minutos from Filme 
where Filme.nome like '%Ação'
order by Filme.tempo_minutos;