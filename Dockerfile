FROM ubuntu:latest
RUN apt-get -y update && \
    apt-get -y  install git 
RUN mkdir code && cd code && \
    git init && \ 
    git remote add origin git@github.com:premguna/drupal-latest.git && \
    git config --global init.defaultBranch main && \ 
    git remote -v && \
    git pull origin main && \
    ls -lrt  
    
