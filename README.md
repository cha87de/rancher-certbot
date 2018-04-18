# rancher-certbot - letsencrypt client for rancher

## Usage example

```
version: '2'
services:
  certbot:
    build: .
    environment:
      RANCHER_ACCESS_KEY: ...
      RANCHER_SECRET_KEY: ...
      RANCHER_URL: https://...
      DOMAIN: domain.com
      SECONDARYDOMAINS: seconddomain.com
    stdin_open: true
    volumes:
    - /etc/letsencrypt:/etc/letsencrypt
    - /var/lib/letsencrypt:/var/lib/letsencrypt
    - /home/volumes/default/acme-challenge:/var/lib/webroot
```


## TODOs

 - [ ] Write proper README :-)
 - [ ] Find proper solution for authentification to rancher api (no keys as env vars)
