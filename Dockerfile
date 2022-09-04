FROM ubuntu:18.04
RUN mkdir code && cd code && \
    git pull origin main 
    
