FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install nginx -y

ADD app/index.html /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
