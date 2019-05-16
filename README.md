#Contato

```sh
Nome: Manoel do Nascimento
E-mail: manu3105@yahoo.com
Telefone: 21 99961 4258
```

# Premise REST API

Esse projeto é uma REST API com Ruby on Rails que permite criar Locais e Estações.

> This is a Ruby on Rails REST API that allows you to create Premises ans Stations.

## Tools

```sh
Postman

Rails 5.2.3
PostgreSQL 10.8
```

## Setup

Instale o Postman (https://www.getpostman.com/). 
Dentro do Terminal, use o comando <strong>bundle install</strong> e inicialize o servidor com o commando <strong>rails s</strong>

> Install Postman.
> Use the bundle install command and start the server while inside the terminal with rails s command.

### Postman Setup

Localhost URL

```sh
http://localhost:3000
```
API Headers

```sh
Key: Content-Type 
Value: application/json

Key: X-User-Email 
Value: testing@gmail.com

Key: X-User-Token
Value: bBwV-FTkkHUgmjSnaaTW
```
### API Endpoints

```sh
GET    /api/v1/premises      (index)
GET    /api/v1/premises/:id  (show)
POST   /api/v1/premises      (create)
PATCH   /api/v1/premises/:id (update)
DELETE  /api/v1/premises/:id (delete)
```

### Create / Update

Na aba <strong>Body</strong>, clique em <strong>raw</strong> e insira os parâmetros
> In 'Body' tab, click on 'raw' and insert the params

```sh
{ "premise": { "name": "Um novo edifício", "address": "Algum endereço" } }
```
## Create - Terminal

Com o comando <strong>rails c</strong>, também é possível criar dentro do terminal
> With the rails c command you can also create inside the terminal

```sh
user = User.create(email: 'example@gmail.com', password: 'example') >> uma authentication_token (X-User-Token do Postman) será gerada automaticamente

premise = Premise.create(name: 'Um novo edifício', address: 'Algum endereço', user: user) >> um array de Stations será gerado automaticamente

Station.create(user:user, premise_id: 123, name: 'Nome de uma máquina') >> um serial será gerado automaticamente
```
