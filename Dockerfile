FROM nginx:1.23.1

COPY src/index.html /usr/share/nginx/html/index.html

EXPOSE 80