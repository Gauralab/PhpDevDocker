FROM mysql:8.0

ARG MYSQL_GID
ARG MYSQL_UID

RUN groupmod -g $MYSQL_GID mysql
RUN usermod -u $MYSQL_UID -s /bin/bash mysql