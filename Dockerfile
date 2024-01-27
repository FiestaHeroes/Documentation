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