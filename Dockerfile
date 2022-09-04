FROM ubuntu:18.04
RUN apt-get -y  install git 
   # mkdir code && cd code && \
   # git pull origin main 
RUN git --version
    
