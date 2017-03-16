FROM sdhibit/rpi-raspbian

RUN apt-get update && apt-get upgrade -y && apt-get clean

RUN apt-get install nginx -y

COPY files/nginx.conf /etc/nginx/
COPY files/http.conf /etc/nginx/conf.d/

CMD nginx -g 'daemon off;'