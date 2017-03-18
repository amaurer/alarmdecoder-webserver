# alarmdecoder-webserver
Webserver to handle requests to alarm message bus.


## Build, save and transfer like
`docker build -t amaurer/alarmdecoder-webserver:1.0 . && docker save -o alarmdecoder-webserver.dkrsv amaurer/alarmdecoder-webserver:1.0 && scp alarmdecoder-webserver.dkrsv pi@192.168.2.3:/home/pi/alarmdecoder-webserver.dkrsv`

## Run like
`docker run -v /var/run/commbus/:/var/run/commbus/ -p 8080:8080 -p 80:80 --name alarmdecoder-webserver -d --restart=always amaurer/alarmdecoder-webserver:1.0`