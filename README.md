
# Template ELK Event Driver
![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![Rails](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)


## Resumo :brazil:

Template para validar a solução de envio de eventos para monitoração utilizando a Stack ELK.

Em resumo:

1. Publicação de evento com payload desejado [ler mais](http://rubybunny.info/articles/exchanges.html)
2. Logstash configurado para consumir pelo broker RabbitMQ (via pluggin) [ler mais](https://www.elastic.co/guide/en/logstash/current/plugins-inputs-rabbitmq.html)
3. Criação do index no ElasticSearch [ler mais](https://www.elastic.co/guide/en/logstash/current/plugins-outputs-elasticsearch.html)
4. Visualização pelo Kibana [ler mais](https://www.elastic.co/guide/en/kibana/current/kibana-concepts-analysts.html)

---

## Overview :uk:

Template to validate the event sending solution for monitoring using the ELK Stack.

Overview:

1. Publish event with json payload [more details](http://rubybunny.info/articles/exchanges.html)
2. Logstash - Configure a logstash.conf with rabbitmq input (via pluggin) [more details](https://www.elastic.co/guide/en/logstash/current/plugins-inputs-rabbitmq.html)
3. Create ElasticSearch pattern index [more details](https://www.elastic.co/guide/en/logstash/current/plugins-outputs-elasticsearch.html)
4. Access Kibana and configure a index for Logstash Logs [more details](https://www.elastic.co/guide/en/kibana/current/kibana-concepts-analysts.html)

---

## Tech Stack

**Ruby:** 2.7.1

**Rails:** 5.0.1

**Docker-Compose:** 3.9

**ELK Stack:** 7.14.2

**RabbitMQ:** 3.8

---

## Features

- Publish event
- Consumer with logstash plugin for rabbitmq and index in ElasticSearch
- Kibana Dashboard 

----

## Run Docker

Clone the project

```bash
  git clone https://link-to-project
```

Go to the project directory

```bash
  cd my-project
```

Docker build

```bash
  docker-compose build
```

Up services

```bash
  docker-compose up -d
```

---

## Guideline

Console Rabbitmq

```bash
    localhost:15672
```

Access

```bash
    User: myuser
    Password: mypassword
```

Create Exchange

```bash
    Tab > Exchange
    Add new Exchange: monitoracao
```

Console Kibana

```bash
    localhost:5601
```

Access

```bash
    User: elastic
    Password: changeme
```

Add Data

```bash
    Logstash logs
```

Scroll into end of page, click

```bash
    Logstash logs
```

Create a index

```bash
    monitoracao*
```
