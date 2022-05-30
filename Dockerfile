FROM percona
ENV MYSQL_ROOT_PASSWORD=root
COPY ./test_db/ /home/
COPY ./db_custom_init.sh /docker-entrypoint-initdb.d/
