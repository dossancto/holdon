# Holdon

a projeto to learn how use database in ruby.

I'm using postgres.

## Dependencies

- Rake
- Bundler
- Docker
- Docker composer

## Install

- clone repo

```sh
$ git clone {url}
```

- install dependencies

```sh
$ bundle install
```

- Start Postgres in docker

```sh
$ sudo docker compose up -d
```

- Run 

```sh
$ rackup config.ru
```

The app will run on `localhost:9292`

> The `.env` config is only used for production, in development and test enviroment the docker postgres is used. You do not need to config him.

## Usage


