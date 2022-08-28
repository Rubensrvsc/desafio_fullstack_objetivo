## Tecnologias Usadas

```
Ruby On Rails: framework web
Devise: Para autenticação e autorização
Bootstrap: para construir as telas
Kaminari: Para paginação
Csv: par lidar com csv
Dry-Monads: Para construir a lógica de negócio
Dry-Auto-Inject: Para injeção de depêndencia
```

## Estrutura do banco de dados

### O banco de dados contém as tabelas User e Student, porém para modificar a tabela Student é necessário que o User esteja autenticado

## Endpoints

### O projeto possui os seguintes endpoints

| Method |EndPoint | Description |
|---|---|---|
| POST | `/` | Cria uma inscrição |
| GET | `/confirmation/` | Rota que obtém se uma inscrição foi feita com sucesso ou não |
| GET | `/details/:id` | Obtém os detalhes de inscrição do aluno |
| POST | `/users/sign_in` | Autentica um usuário |
| GET | `/index/` | Obtém o painel para o usuário ver as listas de inscritos e matriculados |
| GET | `/inscripts/` | Obtém os alunos inscritos |
| GET | `/matriculates/` | Obtém os alunos matriculados |
| POST | `/matricular_aluno/` | Matricula um aluno |
| POST | `/download_csv/` | Download do csv dos alunos inscritos |

## Como rodar o projeto

### Primeiro faça o clone do projeto

```
git clone https://github.com/Rubensrvsc/desafio_fullstack_objetivo.git
```

### Entre no projeto

```
cd desafio_fullstack_objetivo
```

### Caso tenha o bundle rode os seguintes comandos

```
bundle install: para instalar as gems
```

```
Para criar o banco de dados
bundle exec rails db:create
```

```
Para criar o banco de dados
bundle exec rails db:migrate
```

```
Para rodar o projeto
bundle exec rails server
```

```
Para rodar os tests
bundle exec rspec spec
```


### Caso tenha o docker e docker-compose rode os seguintes comandos

```
Para construir a imagem
docker-compose build
```

```
Para criar o banco de dados
docker-compose run --rm web rails db:create
```

```
Para rodar as migrações
docker-compose run --rm web rails db:migrate
```

```
Para rodar o projeto
docker-compose up
```

```
Para rodar os testes
docker-compose run --rm web rspec spec
```

### heroku

```
O projeto no heroku encontra-se na seguinte URL
```

[Link do Projeto](https://desafio-fullstack-objetivo.herokuapp.com/)

