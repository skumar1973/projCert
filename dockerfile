FROM devopsedu/webapp
RUN apt-get update
RUN apt-get install -y apache2 && apt-get clean 
RUN rm /var/www/html/index.html
ADD projCert/website /var/www/html
EXPOSE 80
CMD apachectl -D FOREGROUND
