FROM ubuntu:18.04
RUN apt-get install git && \
    mkdir code && cd code && \
    git pull origin main 
    
