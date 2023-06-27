alter table cidade add foreign key(estado) references estado(id);

alter table bairro add foreign key(cidade) references cidade(id);

alter table cep add foreign key(bairro) references bairro(id);

alter table cliente add foreign key(cep) references cep(id);

alter table venda add foreign key(transacao) references transacao(id);
alter table venda add foreign key(cliente) references cliente(id);

alter table imovel add foreign key(cep) references cep(id);
alter table imovel add foreign key(imobiliaria) references imobiliaria(id);

alter table anexo_imovel add foreign key(imovel) references imovel(id);

alter table imobiliaria add foreign key(cep) references cep(id);

alter table locacao add foreign key(transacao) references transacao(id);
alter table locacao add foreign key(cliente) references cliente(id);
alter table locacao add foreign key(imovel) references imovel(id);
alter table locacao add foreign key(tabela_preco) references tabela_preco(id);

alter table tabela_preco add foreign key(forma_pgto) references forma_pgto(id);

alter table imoveisTable add foreign key(preco) references tabela_preco(id);
alter table imoveisTable add foreign key(imovel) references imovel(id);

alter table funcionario add foreign key(cargo) references cargo(id);
alter table funcionario add foreign key(transacao) references transacao(id);
alter table funcionario add foreign key(cep) references cep(id);
alter table funcionario add foreign key(imobiliaria) references imobiliaria(id);

alter table comissao add foreign key(cliente) references cliente(id);