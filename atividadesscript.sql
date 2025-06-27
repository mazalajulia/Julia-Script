---1 quantos filmes há em português?
select
	count(*)
from
	film f
inner join "language" l 
on
	l.language_id = f.language_id
where
	l."name" = 'Português';

---2 quantos clientes alugaram o filme de id = 7?
select
	count(*)
from
	rental r
inner join customer c
on
	r.customer_id = c.customer_id
inner join inventory i
on
	r.inventory_id = i.inventory_id
inner join film f
on
	i.film_id = f.film_id
where
	f.film_id = 7;

---3 quantos aluguéis foram feitos no total?
select
	count(*)
from
	rental;

---4 qual foi o custo do filme de id = 600?
select
	replacement_cost as "custo de reposição"
from
	film f
where
	film_id = 600;

---5 qual funcionário alugou mais filmes?
select
	s.first_name,
	s.last_name
from
	staff s
inner join rental r on
	s.staff_id = r.staff_id
group by
	s.first_name,
	s.last_name
limit 1;
.

---6 quantos funcionários tem em cada loja?
select store_id, count(*) from staff
group by store_id;

---7 liste as seguintes colunas: título do filme,idioma, custo, data do último alguel,nome do cliente do último aluguel, loja do aluguel e preço do alguel. 


---8 Quantos atores que participaram do filme de id=1 começam com a letra "p"?

---9 qual a loja possui mais inventários?
