# これはなに
Apache DrillをDocker起動させて、環境変数でcore-site.xmlを書き換えてS3の設定を埋め込んでしまいたいDockerイメージになります  
Fargeteとかで使うことを妄想しています  

# getting started

```
$ git clone https://github.com/abe-ma/docker-drill-s3.git
$ cd docker-drill-s3
$ docker build -t hoge:hoge .
```

環境変数
$AWS_REGION: リージョン  
$S3_ACCESS_KEY: IAMアクセスキー  
$S3_SECRET_KEY: IAMシークレットキー  

apache drill port: 8047  

```
$ docker run -it --rm -p 8047:8047 \
  -e AWS_REGION=ap-northeast-1 \
  -e S3_ACCESS_KEY=xxx \
  -e S3_SECRET_KEY=yyy hoge:hoge
```


