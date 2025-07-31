create database hotel;

create table funcionario(
id serial,
nome varchar (40),
cpf char (11),
endereco_id char (10),
cargo_id int
);

create table cargo(
id serial,
nome varchar (40)
);

create table hospede(
id serial,
nome varchar (40),
cpf char (11),
endereco_id INT
);

create table endereco(
id serial,
logradouro varchar (40),
localidade varchar (40),
cep varchar (10),
numero varchar (10),
bairro varchar (30),
uf char (2)
);

create table agenda(
id serial,
data_checkin date,
data_checkout date,
hospede_id int,
funcionario_id int
);

ALTER TABLE funcionario
add constraint pk_cargo PRIMARY KEY (id);

ALTER TABLE cargo
add constraint pk_hospede PRIMARY KEY (id);

ALTER TABLE hospede
add constraint pK_endereco PRIMARY KEY (id);

ALTER TABLE endereco
add constraint pk_agenda PRIMARY KEY (id);

ALTER TABLE agenda
add constraint pk_funcionario PRIMARY KEY (id);

ALTER TABLE funcionario
ADD CONSTRAINT FK_funcionario_cargo
FOREIGN KEY (cargo_id) REFERENCES cargo(id);

ALTER TABLE funcionario
ADD CONSTRAINT FK_funcionario_endereco
FOREIGN KEY (endereco_id) REFERENCES endereco(id);

ALTER TABLE hospede
ADD CONSTRAINT FK_hospede_endereco
FOREIGN KEY (endereco_id) REFERENCES endereco(id);

ALTER TABLE funcionario
ADD CONSTRAINT FK_funcionario_agenda
FOREIGN KEY (agenda_id) REFERENCES agenda(id);

INSERT INTO funcionario (nome, cpf, endereco_id, cargo_id) VALUES
('Carlos Silva', '12345678900', 1, 1),
('Maria Souza', '23456789011', 2, 2),
('João Pereira', '34567890122', 3, 3),
('Ana Lima', '45678901233', 4, 4),
('Bruno Rocha', '56789012344', 5, 5);

INSERT INTO cargo (nome) VALUES
('Recepcionista'),
('Gerente'),
('Camareira'),
('Segurança'),
('Manutenção');

INSERT INTO hospede (nome, cpf, endereco_id) VALUES
('Felipe Alves', '98765432100', 1),
('Laura Mendes', '87654321099', 2),
('Ricardo Braga', '76543210988', 3),
('Juliana Costa', '65432109877', 4),
('André Santos', '54321098766', 5);

INSERT INTO endereco (logradouro, localidade, cep, numero, bairro, uf) VALUES
('Rua A', 'Cidade X', '12345000', '10', 'Centro', 'SP'),
('Rua B', 'Cidade Y', '23456000', '20', 'Bairro Alto', 'RJ'),
('Av. Central', 'Cidade Z', '34567000', '101', 'Jardim', 'MG'),
('Rua das Flores', 'Cidade W', '45678000', '55', 'Vila Nova', 'RS'),
('Travessa 5', 'Cidade Q', '56789000', '8', 'Industrial', 'BA');

INSERT INTO agenda (data_checkin, data_checkout, hospede_id, funcionario_id) VALUES
('2025-08-01', '2025-08-05', 1, 1),
('2025-08-03', '2025-08-07', 2, 2),
('2025-08-10', '2025-08-15', 3, 3),
('2025-08-12', '2025-08-14', 4, 4),
('2025-08-20', '2025-08-25', 5, 5);






