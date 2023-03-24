FROM curlimages/curl:latest
MAINTAINER Jesse DeFer <curl-ssh@dotd.com>

USER root

RUN adduser -D -u 1000 jenkins

RUN apk --no-cache add openssh-client 

RUN ssh-keyscan github.com > /etc/ssh/ssh_known_hosts
