# N3 de Banco de Dados
📦 N3 task to finish third semester of Banco de Dados class at Universidade Católica de Santa Catarina.

## Links

[🔗 Documentação][link-documentacao]

[🔗 MER editável][link-documento]

[🔗 Diagramas][diagramas]

## Equipe
1. Cristian Prochnow
2. Gustavo Henrique Dias
3. Lucas Willian de Souza Serpa
4. Marlon de Souza
5. Ryan Gabriel Mazzei Bromati

## Arquivos
- `setup.sql` -> É o arquivo onde está o link para todos os outros, então ao executar esse arquivo com o comando de `source`, o banco de dados já ficará prontinho para uso.
- `src` -> Pasta com todos os outros arquivos auxiliares de comandos `SQL`.
    - `create.sql` -> Comandos para criação de tabelas;
    - `alter_table.sql` -> Criação de relações de chaves estrangeiras com as tabelas criadas;
    - `view.sql` -> Criação de todas as *views* que serão usadas;
    - `trigger.sql` -> Criação de todas as *triggers* que serão usadas;
    - `procedures.sql` -> Criação de todas as *procedures* que serão usadas;
    - `call_procedures_insert.sql` -> Chamada de todas as *procedures* de inserção no banco de dados, para popular com dados iniciais;

## Executar Projeto

```bash
# Inicia o projeto
docker compose up

# Lista os containers ativos
docker ps

# Pega o código do container de `mariadb` que está sendo executado, e entre no container.
docker exec -it <id-container> bash

# Quando realizar o comando, entrará na central do MySQL, e então use o comando abaixo.
mysql -u admin -p

# Quando perguntar a senha, coloque a abaixo.
admin

# Ao entrar no gerenciamento do MariaDB, dê o comando a seguir...
source /app/setup.sql;
```

[link-documento]: https://drive.google.com/file/d/1TLshUOreK_pwHAErh-ml_qOgfb92D7mt/view?usp=sharing
[link-documentacao]: https://cristianprochnow.notion.site/Atividade-Avaliativa-Final-de-Banco-de-Dados-5b2692308d354ac290f1bf21be09087b?pvs=4
[diagramas]: ./mer/
