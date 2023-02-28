FROM debian

# WORKDIR : /conf

# COPY : . /conf
COPY index.html /data/www/
COPY test_test.conf /etc/nginx/conf.d/test_test.conf
COPY nginx.conf /etc/nginx/nginx.conf

# RUN apt-get -y update && apt-get -y install nginx

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]