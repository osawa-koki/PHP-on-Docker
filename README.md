# PHP-on-Docker

GMPライブラリを使用したり、その他ライブラリを使用したりするとUbuntuイメージから作成したほうがいいと思い、、、  

## 実行方法

```shell
docker build -t is-prime-number . && docker run -p 80:80 -it -rm --name my-is-prime-number is-prime-number
```
