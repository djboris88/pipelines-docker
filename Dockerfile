FROM ubuntu:18.04
MAINTAINER Boris Djemrovski <djboris88@gmail.com>

RUN apt-get update
RUN apt-get install git-core build-essential rsync curl bzip2 libpng-dev gnupg ssh software-properties-common -y
RUN add-apt-repository ppa:ondrej/php -y
RUN export DEBIAN_FRONTEND=noninteractive && apt-get install php7.3 php7.3-common php7.3-curl php7.3-gd php7.3-mbstring php7.3-mysql php7.3-soap php7.3-xml php7.3-xmlrpc php7.3-zip -y
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --file=composer
RUN ln -s /usr/local/bin/composer.phar /usr/local/bin/composer
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g gulp-cli yarn
