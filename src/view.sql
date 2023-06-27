-- criar visão para trazer todas as vendas de um funcionário

create view vendas_funcionario as
select f.nome as nome_func, v.id, v.data, v.valor_estipulado from venda v 
inner join transacao t on t.id = v.transacao
inner join funcionario f on t.id = f.transacao;

-- criar visão para trazer todas as vendas de um cliente (compra no caso)
create view vendas_cliente as
select c.nome as nome_func, c.cpf as cpf, v.id, v.data, v.valor_estipulado from venda v 
inner join cliente c on v.cliente = c.id;

-- criar visão para trazer todas as locacoes de um cliente (aluguel no caso)
create view locacao_cliente as
select c.nome as nome_func, c.cpf as cpf, l.num_contrato, i.logradouro from locacao l 
inner join cliente c on l.cliente = c.id
inner join imovel i on l.imovel = i.id;

create view salario_total as
select sum(salario_base) as soma_salarios  from cargo c;
