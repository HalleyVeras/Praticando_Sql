CREATE DATABASE Exercicio_aula_03 ;

create table marinheiro(
id_marinheiro integer primary key,
nome_marinheiro varchar(45) not null ,
telefone varchar (20), 
idade_marinheiro integer,
avaliacao varchar(45) not null );

create table reservas(
datareserva date,
marinheiro_id integer,
barcos_id integer,
foreign key (marinheiro_id) references marinheiro(id_marinheiro),
foreign key (barcos_id) references barcos(id_barcos) );

create table barcos(
id_barcos integer primary key,
quantidade_pessoas integer, 
nome_barcos varchar(45) not null,
cor_barcos varchar (45)not null );

alter table barcos
ADD quantidade_passageiros integer;


INSERT INTO marinheiro values (29,'Brutus', 'ótimo', 33, '992209093');    
INSERT INTO marinheiro values (31,'Lubber', 'bom', 55, '981222290');      
INSERT INTO marinheiro values (32,'Andy', 'bom', 25, '988667373');      
INSERT INTO marinheiro values (58,'Rusty', 'ótimo', 35, '991090202');      
INSERT INTO marinheiro values (64,'Horatio', 'ótimo', 35, '981001023');     
INSERT INTO marinheiro values (71,'Zorba', 'ótimo', 16, '999215490');     
INSERT INTO marinheiro values (74,'Horatio', 'bom', 35, '991092234');     
INSERT INTO marinheiro values (85,'Art', 'ótimo', 25, '988664737');      
INSERT INTO marinheiro values (95,'Bob', 'ótimo', 63, '982334432');   

INSERT INTO reservas (marinheiro_id,barcos_id,datareserva)
values (74, 103, '1998-06-09');

update marinheiro set nome_marinheiro = 'Fred' where id_marinheiro = 71;

update marinheiro set avaliacao = 'médio' where nome_marinheiro = 'Bob';

update barcos set cor_barcos ='Amarelo' where nome_barcos= 'Marine';

