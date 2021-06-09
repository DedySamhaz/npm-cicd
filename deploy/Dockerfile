FROM ubuntu:16.04

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir /root/.ssh/
ADD dedysamhaz.key /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa
RUN touch /root/.ssh/known_hosts
RUN chmod 600 ~/.ssh/known_hosts

