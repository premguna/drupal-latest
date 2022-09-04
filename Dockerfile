FROM ubuntu:18.04
RUN command -v ssh-agent >/dev/null && \
    apt-get install openssh-client -y  && \
    eval $(ssh-agent -s) && \
    echo "$PRIVATE_KEY" | tr -d '\r' | ssh-add - && \
    mkdir -p ~/.ssh && \
    chmod 700 ~/.ssh  && \
    echo "$PRIVATE_KEY" > ~/.ssh/private_key  && \
    echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config && \
    chmod 700 ~/.ssh/private_key  && \
    ls -lrt  && \
    git pull origin main 
    
