create database estacionamento;

create table vaga(
id serial primary key,
numero varchar (30) not null,
);

create table carro(
id serial primary key,
marca varchar (30) not null,
modelo varchar (30) not null,
chassi int (20) not null unique,
vaga_id int,
foreign key (vaga_id) references vaga(vaga_id)
);

create table tempo(
id serial primary key,
data_hora_chegada timestamp,
data_hora_saida timestamp,
carro_id int,
vaga_id int,
foreign key (carro_id) references carro(carro_id),
foreign key (vaga_id) references vaga(vaga_id)
);




