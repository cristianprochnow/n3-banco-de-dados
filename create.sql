create database imobiliaria;

create table forma_pgto (
    id int primary key,
    tipo varchar(10),
    descricao varchar(30)
);

create table transacao (
    id int primary key,
    valor decimal(18, 2),
    porcentagem float
);


create table cargo (
    id int primary key,
    descricao varchar(30),
    salario_base decimal(18,2),
    comissao decimal(18,2)
);


create table estado (
    id int primary key,
    uf int(2),
    nome varchar(20) 
);


create table cidade (
    id int primary key,
    nome varchar(25),
    estado int,
    foreign key(estado) references estado(id)
);


create table bairro (
    id int primary key,
    descricao varchar(25)
    cidade int,
    foreign key(cidade) references cidade(int)
);


create table cep (
    id int primary key,
    num_cep varchar(9),
    bairro int,
    foreign key(bairro) references bairro(id) 
);


create table venda (
    id int primary key,
    data date,
    valor_estipulado decimal(18, 2),
    transacao int,
    foreign key(transacao) references transacao(id)
);

create table cliente (
    id int primary key,
    nome varchar(30),
    telefone varchar(15),
    cpf varchar(11),
    logradouro varchar(50),
    cep int,
    foreign key(cep) references cep(id)
);

create table imovel (
    id int primary key,
    logradouro varchar(50),
    complemento varchar(50),
    numero int(6),
    status varchar(30),
    cep int,
    foreign key(cep) references cep(id),
    imobiliaria int,
    foreign key(imobiliaria) references imobiliaria(id)
);


create table anexo_imovel (
    id int primary key,
    arquivo blob,
    data_criacao date,
    imovel int,
    foreign key(imovel) references imovel(id)
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
    nome varchar(15),
    logradouro varchar(50),
    complemento varchar(50),
    numero int(6),
    telefone varchar(15),
    cep int,
    foreign key(cep) references cep(id)
);


create table locacao (
    id int primary key,
    num_contrato varchar(20),
    data_inicio date,
    data_fim date,
    transacao int,
    foreign key(transacao) references transacao(id),
    cliente int,
    foreign key(cliente) references cliente(id),
    imovel int,
    foreign key(imovel) references imovel(id),
    tabela_preco int,
    foreign key(tabela_preco) references tabela_preco(id)
);

create table tabela_preco (
    id int primary key,
    forma_pgto int,
    foreign key(forma_pgto) references forma_pgto(id),
    valor decimal(18,2)
);


create table imoveisTable (
    id int primary key,
    preco int,
    foreign key(preco) references tabela_preco(id),
    imovel int,
    foreign key(imovel) references imovel(id)
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
    foreign key(cargo) references cargo(id),
    transacao int,
    foreign key(transacao) references transacao(id),
    cep int,
    foreign key(cep) references cep(id),
    imobiliaria int,
    foreign key(imobiliaria) references imobiliaria(id)
);
