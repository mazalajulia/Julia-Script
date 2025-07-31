create database escritorio;

create table funcionario(
id int,
nome varchar (40),
data_nascimento char (10),
cpf char (11),
endereco_id char (10),
cargo_id int
);

create table endereco(
id int,
logradouro varchar (40),
localidade varchar (40),
uf char (2),
cep varchar (10),
bairro varchar (30)
);

create table cargo(
id int,
nome varchar (40),
descricao text
);

ALTER TABLE funcionario
add constraint pk_endereco PRIMARY KEY (id);

ALTER TABLE endereco
add constraint pk_cargo PRIMARY KEY (id);

ALTER TABLE cargo
add constraint pK_funcionario PRIMARY KEY (id);

ALTER TABLE funcionario
ADD CONSTRAINT FK_funcionario_endereco
FOREIGN KEY (endereco_id) REFERENCES endereco(id);

ALTER TABLE funcionario
ADD CONSTRAINT FK_funcionario_cargo
FOREIGN KEY (cargo_id) REFERENCES cargo(id);

INSERT INTO endereco (id, logradouro, localidade, uf, cep, bairro) VALUES 
(1, 'Rua das Flores', 'São Paulo', 'SP', '01001-000', 'Centro'), 
(2, 'Avenida Brasil', 'Rio de Janeiro', 'RJ', '20040-000', 'Copacabana'), 
(3, 'Rua A', 'Belo Horizonte', 'MG', '30140-010', 'Savassi'), 
(4, 'Travessa B', 'Curitiba', 'PR', '80010-000', 'Batel'), 
(5, 'Alameda X', 'Porto Alegre', 'RS', '90010-001', 'Moinhos');

insert into cargo (id, nome, descricao) VALUES 
(1, 'Analista', 'Responsável por análises técnicas'), 
(2, 'Gerente', 'Coordena equipes e projetos'), 
(3, 'Assistente', 'Auxilia nas tarefas diárias'), 
(4, 'Diretor', 'Responsável por decisões estratégicas'), 
(5, 'Estagiário', 'Atuação em fase de aprendizado');

INSERT INTO funcionario (id, nome, data_nascimento, cpf, endereco_id, cargo_id) VALUES 
(1, 'Ana Clara', '2008-12-28', '123.456.789-00', 1, 2), 
(2, 'Maria Alice', '2008-07-26', '234.567.890-11', 2, 1), 
(3, 'Gabrielle', '2008-09-15', '345.678.901-22', 3, 3), 
(4, 'Julia Mazala', '2008-10-28', '456.789.012-33', 4, 4), 
(5, 'Giovana', '2008-08-05', '567.890.123-44', 5, 5);