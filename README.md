# Rails(6系)でRatyを使った評価機能の実装

[こちらの記事のサンプル](https://toji.tech/rails6%e7%b3%bb%e3%81%a7raty%e3%82%92%e4%bd%bf%e3%81%a3%e3%81%9f%e8%a9%95%e4%be%a1%e6%a9%9f%e8%83%bd%e3%81%ae%e5%ae%9f%e8%a3%85/) です。

Dockerを使用してサンプルを作成しています。  
Dockerを使用しない場合は、appフォルダ以下で、コマンドを実行してください。

## Dockerでの起動
初回起動時は、`docker-compose up`後にデータベース/テーブル作成を先に実施して`docker-compose`を再起動してください。
```bash
docker-compose up
```

* データベース作成
```bash
docker-compose run --rm app rails db:create
```

* テーブル作成
```bash
docker-compose run --rm app rails db:migrate
```

## Bundle Install
```bash
docker-compose run --rm app bundle install
```

### Gemの確認
ruby gem、gemsとしてVolumeに保持されます。

以下でVolume内のGemを確認可能
```bash
docker-compose run --rm app ls /usr/local/bundle/gems
```

## node_modules
```bash
# package.json install
docker-compose run --rm app yarn install

# Add package
docker-compose run --rm app yarn add package_name

# Remove package
docker-compose run --rm app yarn remove package_name
```
