FROM ubuntu

RUN apt-get update

RUN apt-get install nginx -y

COPY app/ /var/www/html/

EXPOSE 80

CMD ["nginx","-g","daemon off;"]