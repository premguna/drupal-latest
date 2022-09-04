FROM ubuntu:latest
RUN apt-get -y update && \
    apt-get -y  install git 

RUN mkdir code && cd code && \
    git init && \ 
    git remote add origin git@github.com:premguna/drupal-latest.git && \
    git config --global init.defaultBranch main && \ 
    git remote -v && \
 #   command -v ssh-agent >/dev/null && \
    apt-get install openssh-client -y  && \
 #   eval $(ssh-agent -s) && \
 #   echo "$PRIVATE_KEY" | tr -d '\r' | ssh-add - && \
    mkdir -p /root/.ssh && \
    ssh-keyscan github.com >> /root/.ssh/known_hosts
    chmod 700 /root/.ssh/*  && \
    
 #   echo "$PRIVATE_KEY" > ~/.ssh/private_key  && \
  #  echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config && \
  #  chmod 700 ~/.ssh/private_key  && \
    git pull origin main && \
    ls -lrt  
    
