FROM nginx

RUN mkdir -p /app
COPY ./build /app
COPY ./public /app
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

CMD [ "nginx", "-g", "daemon off;" ]
