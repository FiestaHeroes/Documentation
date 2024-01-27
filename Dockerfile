FROM node:18 as builder
WORKDIR /app

COPY . .
RUN npm ci
RUN npm run build

FROM nginx:alpine as runner
ENV NGINX_PATH /usr/share/nginx/html
WORKDIR $NGINX_PATH

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build/ $NGINX_PATH/

RUN set -x ; 
  addgroup -g 82 -S www-data ; 
  adduser -u 82 -D -S -G www-data www-data && exit 0 ; exit 1

RUN chown -R www-data:www-data $NGINX_PATH/*
RUN chmod -R 0755 $NGINX_PATH/*