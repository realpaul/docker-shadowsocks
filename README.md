# docker-shadowsocks
Dockerized Shadowsocks Server with simple-obfs and kcptun embedded.

![Docker Stars](https://img.shields.io/docker/stars/realpaul/docker-shadowsocks.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/realpaul/docker-shadowsocks.svg)
![Docker Layers](https://badge.imagelayers.io/realpaul/docker-shadowsocks:latest.svg)

Docker Hub Address: https://hub.docker.com/r/realpaul/docker-shadowsocks/

## Get Started
Start to use dockerized Shadowsocks Server with just one line:
```
docker run --detach --name my_shadowsocks --restart unless-stopped \
  --env KCPTUN_OVER_OBFS=true \
  --publish 443:443 --publish 993:993 --publish 53:53/udp \
  realpaul/docker-shadowsocks
```

## Server Configuration
There are configurable items for Shadowsocks, Simple-Obfs and Kcptun, and they can be set through environment variables. For example, if you want to change Shadowsocks port, just add environment variable into Docker command like ```--env SHADOWSOCKS_PORT=1080```.

### Shadowsocks Server
- SHADOWSOCKS_PORT: Shadowsocks Server port. Default is 443. This variable needs to keep the same as published port. For example: ```--env SHADOWSOCKS_PORT=1080 --publish 1080:1080```.
- SHADOWSOCKS_PASSWORD: Shadowsocks Server password. Default is test123.
- SHADOWSOCKS_CRYPTO: Shadowsocks Server crypto. Default is aes-256-cfb. You can choose from rc4-md5, aes-128-gcm, aes-192-gcm, aes-256-gcm, aes-128-cfb, aes-192-cfb, aes-256-cfb, aes-128-ctr, aes-192-ctr, aes-256-ctr, camellia-128-cfb, camellia-192-cfb, camellia-256-cfb, bf-cfb, chacha20-ietf-poly1305, xchacha20-ietf-poly1305, salsa20, chacha20 and chacha20-ietf.

### Simple Obfs Server
- OBFS_PORT: Obfs Server port. Default is 993. This variable needs to keep the same as published port. For example: ```--env OBFS_PORT=8080 --publish 8080:8080```.
- OBFS_PROTOCOL: Obfs Server protocol. Default is tls. You can choose between http and tls. For tls, this is only well supported by Linux/macOS based library currently.

### Kcptun Server
- KCPTUN_PORT: Kcptun Server port. Default is UDP 53. This variable needs to keep the same as published port. For example: ```--env KCPTUN_PORT=67 --publish 67:67/udp```.
- KCPTUN_MODE: Kcptun Server mode. Default is fast. You can choose from fast3, fast2, fast, normal.
- KCPTUN_KEY: Kcptun Server key. Default is test123.
- KCPTUN_CRYPTO: Kcptun Server crypto. Default is aes-192. You can choose from aes, aes-128, aes-192, salsa20, blowfish, twofish, cast5, 3des, tea, xtea, xor, sm4, none.
