#Dockerfile nginx
FROM ubuntu
RUN apt-get update && apt-get install nginx vim -y
COPY desafio-02/nginx/default /etc/nginx/sites-available/default
EXPOSE 80
EXPOSE 443
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]