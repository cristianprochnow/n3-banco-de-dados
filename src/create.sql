create table forma_pgto (
    id int primary key,
    tipo varchar(10),
    descricao varchar(30)
);

create table transacao (
    id int primary key,
    valor decimal(18, 2),
    porcentagem float,
    funcionario int
);

create table cargo (
    id int primary key,
    descricao varchar(30),
    salario_base decimal(18,2),
    comissao decimal(18,2)
);

create table estado (
    id int primary key,
    uf char(2),
    nome varchar(20) 
);

create table cidade (
    id int primary key,
    nome varchar(25),
    estado int
);

create table bairro (
    id int primary key,
    descricao varchar(25),
    cidade int
);

create table cep (
    id int primary key,
    num_cep varchar(9),
    bairro int
);

create table cliente (
    id int primary key,
    nome varchar(30),
    telefone varchar(15),
    cpf varchar(11),
    logradouro varchar(50),
    cep int
);

create table venda (
    id int primary key,
    data date,
    valor_estipulado decimal(18, 2),
    transacao int,
    imovel int,
    cliente int
);

create table imovel (
    id int primary key,
    logradouro varchar(50),
    complemento varchar(50),
    numero int(6),
    status varchar(30),
    cep int,
    imobiliaria int
);

create table anexo_imovel (
    id int primary key,
    arquivo blob,
    data_criacao date,
    imovel int
);

create table casa (
    id int primary key,
    area double,
    qtd_quartos int,
    qtd_vaga_garagem int,
    qtd_suites int,
    qtd_sala_estar int,
    qtd_sala_jantar int,
    qtd_armario int,
    descricao varchar(30)
);

create table apartamento (
    id int primary key,
    area double,
    qtd_quarto int,
    qtd_vaga_garagem int,
    qtd_suites int,
    qtd_sala_estar int,
    qtd_sala_jantar int,
    qtd_armario int,
    descricao varchar(30),
    valor_condominio decimal(18,2),
    portaria varchar(10),
    andar varchar(10)
);

create table sala_comercial (
    id int primary key,
    area double,
    qtd_banheiro int,
    qtd_comodos int
);

create table terreno (
    id int primary key,
    area double,
    comprimento double,
    largura double,
    relevo varchar(15)
);

create table imobiliaria (
    id int primary key,
    nome varchar(100),
    logradouro varchar(50),
    complemento varchar(50),
    numero int(6),
    telefone varchar(15),
    cep int
);

create table locacao (
    id int primary key,
    num_contrato varchar(20),
    data_inicio date,
    data_fim date,
    transacao int,
    cliente int,
    imovel int,
    tabela_preco int
);

create table tabela_preco (
    id int primary key,
    forma_pgto int,
    valor decimal(18,2)
);

create table imoveisTable (
    id int primary key,
    preco int,
    imovel int
);

create table funcionario (
    id int primary key,
    nome varchar(30),
    telefone varchar(15),
    cpf varchar(11),
    logradouro varchar(50),
    complemento varchar(50),
    numero int(6),
    salario decimal(18, 2),
    data_ingresso date,
    cargo int,
    cep int,
    imobiliaria int
);

create table comissao(
    id int primary key auto_increment,
    valor_comissao decimal(18,2),
    cliente int
);