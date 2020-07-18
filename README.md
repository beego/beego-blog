# beego-blog

docker pull mysql
docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql
docker build -t beegopro-docker .
docker run -itd --link mysql:mysql  --name beegopro -p 8000:8000 -p 8080:8080 --privileged=true beegopro-docker /usr/sbin/init
docker exec -it beegopro /bin/bash
