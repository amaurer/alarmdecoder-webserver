# alarmdecoder-webserver
Webserver to handle requests to alarm message bus.


## Build, save and transfer like
`docker build -t amaurer/alarmdecoder-webserver:0.1 . && docker save -o alarmdecoder-webserver.dkrsv amaurer/alarmdecoder:0.1 && scp alarmdecoder-webserver.dkrsv pi@192.168.2.3:/home/pi/alarmdecoder-webserver.dkrsv`

## Run like
`docker run -v /var/run/commbus/:/var/run/commbus/ --name alarmdecoder-webserver -d --restart=always amaurer/alarmdecoder-webserver:0.1`