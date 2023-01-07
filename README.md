# PHP-on-Docker

GMPライブラリを使用したり、その他ライブラリを使用したりするとUbuntuイメージから作成したほうがいいと思い、、、

## 説明

| ファイル・ディレクトリ | 説明 |
| ---- | ---- |
| wwwroot | Webルートディレクトリ |
| apache2.conf | Apache Web Serverに関する設定ファイル |
| php.ini | PHPに関する設定ファイル |

## 実行方法

```shell
docker build -t php-on-docker . && docker run -p 80:80 -it --rm --name my-php-on-docker php-on-docker
```
