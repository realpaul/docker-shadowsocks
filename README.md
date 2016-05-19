# docker-shadowsocks
[Dockerized Shadowsocks Server][hub] base on Docker [Alpine Linux](http://alpinelinux.org/) image. The image is only about 19 MB to download.

[![Docker Stars](https://img.shields.io/docker/stars/realpaul/docker-shadowsocks.svg)][hub]
[![Docker Pulls](https://img.shields.io/docker/pulls/realpaul/docker-shadowsocks.svg)][hub]
[![Docker Layers](https://badge.imagelayers.io/realpaul/docker-shadowsocks:latest.svg)](https://imagelayers.io/?images=realpaul/docker-shadowsocks:latest 'Get your own badge on imagelayers.io')
[hub]: https://hub.docker.com/r/realpaul/docker-shadowsocks/

## Get Started
Start to use dockerized Shadowsocks Server with just one line:
```
docker run -d -p 8388:8388 realpaul/docker-shadowsocks -p 8388 -k password -m aes-256-cfb --fast-open --workers 10
```

## Shadowsocks Server Command Line Options
```
Proxy options:
  -c CONFIG              path to config file
  -s SERVER_ADDR         server address, default: 0.0.0.0
  -p SERVER_PORT         server port, default: 8388
  -k PASSWORD            password
  -m METHOD              encryption method, default: aes-256-cfb
  -t TIMEOUT             timeout in seconds, default: 300
  --fast-open            use TCP_FASTOPEN, requires Linux 3.7+
  --workers WORKERS      number of workers, available on Unix/Linux
  --forbidden-ip IPLIST  comma seperated IP list forbidden to connect
  --manager-address ADDR optional server manager UDP address, see wiki

General options:
  -h, --help             show this help message and exit
  -d start/stop/restart  daemon mode
  --pid-file PID_FILE    pid file for daemon mode
  --log-file LOG_FILE    log file for daemon mode
  --user USER            username to run as
  -v, -vv                verbose mode
  -q, -qq                quiet mode, only show warnings/errors
  --version              show version information
```
