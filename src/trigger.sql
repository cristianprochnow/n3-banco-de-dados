delimiter //

create trigger add_valor_comissao
after insert on venda
for each row 
begin
 update comissao set
     valor_comissao = valor_comissao + new.valor_estipulado where cliente = new.cliente;
end; //

delimiter ;




delimiter //

create trigger baixa_imovel_venda
after update on venda
for each row 
begin
 update imovel
 set status = 'V'
 where imovel.id = new.imovel
    and new.transacao is not null;
end; //

delimiter ;




delimiter //

create trigger baixa_imovel_locacao
after update on locacao
for each row 
begin
 update imovel
 set status = 'A'
 where imovel.id = new.imovel
    and new.transacao is not null;
end; //

delimiter ;


/*
delimiter //

create trigger define_imovel_disponivel
after insert on imovel
for each row 
begin
 update imovel
 set status = 'D'
 where imovel.id = new.id;
end; //

delimiter ;
*/