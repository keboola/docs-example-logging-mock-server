FROM php:7

ENV COMPOSER_ALLOW_SUPERUSER 1

EXPOSE 12202/udp
EXPOSE 12202/tcp

WORKDIR /src/

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    unzip \
    && rm -r /var/lib/apt/lists/* \
    && cd /root/ \
    && curl -sS https://getcomposer.org/installer | php \
    && ln -s /root/composer.phar /usr/local/bin/composer

COPY . /src/
RUN composer install --no-interaction
ENTRYPOINT /src/start.sh