# My Backend API

- railsのAPIモードを使用

```bash
ruby: 2.6.5
rails: 5.2.2
graphql: 1.9.2
rspec-rails: 3.8.2
```


## コンテナの起動

```bash
$ docker-compose up

# バックグラウンド
$ docker-compose up -d
```

## マイグレーション
```bash
# UP
$ docker-compose run rails rake db:migrate

# Drop
$ docker-compose run rails rake db:drop
```

### graphql EndPoint

```bash
http://localhost:3000/api/v1/graphql
```
