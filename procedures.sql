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

--------------
delimiter //
create procedure inserir_transacao(
    in p_id int,
    in p_valor decimal(18, 2),
    in p_porcentagem float
)
begin
    insert into transacao (id, valor, porcentagem)
    values (p_id, p_valor, p_porcentagem);
end //
delimiter ;

call inserir_transacao(1, 100.50, 0.05);
call inserir_transacao(2, 200.75, 0.08);
call inserir_transacao(3, 50.20, 0.03);
call inserir_transacao(4, 300.90, 0.10);
call inserir_transacao(5, 150.60, 0.06);


--------------
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

call inserir_cargo(1, 'Gerente', 5000.00, 0.1);
call inserir_cargo(2, 'Analista de Vendas', 3500.00, 0.05);
call inserir_cargo(3, 'Assistente Administrativo', 2500.00, 0.02);
call inserir_cargo(4, 'Desenvolvedor Java', 4000.00, 0.08);
call inserir_cargo(5, 'Analista de Marketing', 3500.00, 0.05);
call inserir_cargo(6, 'Auxiliar de Produção', 2000.00, 0.01);
call inserir_cargo(7, 'Coordenador de Projetos', 6000.00, 0.12);
call inserir_cargo(8, 'Analista Financeiro', 3800.00, 0.06);
call inserir_cargo(9, 'Supervisor de Vendas', 4500.00, 0.09);
call inserir_cargo(10, 'Técnico de Suporte', 3000.00, 0.04);



--------------
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

call inserir_estado(1, 'PR', 'Paraná');
call inserir_estado(2, 'RS', 'Rio Grande do Sul');
call inserir_estado(3, 'SC', 'Santa Catarina');


--------------
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

call inserir_cidade(1, 'Curitiba', 1);
call inserir_cidade(2, 'Porto Alegre', 2);
call inserir_cidade(3, 'Florianópolis', 3);

--------------
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

call inserir_bairro(1, 'Ahú', 1);
call inserir_bairro(2, 'Felicidade', 2);
call inserir_bairro(3, 'Ingleses', 3);


--------------
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

call inserir_cep(1, '80530-230', 1);
call inserir_cep(2, '90619-900', 2);
call inserir_cep(3, '88058-221', 3);

--------------
delimiter //
create procedure inserir_venda(
    in p_id int,
    in p_data date,
    in p_valor_estipulado decimal(18, 2),
    in p_transacao int
)
begin
    insert into venda (id, data, valor_estipulado, transacao)
    values (p_id, p_data, p_valor_estipulado, p_transacao);
end//
delimiter ;

call inserir_venda(1, '2023-01-01', 10450.00, 1);
call inserir_venda(2, '2023-02-01', 15440.50, 2);
call inserir_venda(3, '2023-03-01', 25500.25, 3);

--------------
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

call inserir_cliente(1, 'Lucas', '9999-1234', '12345678901', 'Rua Plameiras', 1);
call inserir_cliente(2, 'Cristian', '8888-5678', '98765432109', 'Avenida JK', 2);
call inserir_cliente(3, 'Marlo Gay', '7777-9876', '24242424242', 'Rua Bambi', 3);

--------------
delimiter //
create procedure inserir_imobiliaria(
    in p_id int,
    in p_nome varchar(15),
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

call inserir_imobiliaria(1, 'Imobiliária Sonho do Ceu', 'Rua Paraíso', 'Sala 1000', 123, '9999-1234', 1);


--------------
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

call inserir_imovel(1, 'Rua dos Pinheiros', 'Apartamento 101', 123, 'Disponível', 1, 1);
call inserir_imovel(2, 'Avenida Paulista', 'Casa dos Sonhos', 456, 'Alugado', 2, 1);
call inserir_imovel(3, 'Rua Oscar Freire', 'Loja Comercial', 789, 'Disponível', 3, 1);

--------------
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

call inserir_anexo_imovel(1, 'C:\Users\g_hen\Desktop\Captura de tela 2023-05-08 202113.png', '2023-01-01', 1);
call inserir_anexo_imovel(2, 'C:\Users\g_hen\Desktop\Captura de tela 2023-05-08 202113.png', '2023-02-01', 2);
call inserir_anexo_imovel(3, 'C:\Users\g_hen\Desktop\Captura de tela 2023-05-08 202113.png', '2023-03-01', 3);

--------------
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

call inserir_casa(1, 120.5, 3, 2, 2, 1, 1, 4, 'Casa aconchegante');
call inserir_casa(2, 150.0, 4, 3, 3, 2, 1, 5, 'Ampla casa com jardim');
call inserir_casa(3, 100.0, 2, 1, 1, 1, 1, 2, 'Casa compacta e funcional');

---------------
insert into apartamento (id, area, qtd_quarto, qtd_vaga_garagem, qtd_suites, qtd_sala_estar, qtd_sala_jantar, qtd_armario, descricao, valor_condominio, portaria, andar)
values (1, 80.5, 2, 1, 1, 1, 1, 2, 'Apartamento aconchegante', 500.00, '24 horas', '3º andar');

insert into apartamento (id, area, qtd_quarto, qtd_vaga_garagem, qtd_suites, qtd_sala_estar, qtd_sala_jantar, qtd_armario, descricao, valor_condominio, portaria, andar)
values (2, 100.0, 3, 2, 2, 1, 1, 3, 'Apartamento espaçoso', 800.00, '16 horas', '10º andar');

insert into apartamento (id, area, qtd_quarto, qtd_vaga_garagem, qtd_suites, qtd_sala_estar, qtd_sala_jantar, qtd_armario, descricao, valor_condominio, portaria, andar)
values (3, 60.0, 1, 1, 1, 1, 1, 1, 'Apartamento compacto', 400.00, '8 horas', '5º andar');
----------------

insert into sala_comercial (id, area, qtd_banheiro, qtd_comodos)
values (1, 50.0, 1, 2);

insert into sala_comercial (id, area, qtd_banheiro, qtd_comodos)
values (2, 80.0, 2, 3);

insert into sala_comercial (id, area, qtd_banheiro, qtd_comodos)
values (3, 70.0, 1, 4);

----------------
insert into terreno (id, area, comprimento, largura, relevo)
values (1, 500.0, 30.0, 20.0, 'Plano');

insert into terreno (id, area, comprimento, largura, relevo)
values (2, 800.0, 40.0, 20.0, 'Aclive');

insert into terreno (id, area, comprimento, largura, relevo)
values (3, 1000.0, 50.0, 20.0, 'Declive');

------------------


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

call inserir_tabela_preco(1, 1, 1000.00);
call inserir_tabela_preco(2, 2, 1500.00);
call inserir_tabela_preco(3, 3, 2000.00);

--------------
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

call inserir_locacao(1, 'cont1', '2023-01-01', '2023-12-31', 1, 1, 1, 1);
call inserir_locacao(2, 'cont2', '2023-02-01', '2023-11-30', 2, 2, 2, 2);
call inserir_locacao(3, 'cont3', '2023-03-01', '2023-10-31', 3, 3, 3, 3);

--------------
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

call inserir_imoveisTable(1, 1, 1);
call inserir_imoveisTable(2, 2, 2);
call inserir_imoveisTable(3, 3, 3);

--------------
insert into funcionario (id, nome, telefone, cpf, logradouro, complemento, numero, salario, data_ingresso, cargo, transacao, cep, imobiliaria)
values (1, 'GUSTaVO', '987654321', '12345678901', 'Rua Marova', 'Apto 123', 123, 5000.00, '2022-01-01', 1, 1, 1, 1);

insert into funcionario (id, nome, telefone, cpf, logradouro, complemento, numero, salario, data_ingresso, cargo, transacao, cep, imobiliaria)
values (2, 'RYAN', '999999999', '98765432101', 'Rua Luana', 'Casa 456', 456, 6000.00, '2022-02-01', 2, 2, 2, 1);

insert into funcionario (id, nome, telefone, cpf, logradouro, complemento, numero, salario, data_ingresso, cargo, transacao, cep, imobiliaria)
values (3, 'EDICARSIA', '888888888', '54321098765', 'Rua Cortina', 'Sobrado 789', 789, 7000.00, '2022-03-01', 3, 3, 3, 1);
