FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
ENV http_proxy http://192.168.111.225:65520
ENV https_proxy http://192.168.111.225:65520
RUN apk --update add bash nano
ENV STATIC_URL /static
ENV VERSION 10
ENV STATIC_PATH /var/www/app/static
COPY ./requirements.txt /var/www/requirements.txt
RUN pip --proxy http://192.168.111.225:65520 install -r /var/www/requirements.txt
