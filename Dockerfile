FROM nginx:alpine
COPY . /usr/share/nginx/html

EXPOSE 80 6655

CMD ["nginx", "-g", "daemon off;"]
