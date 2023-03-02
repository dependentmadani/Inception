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
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=BG/O=1337/OU=student/CN=[mbadaoui.1337.ma](http://mbadaoui.42.ma/)"
    


CMD ["nginx", "-g", "daemon off;"]