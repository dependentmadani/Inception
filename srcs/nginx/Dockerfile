# FROM debian:buster

# # WORKDIR : /conf

# RUN apt-get -y update && apt-get -y install nginx
# # COPY : . /conf
# # COPY test_test.conf /etc/nginx/conf.d/test_test.conf

# CMD ["nginx", "-g", "daemon off;"]
FROM debian:buster

EXPOSE 443


RUN apt-get update && \
    apt-get install -y nginx
RUN apt-get install -y openssl
    # rm -rf /var/lib/apt/lists/* && /
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -sha256 -subj "/CN=mbadaoui.1337.ma"
# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=BG/O=1337/OU=student/CN=[mbadaoui.1337.ma](http://mbadaoui.1337.ma/)"

COPY index.html /var/www/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
