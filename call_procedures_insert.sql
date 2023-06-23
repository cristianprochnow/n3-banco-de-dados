call inserir_transacao(1, 100.50, 0.05);
call inserir_transacao(2, 200.75, 0.08);
call inserir_transacao(3, 50.20, 0.03);
call inserir_transacao(4, 300.90, 0.10);
call inserir_transacao(5, 150.60, 0.06);




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




call inserir_estado(1, 'PR', 'Paraná');
call inserir_estado(2, 'RS', 'Rio Grande do Sul');
call inserir_estado(3, 'SC', 'Santa Catarina');
call inserir_estado(4, 'SP', 'São Paulo');
call inserir_estado(5, 'AM', 'Amazonas');
call inserir_estado(6, 'AC', 'Acre');
call inserir_estado(7, 'RJ', 'Rio de Janeiro');




call inserir_cidade(1, 'Curitiba', 1);
call inserir_cidade(2, 'Porto Alegre', 2);
call inserir_cidade(3, 'Florianópolis', 3);
call inserir_cidade(4, 'Joinville', 3);
call inserir_cidade(5, 'Araquari', 3);
call inserir_cidade(6, 'São José dos Pinhais', 1);




call inserir_bairro(1, 'Ahú', 1);
call inserir_bairro(2, 'Felicidade', 2);
call inserir_bairro(3, 'Ingleses', 3);
call inserir_bairro(4, 'Paranaguamirim', 4);
call inserir_bairro(5, 'Costa e Silva', 4);
call inserir_bairro(6, 'Centro', 4);




call inserir_cep(1, '80530-230', 1);
call inserir_cep(2, '90619-900', 2);
call inserir_cep(3, '88058-221', 3);
call inserir_cep(4, '89235-883', 4);
call inserir_cep(5, '89220-020', 5);




call inserir_cliente(1, 'Lucas', '9999-1234', '12345678901', 'Rua Plameiras', 1);
call inserir_cliente(2, 'Cristian', '8888-5678', '98765432109', 'Avenida JK', 2);
call inserir_cliente(3, 'Marlo Gay', '7777-9876', '24242424242', 'Rua Bambi', 3);
call inserir_cliente(4, 'Admilson Freitas', '7712-9876', '24244123242', 'Rua Bambi', 3);
call inserir_cliente(5, 'Carlos Alberto', '7777-9356', '2424123242', 'Rua Bamby', 3);




call inserir_venda(1, '2023-01-01', 10450.00, 1);
call inserir_venda(2, '2023-02-01', 15440.50, 2);
call inserir_venda(3, '2023-03-01', 25500.25, 3);




call inserir_imobiliaria(1, 'Imobiliária Sonho do Ceu', 'Rua Paraíso', 'Sala 1000', 123, '9999-1234', 1);




call inserir_imovel(1, 'Rua dos Pinheiros', 'Apartamento 101', 123, 'Disponível', 1, 1);
call inserir_imovel(2, 'Avenida Paulista', 'Casa dos Sonhos', 456, 'Alugado', 2, 1);
call inserir_imovel(3, 'Rua Oscar Freire', 'Loja Comercial', 789, 'Disponível', 3, 1);




call inserir_anexo_imovel(1, 'C:\Users\g_hen\Desktop\Captura de tela 2023-05-08 202113.png', '2023-01-01', 1);
call inserir_anexo_imovel(2, 'C:\Users\g_hen\Desktop\Captura de tela 2023-05-08 202113.png', '2023-02-01', 2);
call inserir_anexo_imovel(3, 'C:\Users\g_hen\Desktop\Captura de tela 2023-05-08 202113.png', '2023-03-01', 3);




call inserir_casa(1, 120.5, 3, 2, 2, 1, 1, 4, 'Casa aconchegante');
call inserir_casa(2, 150.0, 4, 3, 3, 2, 1, 5, 'Ampla casa com jardim');
call inserir_casa(3, 100.0, 2, 1, 1, 1, 1, 2, 'Casa compacta e funcional');




call inserir_apartamento(1, 80.5, 2, 1, 1, 1, 1, 2, 'Apartamento aconchegante', 500.00, '24 horas', '3º andar');
call inserir_apartamento(2, 100.0, 3, 2, 2, 1, 1, 3, 'Apartamento espaçoso', 800.00, '16 horas', '10º andar');
call inserir_apartamento(3, 60.0, 1, 1, 1, 1, 1, 1, 'Apartamento compacto', 400.00, '8 horas', '5º andar');




call inserir_sala_comercial(1, 50.0, 1, 2);
call inserir_sala_comercial(2, 80.0, 2, 3);
call inserir_sala_comercial(3, 70.0, 1, 4);




call inserir_terreno(1, 500.0, 30.0, 20.0, 'Plano');
call inserir_terreno(2, 800.0, 40.0, 20.0, 'Aclive');
call inserir_terreno(3, 1000.0, 50.0, 20.0, 'Declive');



call inserir_forma_pgto(1, 'PARCELADO', 'Cartão de Crédito');
call inserir_forma_pgto(2, 'VISTA', 'Cartão de Débito');
call inserir_forma_pgto(3, 'VISTA', 'Dinheiro');




call inserir_tabela_preco(1, 1, 1000.00);
call inserir_tabela_preco(2, 2, 1500.00);
call inserir_tabela_preco(3, 3, 2000.00);




call inserir_locacao(1, 'cont1', '2023-01-01', '2023-12-31', 1, 1, 1, 1);
call inserir_locacao(2, 'cont2', '2023-02-01', '2023-11-30', 2, 2, 2, 2);
call inserir_locacao(3, 'cont3', '2023-03-01', '2023-10-31', 3, 3, 3, 3);




call inserir_imoveisTable(1, 1, 1);
call inserir_imoveisTable(2, 2, 2);
call inserir_imoveisTable(3, 3, 3);




call inserir_funcionario(1, 'GUSTaVO', '987654321', '12345678901', 'Rua Marova', 'Apto 123', 123, 5000.00, '2022-01-01', 1, 1, 1, 1);
call inserir_funcionario(2, 'RYAN', '999999999', '98765432101', 'Rua Luana', 'Casa 456', 456, 6000.00, '2022-02-01', 2, 2, 2, 1);
call inserir_funcionario(3, 'EDICARSIA', '888888888', '54321098765', 'Rua Cortina', 'Sobrado 789', 789, 7000.00, '2022-03-01', 3, 3, 3, 1);




call inserir_comissao(1, 1235.65, 2);
call inserir_comissao(2, 135.65, 5);
call inserir_comissao(3, 1555.65, 4);