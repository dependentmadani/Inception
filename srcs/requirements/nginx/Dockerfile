FROM debian:buster

RUN apt-get update && \
    apt-get install -y nginx && apt-get install -y openssl

EXPOSE 443

#provide secure communication using openssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -sha256 -subj "/CN=mbadaoui.42.fr"

COPY conf/ /etc/nginx/

CMD ["nginx", "-g", "daemon off;"]
