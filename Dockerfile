FROM gliderlabs/alpine:3.3
RUN apk add --no-cache git bash
COPY files/gitconfig /root/.gitconfig
