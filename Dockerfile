FROM node:10-stretch-slim
MAINTAINER Boris Djemrovski <djboris88@gmail.com>

RUN apt-get update && apt-get install -y \
    git-core \
    rsync \
    && rm -rf /var/lib/apt/lists/*

RUN npm i -g gulp-cli
