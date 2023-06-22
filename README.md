# N3 de Banco de Dados
📦 N3 task to finish third semester of Banco de Dados class at Universidade Católica de Santa Catarina.

## Links

[🔗 MER editável][link-documento]

[🖼️ Diagramas][diagramas]

## Equipe
1. Cristian Prochnow
2. Gustavo Henrique Dias
3. Lucas Willian de Souza Serpa
4. Marlon de Souza
5. Ryan Gabriel Mazzei Bromati

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
[diagramas]: ./mer/
