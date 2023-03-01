FROM debian:buster

# WORKDIR : /conf

RUN apt-get -y update && apt-get -y install nginx
# COPY : . /conf
# COPY index.html /data/www/
# COPY test_test.conf /etc/nginx/conf.d/test_test.conf
COPY nginx.conf /etc/nginx/nginx.conf


EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]