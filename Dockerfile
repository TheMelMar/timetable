FROM mysql:latest

#ENV MYSQL_RANDOM_ROOT_PASSWORD=true
#ENV MYSQL_DATABASE=sbb
#ENV MYSQL_USER=user

COPY .docker-entrypoint-initdb.d/* /docker-entrypoint-initdb.d/


