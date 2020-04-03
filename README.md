# 概要
Lambda を TypeScript で構成した場合のサンプル。

## Lambda 関数
複数のデプロイ対象となるLambda関数を持つ

- functions/func1 
- functions/func2

## 共通モジュール
shared 以下のソースコードは各関数から利用される。
デプロイ時は、各関数にバンドルされる。

# セットアップ

各ディレクトリで `npm install` を実行する

```
$ cd functions/func1
$ npm install
$ cd ../../
$
$ cd functions/func2
$ npm install
$ cd ../../
$
$ cd shared
$ npm install
$cd ../
```

# ビルド

shared ディレクトリでビルド

```
$ npm run build
```

関数ディレクトリでのビルド

```
$ npm run build
```

# デプロイ

関数ディレクトリでデプロイ
※デプロイに関するコマンドは `deploy.sh` で省略。
build/関数名.zip を作成するところまで。

```
$ npm run package
```


