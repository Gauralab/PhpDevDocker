FROM nginx:latest

ARG WWWGROUP
ARG WWWUSER
ARG TIMEZONE=UTC
WORKDIR /var/www

RUN echo "Timezone: $TIMEZONE"
RUN echo "GID: $WWWGROUP"
RUN echo "UID: $WWWUSER"

RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime && echo $TIMEZONE > /etc/timezone && mkdir -p /run/php

#RUN groupadd --force -g $WWWGROUP www-data
RUN groupmod -g $WWWGROUP www-data
RUN usermod -u $WWWUSER -s /bin/bash -d /var/www www-data
RUN chown -R www-data:www-data /var/www
RUN rm -rf /var/www/html