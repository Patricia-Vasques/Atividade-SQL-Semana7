create table Cidade(
	id_cidade SERIAL primary key,
	nome_cidade varchar (50),
	id_estado int,
	capital boolean,
	qtd_populacao int,
	
	foreign key (id_estado) references Estado(id_estado)
);

create table Estado(
	id_estado SERIAL primary key,
	id_pais int,
	nome_estado varchar (50),
	
	foreign key (id_pais) references Pais(id_pais)
);

create table Pais(
	id_pais SERIAL primary key,
	nome_pais varchar (50),
	continente varchar (80)
);


/**
 * O operar LIKE usamos para comparar string em SQL e
 * o % é usado para representar  qualquer número de caracteres.
 */

/**Crie um script em SQL, informando nome do país, nome do estado e nome da cidade, de todas as capitais que 
 * possuam população acima de 500 mil habitantes, cujos estados tenham nome de santo (ou seja, iniciem com São, Santo, San ou Saint)
 * em países da América (América do Norte, América Central e América do Sul). Os resultados devem ser ordenados
 *  por nome do país, nome do estado e nome da cidade.
 */ 
 
select Pais.nome_pais as "Nome do pais", Estado.nome_estado as "Nome do estado"
from Pais
join Estado on Pais.id_pais = Estado.id_pais 
join Cidade on Estado.id_estado = Cidade.id_estado 
where Cidade.capital = true  and Cidade.qtd_populacao > 500000
and (Estado.nome_estado like 'São%'
or Estado.nome_estado like 'Santo%'
or Estado.nome_estado like 'San%'
or Estado.nome_estado like 'Saint%')
and Pais.continente in ('América do Norte', 'América Central', 'América do Sul')
order by Pais.nome_pais, Estado.nome_estado, Cidade.nome_cidade;