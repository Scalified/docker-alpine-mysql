FROM alpine:3.4

MAINTAINER Vladyslav Baidak

ENV SUPERVISOR_CONF_DIR=/etc/supervisor.d

ENV MYSQL_DATA_DIR=/opt/mysql/data
ENV MYSQL_USER=mysql
ENV MYSQL_STDOUT_FILE=/var/log/mysql-stdout.log
ENV MYSQL_STDERR_FILE=/var/log/mysql-stderr.log

RUN apk add --update --no-cache \
	supervisor \
	mysql \
	mysql-client

RUN mkdir -p $SUPERVISOR_CONF_DIR

COPY config/supervisor-mysql.ini $SUPERVISOR_CONF_DIR
	
RUN mkdir -p $MYSQL_DATA_DIR

RUN mysql_install_db --user=$MYSQL_USER --datadir=$MYSQL_DATA_DIR

RUN touch $MYSQL_STDOUT_FILE $MYSQL_STDERR_FILE

VOLUME $MYSQL_DATA_DIR

EXPOSE 3306

ENTRYPOINT supervisord -c /etc/supervisord.conf && tail -f $MYSQL_STDOUT_FILE $MYSQL_STDERR_FILE
