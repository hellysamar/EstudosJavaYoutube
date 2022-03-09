create database dbagenda;
show databases;
use dbagenda;
create table contatos(
	idcon int primary key auto_increment,
    nome varchar(50) not null,
    fone varchar(15) not null,
    email varchar(50)
);
show tables;
describe contatos;

/*CRUD CREATE*/
insert into contatos (nome, fone, email) values ('Helly', '99825-5241', 'helly@mail.com');
insert into contatos (nome, fone, email) values ('Terezinha', '99965-8547', 'tera@mail.com.br');

/*CRUD READ*/
select * from contatos;
select * from contatos order by nome;
select * from contatos where idcon = 4;

/*CRUD UPDATE*/
update contatos set nome='Elizamar' where idcon = 4;
update contatos set nome='Terezinha',fone='99999-8888', email='tera@mail.com.br' where idcon = 4;
/*CRUD DELETE*/