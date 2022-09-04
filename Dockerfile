FROM ubuntu:latest
RUN apt-get -y update 
RUN apt-get -y  install git 
   # mkdir code && cd code && \
   # git pull origin main 
RUN git --version
    
