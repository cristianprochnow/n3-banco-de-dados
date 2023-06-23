delimiter //

create trigger add_valor_comissao
after insert on venda
for each row 
begin
 update comissao set
     valor_comissao = valor_comissao + new.valor_estipulado where cliente = new.cliente;
end; //

delimiter ;
