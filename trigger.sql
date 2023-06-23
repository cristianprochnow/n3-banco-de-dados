-- comissão 
create trigger add_valor_comissao
after insert on venda
for each row 
begin
 insert into comissao set
     valor_comissao = valor_comissao + new.valor_estipulado where cliente = new.cliente;
