FROM debian:buster

RUN apt-get update && apt-get install -y \
    --no-install-recommends nginx openssl \
    && rm -rf /var/lib/apt/lists/* \
    && openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -sha256 -subj "/CN=vkuklys.42.fr/C=DE/ST=BW/L=Heilbronn"
COPY ./default.conf /etc/nginx/sites-available/default
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
