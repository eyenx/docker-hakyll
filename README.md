# docker-hakyll

![](https://github.com/eyenx/docker-hakyll/workflows/build-image/badge.svg)

[hakyll](https://jaspervdj.be/hakyll/) in a container

## usage example

Build your site with this image:

```
FROM ghcr.io/eyenx/hakyll:latest as builder

COPY my-site /my-site

RUN cd /my-site && cabal new-install && site build 

FROM nginx:alpine

COPY --from=builder /my-site/_site  /usr/share/nginx/html
```
