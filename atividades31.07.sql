UPDATE funcionario
SET cargo_id = 5
WHERE id = 2;

update agenda 
set data_checkout = '2025-05-05'
where hospede_id = 2;

select * from agenda;

select id from hospede
where nome = 'Gabriel';

DELETE FROM endereco
WHERE logradouro LIKE 'A%';

drop table agenda;

ALTER TABLE hospede
ALTER COLUMN nome SET NOT NULL,
ALTER COLUMN cpf SET NOT NULL,
ALTER COLUMN endereco_id SET NOT NULL;

alter table cargo 
alter column nome set not null;

alter table funcionario 
alter column nome set not null,
alter column cpf set not null,
alter column cargo_id set not null;

alter table endereco 
alter column logradouro set not null,
alter column localidade set not null,
alter column cep set not null,
alter column numero set not null,
alter column bairro set not null,
alter column uf set not null;

alter table agenda
alter column data_checkin set not null,
alter column data_checkout set not null,
alter column hospede_id set not null,
alter column funcionario_id set not null;

DELETE FROM hospede
WHERE cpf = '12345678911';

alter table funcionario 
add constraint funcionario_id unique (cpf);

alter table hospede 
add constraint hospede_id unique (cpf);