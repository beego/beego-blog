FROM centos

WORKDIR /root

ADD beegopro/ /root/beegopro/
ADD beegopro/.bashrc /root/

ADD ./init.sh /root/
ADD ./cp_config.sh /root/

RUN source ~/.bashrc
RUN export GO111MODULE=on
#RUN curl --silent --location https://rpm.nodesource.com/setup_10.x | bash
RUN yum install -y npm
RUN yum install -y git
RUN npm config set registry https://registry.npm.taobao.org --global
RUN npm install -g yarn
RUN yum install -y go
RUN source ~/.bashrc


EXPOSE 8080 8000

CMD ["/sbin/my_init"]
