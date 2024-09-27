ARG NODE_VERSION=latest

FROM $NODE_VERSION

# add s6 services
COPY services.d /etc/services.d
RUN chmod -R +x /etc/services.d

# override service startup timeout
ENV S6_CMD_WAIT_FOR_SERVICES_MAXTIME=0

# add s6 overlay
ADD https://github.com/just-containers/s6-overlay/releases/download/v3.1.4.1/s6-overlay-noarch.tar.xz /tmp
RUN tar -C / -Jxpf /tmp/s6-overlay-noarch.tar.xz
ADD https://github.com/just-containers/s6-overlay/releases/download/v3.1.4.1/s6-overlay-x86_64.tar.xz /tmp
RUN tar -C / -Jxpf /tmp/s6-overlay-x86_64.tar.xz

# install nginx
RUN apk add --no-cache nginx

# copy app nginx config
COPY nginx/app.conf /etc/nginx/sites-enabled/default
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/inc /etc/nginx/inc

# fix nginx permissions
RUN chown -R node:node /var/lib/nginx

EXPOSE 80

ENTRYPOINT ["/init"]