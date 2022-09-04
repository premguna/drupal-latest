FROM ubuntu:latest
RUN apt-get -y update && \
    apt-get -y  install git 
RUN mkdir code && cd code && \
    git init && \
    git pull origin main 
    
