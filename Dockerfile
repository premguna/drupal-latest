FROM ubuntu:latest
RUN apt-get -y update && \
    apt-get -y  install git 
RUN mkdir code && cd code && \
    git init && \
    git config --global init.defaultBranch main && \
    git pull origin main 
    
