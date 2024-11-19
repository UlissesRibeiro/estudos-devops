#Dockerfile nginx
FROM ubuntu
RUN apt-get update && apt-get install nginx -y
COPY default /etc/nginx/sites-available/default
EXPOSE 80
EXPOSE 443
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]