FROM nginx:1.10.1

COPY repo.conf.template /etc/nginx/conf.d/repo.conf.template

RUN rm /etc/nginx/conf.d/default.conf

CMD /bin/bash -c "envsubst < /etc/nginx/conf.d/repo.conf.template > /etc/nginx/conf.d/repo.conf && nginx -g 'daemon off;'"
