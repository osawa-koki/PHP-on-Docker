# PHP-on-Docker

GMPライブラリを使用したり、その他ライブラリを使用したりするとUbuntuイメージから作成したほうがいいと思い、、、  

## 実行方法

```shell
docker build -t php-on-docker . && docker run -p 80:80 -it -rm --name my-php-on-docker php-on-docker
```
