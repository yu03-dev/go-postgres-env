# go-starter

自分用 Go + Postgresql の開発環境

## 環境構築

.gitignore のコメントアウトを外す

```
# .env
```

以下のコマンドでコンテナに入り、go mod init する

```docker
docker compose run --rm web bash
```

```go
go mod init <任意のモジュール名>
```

.air.toml の以下（12 行目）をディレクトリ構成により変更する

```toml
cmd = "go build -o ./tmp/main ./cmd"
```
