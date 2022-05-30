mysql -u root -p$MYSQL_ROOT_PASSWORD -e 'create database my_database_to_import_into'
mysql -u root -p$MYSQL_ROOT_PASSWORD my_database_to_import_into < /home/mano.sql
