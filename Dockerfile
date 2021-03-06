FROM node:lts-slim

RUN apt-get update

RUN apt-get install git wget curl iputils-ping net-tools zsh -y

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

WORKDIR /app

RUN npm i -g nodemon
