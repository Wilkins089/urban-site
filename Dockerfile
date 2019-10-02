FROM ubuntu

RUN apt-get update \
    && apt-get -y install git \
    && apt-get -y install nginx

RUN chmod 777 /var/www/html/
RUN rm -r /var/www/html/

RUN git clone https://github.com/Wilkins089/urban-site.git /var/www/html/


CMD ["nginx", "-g", "daemon off;"]

