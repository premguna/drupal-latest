FROM ubuntu:latest
RUN apt-get -y update && \
    apt-get -y  install git 
RUN mkdir code && cd code && \
    git init && \
    git remote add origin ssh://git@github.com:premguna/drupal-latest.git && \
    git pull origin main 
    
