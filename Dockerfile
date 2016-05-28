FROM php:7

EXPOSE 12202/udp
EXPOSE 12202/tcp

COPY . /src/
WORKDIR /src/

RUN apt-get update && apt-get install -y git && \
	curl -sS --fail https://getcomposer.org/installer | php && \
	php composer.phar install
RUN chmod ug+x start.sh

ENTRYPOINT ./start.sh
