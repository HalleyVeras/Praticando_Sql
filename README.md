<div align="center">
   <a href="https://www.cesar.org.br" target="_blank" rel="noreferrer">
      <img  alt="Cesar" height="300px" style="padding-right:10px;" src="https://www.cesar.org.br/image/layout_set_logo?img_id=1086110&t=1683038460804" />
  </a>
</div>

<div align="center">
   <a href="https://www.mysql.com" target="_blank" rel="noreferrer">
      <img  alt="MySql" height="300px" style="padding-right:10px;" src="https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/mysql-icon.png" />
  </a>
</div>


### Treinando SQL.

![imagem-2023-08-17-150329038.png](https://i.postimg.cc/QVGCQbP1/imagem-2023-08-17-150329038.png)



- - **1.De acordo com o modelo lógico acima, crie o modelo físico no MySQL.**
- - a. crie o database.
- - b. crie as estruturas das tabelas e as relacione.
- - **2. Faça as seguintes alterações na estrutura do banco:**
- - a. adicione um campo telefone na tabela marinheiro, do tipo varchar(20).
- - b. adicione um campo quantidade_passageiros na tabela barco, do tipo
- - int.
- **3. Com o banco criado, faça o povoamento das tabelas utilizando insert com os seguintes valores:**

**Barco:**

	id: 101; nome: Interlake; cor: azul, qtde_passageiros: 5
	id: 102; nome: Interlake; cor:vermelho, qtde_passageiros: 10
	id: 103; nome: Clipper; cor: verde, qtde_passageiros: 13
	id: 104; nome: Marine; cor: vermelho, qtde_passageiros: 4

**Marinheiro:**

	id: 22; nome: Dustin; avaliação: ótimo; idade: 45, telefone: 994489221
	id: 29; nome: Brutus; avaliação: ótimo; idade: 33, telefone: 992209093
	id: 31; nome: Lubber; avaliação: bom; idade: 55, telefone: 981222290
	id: 32; nome: Andy; avaliação: bom; idade: 25, telefone: 988667373
	id: 58; nome: Rusty; avaliação: ótimo; idade:35, telefone: 991090202
	id: 64; nome: Horatio; avaliação: ótimo; idade: 35, telefone: 981001023
	id: 71; nome: Zorba; avaliação: ótimo; idade: 16, telefone: 999215490
	id: 74; nome: Horatio; avaliação: bom; idade: 35, telefone: 991092234
	id: 85; nome: Art; avaliação: ótimo; idade: 25, telefone: 988664737
	id: 95; nome: Bob; avaliação: ótimo; idade: 63, telefone: 982334432

**Reservas:**

	idMarinheiro: 22; idBarco: 101; data: 1998-10-09
	idMarinheiro: 22; idBarco: 102; data: 1998-10-10
	idMarinheiro: 22; idBarco: 103; data: 1998-08-10
	idMarinheiro: 22; idBarco: 104; data: 1998-07-10
	idMarinheiro: 31; idBarco: 102; data: 1998-10-11
	idMarinheiro: 31; idBarco: 103; data: 1998-11-06
	idMarinheiro: 31; idBarco: 104; data: 1998-11-12
	idMarinheiro: 64; idBarco: 101; data: 1998-05-09
	idMarinheiro: 64; idBarco: 102; data: 1998-05-09
	idMarinheiro: 74; idBarco: 103; data: 1998-06-09


**4. Faça as seguintes alterações alterações nos dados:**
- i. altere o nome do marinheiro de id 71 para Fred .
- ii. altere a avaliação do marinheiro com nome Bob para médio.
- iii. altere a cor do barco de nome Marine para amarelo.

# Criando o Banco / Tabelas

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

### Questão 2 - Alterar Tabela
**A.**

	alter table marinheiro
		ADD telefone varchar(20);

**B.**

	alter table barcos
		ADD quantidade_passageiros integer;

### Questão 3- Inserindo Dados no banco

###Inserindo em barcos

	INSERT INTO barcos values (101,'Interlake', 'azul' , 5);    
	INSERT INTO barcos values (102,'Interlake', 'vermelho', 10);      
	INSERT INTO barcos values (103,'Clipper', 'verde', 13);      
	INSERT INTO barcos values (104,'Marine', 'vermelho', 4 );      


###Inserindo em marinheiro

	INSERT INTO marinheiro values (29,'Brutus', 'ótimo', 33, '992209093');    
	INSERT INTO marinheiro values (31,'Lubber', 'bom', 55, '981222290');      
	INSERT INTO marinheiro values (32,'Andy', 'bom', 25, '988667373');      
	INSERT INTO marinheiro values (58,'Rusty', 'ótimo', 35, '991090202');      
	INSERT INTO marinheiro values (64,'Horatio', 'ótimo', 35, '981001023');     
	INSERT INTO marinheiro values (71,'Zorba', 'ótimo', 16, '999215490');     
	INSERT INTO marinheiro values (74,'Horatio', 'bom', 35, '991092234');     
	INSERT INTO marinheiro values (85,'Art', 'ótimo', 25, '988664737');      
	INSERT INTO marinheiro values (95,'Bob', 'ótimo', 63, '982334432');   

###Inserindo em Reservas

	INSERT INTO Reservas values (22,101, '1998-10-09');    
	INSERT INTO Reservas values (22,102, '1998-10-10');       
	INSERT INTO Reservas values (22,103, '1998-08-10');       
	INSERT INTO Reservas values (22,104, '1998-07-10'); 
	INSERT INTO Reservas values (31,102, '1998-10-11');       
	INSERT INTO Reservas values (31,103, '1998-11-06');      
	INSERT INTO Reservas values (31,104, '1998-11-12');  
	INSERT INTO Reservas values (64,101, '1998-05-09');       
	INSERT INTO Reservas values (64,102, '1998-05-09');      
	INSERT INTO Reservas values (74,103, '1998-06-09');  

### Questão 4- Alterando Dados

#### I- Altere o nome do marinheiro de id 71 para Fred .

	Update marinheiro set nome_marinheiro = 'Fred'
	where id_marinheiro = 71;

#### II- Altere a avaliação do marinheiro com nome Bob para médio.

	Update marinheiro set avaliacao = 'médio'
	where nome_marinheiro = 'Bob';

#### III- Altere a cor do barco de nome Marine para amarelo.

	Update barcos set cor_barcos ='Amarelo'
	where nome_barcos= 'Marine';
