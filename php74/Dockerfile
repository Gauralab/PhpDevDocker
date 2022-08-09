FROM gauralab/php-common:7.4

ARG WWWGROUP
ARG WWWUSER
ARG TIMEZONE=UTC
WORKDIR /var/www

RUN echo "Timezone: $TIMEZONE"
RUN echo "GID: $WWWGROUP"
RUN echo "UID: $WWWUSER"

RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime && echo $TIMEZONE > /etc/timezone && mkdir -p /run/php

RUN groupmod -g $WWWGROUP www-data
RUN usermod -u $WWWUSER -s /bin/bash -d /home/www www-data
RUN chown -R www-data:www-data /var/www
#RUN mkdir /home/www && chown -R www-data:www-data /home/www
RUN mkdir -p /home/www/.config && chown -R www-data:www-data /home/www
RUN echo "su www-data" >> /root/.bashrc
RUN echo "chown -R www-data:www-data /home/www" >> /root/.bashrc
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

#COPY conf/cli/php.ini /etc/php/8.0/cli/php.ini
#COPY conf/fpm /etc/php/8.0/fpm

EXPOSE 9000
CMD ["php-fpm7.4", "-F", "-O"]