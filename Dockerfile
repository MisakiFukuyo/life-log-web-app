FROM php:8-cli
RUN mkdir /app
WORKDIR /app
COPY app/init.sh init.sh
RUN chmod +x init.sh
RUN apt-get -y update && apt-get -y upgrade && apt-get -y install git unzip zip
CMD ["bash", "-c", "-l", "/app/init.sh"]
