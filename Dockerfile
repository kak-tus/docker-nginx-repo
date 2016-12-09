FROM nginx:1.10.1

MAINTAINER Andrey Kuzmin "kak-tus@mail.ru"

COPY static.conf.template /etc/nginx/conf.d/static.conf.template

RUN rm /etc/nginx/conf.d/default.conf

ENV STATIC_PATH=

CMD /bin/bash -c "envsubst < /etc/nginx/conf.d/static.conf.template > /etc/nginx/conf.d/static.conf && nginx -g 'daemon off;'"
