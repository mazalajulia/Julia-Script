---Qual o custo de um sacolé gourmet da loja Kaibem?

select
	f.descricao_prato as "nome do prato",
	f.pagamento as preco,
	l.nome nome_loja
from
	funcionario f
join loja l on
	f.loja_id = l.loja_id
where
	l.nome like '%kaibem%'
	and f.descricao_prato like '%sacolé gourmet%';