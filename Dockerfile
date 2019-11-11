#Dockerfile for Devops Project
FROM devopsedu/webapp
ADD ./website /var/www/html
CMD apachectl -D FOREGROUND
