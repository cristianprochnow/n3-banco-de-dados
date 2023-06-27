delimiter //
create procedure inserir_forma_pgto(
    in p_id int,
    in p_tipo varchar(10),
    in p_descricao varchar(30)
)
begin
    insert into forma_pgto (id, tipo, descricao)
    values (p_id, p_tipo, p_descricao);
end //
delimiter ;




delimiter //
create procedure inserir_transacao(
    in p_id int,
    in p_valor decimal(18, 2),
    in p_porcentagem float,
    in p_funcionario int
)
begin
    insert into transacao (id, valor, porcentagem, funcionario)
    values (p_id, p_valor, p_porcentagem, p_funcionario);
end //
delimiter ;




delimiter //
create procedure inserir_cargo(
    in p_id int,
    in p_descricao varchar(30),
    in p_salario_base decimal(18,2),
    in p_comissao decimal(18,2)
)
begin
    insert into cargo (id, descricao, salario_base, comissao)
    values (p_id, p_descricao, p_salario_base, p_comissao);
end//
delimiter ;




delimiter //
create procedure inserir_estado(
    in p_id int,
    in p_uf char(2),
    in p_nome varchar(20)
)
begin
    insert into estado (id, uf, nome)
    values (p_id, p_uf, p_nome);
end//
delimiter ;




delimiter //
create procedure inserir_cidade(
    in p_id int,
    in p_nome varchar(25),
    in p_estado int
)
begin
    insert into cidade (id, nome, estado)
    values (p_id, p_nome, p_estado);
end//
delimiter ;




delimiter //
create procedure inserir_bairro(
    in p_id int,
    in p_descricao varchar(25),
    in p_cidade int
)
begin
    insert into bairro (id, descricao, cidade)
    values (p_id, p_descricao, p_cidade);
end//
delimiter ;




delimiter //
create procedure inserir_cep(
    in p_id int,
    in p_num_cep varchar(9),
    in p_bairro int
)
begin
    insert into cep (id, num_cep, bairro)
    values (p_id, p_num_cep, p_bairro);
end//
delimiter ;




delimiter //
create procedure inserir_venda(
    in p_id int,
    in p_data date,
    in p_valor_estipulado decimal(18, 2),
    in p_transacao int,
    in p_cliente int,
    in p_imovel int
)
begin
    insert into venda (id, data, valor_estipulado, transacao, cliente, imovel)
    values (p_id, p_data, p_valor_estipulado, p_transacao, p_cliente, p_imovel);
end//
delimiter ;




delimiter //
create procedure inserir_cliente(
    in p_id int,
    in p_nome varchar(30),
    in p_telefone varchar(15),
    in p_cpf varchar(11),
    in p_logradouro varchar(50),
    in p_cep int
)
begin
    insert into cliente (id, nome, telefone, cpf, logradouro, cep)
    values (p_id, p_nome, p_telefone, p_cpf, p_logradouro, p_cep);
end//
delimiter ;




delimiter //
create procedure inserir_imobiliaria(
    in p_id int,
    in p_nome varchar(100),
    in p_logradouro varchar(50),
    in p_complemento varchar(50),
    in p_numero int(6),
    in p_telefone varchar(15),
    in p_cep int
)
begin
    insert into imobiliaria (id, nome, logradouro, complemento, numero, telefone, cep)
    values (p_id, p_nome, p_logradouro, p_complemento, p_numero, p_telefone, p_cep);
end//
delimiter ;




delimiter //
create procedure inserir_imovel(
    in p_id int,
    in p_logradouro varchar(50),
    in p_complemento varchar(50),
    in p_numero int(6),
    in p_status varchar(30),
    in p_cep int,
    in p_imobiliaria int
)
begin
    insert into imovel (id, logradouro, complemento, numero, status, cep, imobiliaria)
    values (p_id, p_logradouro, p_complemento, p_numero, p_status, p_cep, p_imobiliaria);
end//
delimiter ;




delimiter //
create procedure inserir_anexo_imovel(
    in p_id int,
    in p_arquivo blob,
    in p_data_criacao date,
    in p_imovel int
)
begin
    insert into anexo_imovel (id, arquivo, data_criacao, imovel)
    values (p_id, p_arquivo, p_data_criacao, p_imovel);
end//
delimiter ;




delimiter //
create procedure inserir_casa(
    in p_id int,
    in p_area double,
    in p_qtd_quartos int,
    in p_qtd_vaga_garagem int,
    in p_qtd_suites int,
    in p_qtd_sala_estar int,
    in p_qtd_sala_jantar int,
    in p_qtd_armario int,
    in p_descricao varchar(30)
)
begin
    insert into casa (id, area, qtd_quartos, qtd_vaga_garagem, qtd_suites, qtd_sala_estar, qtd_sala_jantar, qtd_armario, descricao)
    values (p_id, p_area, p_qtd_quartos, p_qtd_vaga_garagem, p_qtd_suites, p_qtd_sala_estar, p_qtd_sala_jantar, p_qtd_armario, p_descricao);
end//
delimiter ;




delimiter //
create procedure inserir_apartamento(
    in p_id int,
    in p_area double,
    in p_qtd_quarto int,
    in p_qtd_vaga_garagem int,
    in p_qtd_suites int,
    in p_qtd_sala_estar int,
    in p_qtd_sala_jantar int,
    in p_qtd_armario int,
    in p_descricao varchar(30),
    in p_valor_condominio decimal(18,2),
    in p_portaria varchar(10),
    in p_andar varchar(10)
)
begin
    insert into apartamento (
        id,
        area,
        qtd_quarto,
        qtd_vaga_garagem,
        qtd_suites,
        qtd_sala_estar,
        qtd_sala_jantar,
        qtd_armario,
        descricao,
        valor_condominio,
        portaria,
        andar
    )
    values (
        p_id,
        p_area,
        p_qtd_quarto,
        p_qtd_vaga_garagem,
        p_qtd_suites,
        p_qtd_sala_estar,
        p_qtd_sala_jantar,
        p_qtd_armario,
        p_descricao,
        p_valor_condominio,
        p_portaria,
        p_andar
    );
end//
delimiter ;




delimiter //
create procedure inserir_sala_comercial(
    in p_id int,
    in p_area double,
    in p_qtd_banheiro int,
    in p_qtd_comodos int
)
begin
    insert into sala_comercial (
        id,
        area,
        qtd_banheiro,
        qtd_comodos
    )
    values (
        p_id,
        p_area,
        p_qtd_banheiro,
        p_qtd_comodos
    );
end//
delimiter ;




delimiter //
create procedure inserir_terreno(
    in p_id int,
    in p_area double,
    in p_comprimento double,
    in p_largura double,
    in p_relevo varchar(15)
)
begin
    insert into terreno ( id, area, comprimento, largura, relevo )
    values ( p_id, p_area, p_comprimento, p_largura, p_relevo );
end//
delimiter ;




delimiter //
create procedure inserir_tabela_preco(
    in p_id int,
    in p_forma_pgto int,
    in p_valor decimal(18,2)
)
begin
    insert into tabela_preco (id, forma_pgto, valor)
    values (p_id, p_forma_pgto, p_valor);
end //
delimiter ;




delimiter //
create procedure inserir_locacao(
    in p_id int,
    in p_num_contrato varchar(20),
    in p_data_inicio date,
    in p_data_fim date,
    in p_transacao int,
    in p_cliente int,
    in p_imovel int,
    in p_tabela_preco int
)
begin
    insert into locacao (id, num_contrato, data_inicio, data_fim, transacao, cliente, imovel, tabela_preco)
    values (p_id, p_num_contrato, p_data_inicio, p_data_fim, p_transacao, p_cliente, p_imovel, p_tabela_preco);
end //
delimiter ;




delimiter //
create procedure inserir_imoveisTable(
    in p_id int,
    in p_preco int,
    in p_imovel int
)
begin
    insert into imoveisTable (id, preco, imovel)
    values (p_id, p_preco, p_imovel);
end //
delimiter ;




delimiter //
create procedure inserir_funcionario(
    in p_id int,
    in p_nome varchar(30),
    in p_telefone varchar(15),
    in p_cpf varchar(11),
    in p_logradouro varchar(50),
    in p_complemento varchar(50),
    in p_numero int(6),
    in p_salario decimal(18, 2),
    in p_data_ingresso date,
    in p_cargo int,
    in p_cep int,
    in p_imobiliaria int
)
begin
    insert into funcionario (id, nome, telefone, cpf, logradouro, complemento, numero, salario, data_ingresso, cargo, cep, imobiliaria)
    values (
        p_id,
        p_nome,
        p_telefone,
        p_cpf,
        p_logradouro,
        p_complemento,
        p_numero,
        p_salario,
        p_data_ingresso,
        p_cargo,
        p_cep,
        p_imobiliaria
    );
end //
delimiter ;




delimiter //
create procedure inserir_comissao(
    in p_id int,
    in p_valor_comissao decimal(18, 2),
    in p_cliente int
)
begin
    insert into comissao (id, valor_comissao, cliente)
    values (p_id, p_valor_comissao, p_cliente);
end //
delimiter ;