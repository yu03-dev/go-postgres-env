# go-starter

自分用 Go の開発環境 (PostgreSQL もついでに)

## 環境構築

### 1. .gitignore のコメントアウトを外す

環境変数を間違えてプッシュしてしまわないようにすること！

```
# .env
```

### 2. コンテナ内で go modules を初期化

```docker
# --rmオプションでコンテナから抜けるときコンテナを削除する
docker compose run --rm web bash
```

```go
go mod init <モジュール名>
```

コンテナから抜ける

```bash
exit
```

### 3. Dockerfile のコメントアウトを外す

ホットリロードと go module の依存関係の更新を設定

```dockerfile
RUN go install github.com/cosmtrek/air@latest

COPY . .
RUN go mod tidy
```

### 4. PostgreSQL の設定

postgresql を使う場合は、.env を正しく設定する

```
DB_USER=gogo
DB_PASSWORD=gogo
DB_NAME=gogo
```

※ postgresql が不要なら `docker-compose.yml` から `services` 配下の`db`と、`voluems` を削除

### 5. イメージの再ビルドとコンテナの作成、起動

```bash
docker compose build
docker compose up
```

ターミナルに`[Success]: Hello world!!`と表示されれば OK

## main.go を置く場所を変更する場合

モジュールのディレクトリ構成に合わせて
.air.toml の以下（12 行目）を変更する

```toml
cmd = "go build -o ./tmp/main ./cmd"
```
