FROM ubuntu:16.04
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install nginx -y
RUN useradd ubuntu -m && usermod -aG www-data ubuntu
RUN mkdir /home/ubuntu/testing
EXPOSE 80
WORKDIR /home/ubuntu/testing
COPY assignment-1 /home/ubuntu/testing/
RUN chown -R ubuntu:www-data /home/ubuntu/testing
COPY default /etc/nginx/sites-available/
CMD ["systemctl","restart","nginx"]
