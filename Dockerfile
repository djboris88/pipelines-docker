FROM ubuntu:18.04
MAINTAINER The Code Co <team@thecode.co>

RUN apt-get update
RUN apt-get install git-core build-essential rsync curl bzip2 libpng-dev gnupg ssh -y
RUN export DEBIAN_FRONTEND=noninteractive && apt-get install php php-common php-curl php-gd php-mbstring php-mysql php-soap php-xml php-xmlrpc php-zip -y
RUN apt-get install nodejs npm -y
RUN apt-get install python3.6 python3-pip python3-setuptools python3-dev build-essential -y
RUN pip3 install ansible
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --file=composer
RUN ln -s /usr/local/bin/composer.phar /usr/local/bin/composer
