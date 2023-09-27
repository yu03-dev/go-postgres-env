# go-starter

自分用 Go の開発環境 (PostgreSQL もついでに)

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

コンテナから抜ける

```bash
exit
```

Dockerfile のコメントアウトを外す

```dockerfile
# RUN go install github.com/cosmtrek/air@latest

# COPY . .
# RUN go mod tidy
```

```bash
docker compose build
docker compose up
```

### main.go を置く場所を変更するとき

.air.toml の以下（12 行目）をディレクトリ構成により変更する

```toml
cmd = "go build -o ./tmp/main ./cmd"
```
