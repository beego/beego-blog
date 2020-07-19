# beego-blog

## 构建mysql docker
* docker pull mysql
* docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=beego -d mysql
* docker exec -it mysql bash
* mysql -uroot -pbeego
* CREATE DATABASE IF NOT EXISTS beeblog DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

## 构建beego docker
* docker build -t beegopro-docker .
* docker run -itd --link mysql:mysql  --name beegopro -p 8000:8000 -p 8080:8080 --privileged=true beegopro-docker /usr/sbin/init
* docker exec -it beegopro /bin/bash

## 初始化工作
* ./gen.sh
* cd /root/beeblog/ant && yarn create umi
* npm i

## 拷贝配置
* cd /root && ./cp_config.sh

## 生成文件
* cd /root/beeblog && bee pro gen

## 运行
* cd /root/beeblog/ant && npm run dev
* cd /root/beeblog && bee run
