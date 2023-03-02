# FROM debian:buster

# # WORKDIR : /conf

# RUN apt-get -y update && apt-get -y install nginx
# # COPY : . /conf
# # COPY index.html /data/www/
# # COPY test_test.conf /etc/nginx/conf.d/test_test.conf
# COPY nginx.conf /etc/nginx/nginx.conf


# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]
FROM debian:buster

EXPOSE 443

RUN apt-get update && \
    apt-get install -y nginx openssl && /
    rm -rf /var/lib/apt/lists/* && /
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -sha256 -subj "/CN=mbadaoui.1337.ma"


CMD ["nginx", "-g", "daemon off;"]
