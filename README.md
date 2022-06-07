# percona-test

[root@localhost mano]# docker build . -t mano-percona2
Sending build context to Docker daemon  253.8MB
Step 1/4 : FROM percona
 ---> 14dacdf98c7a
Step 2/4 : ENV MYSQL_ROOT_PASSWORD=root
 ---> Using cache
 ---> 4c39c822e93e
Step 3/4 : COPY ./test_db/ /home/
 ---> a9843e6df4f2
Step 4/4 : COPY ./db_custom_init.sh /docker-entrypoint-initdb.d/
 ---> 0c2109a7a41f
Successfully built 0c2109a7a41f
Successfully tagged mano-percona2:latest
[root@localhost mano]# docker run -it mano-percona2
Initializing database
2022-05-30T18:01:55.702598Z 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
2022-05-30T18:01:56.662503Z 0 [Warning] InnoDB: New log files created, LSN=45790
2022-05-30T18:01:56.897781Z 0 [Warning] InnoDB: Creating foreign key constraint system tables.
2022-05-30T18:01:57.013475Z 0 [Warning] No existing UUID has been found, so we assume that this is the first time that this server has been started. Generating a new UUID: 9859e660-e042-11ec-9dc5-0242ac110004.
2022-05-30T18:01:57.019372Z 0 [Warning] Gtid table is not ready to be used. Table 'mysql.gtid_executed' cannot be opened.
2022-05-30T18:01:57.626030Z 1 [Warning] root@localhost is created with an empty password ! Please consider switching off the --initialize-insecure option.



## Output


bash-4.4$ mysql -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 5
Server version: 5.7.35-38 Percona Server (GPL), Release 38, Revision 3692a61

Copyright (c) 2009-2021 Percona LLC and/or its affiliates
Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases
    -> ;
+----------------------------+
| Database                   |
+----------------------------+
| information_schema         |
| my_database_to_import_into |
| mysql                      |
| performance_schema         |
| sys                        |
+----------------------------+
5 rows in set (0.00 sec)

mysql> use my_database_to_import_into;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+--------------------------------------+
| Tables_in_my_database_to_import_into |
+--------------------------------------+
| user_details                         |
+--------------------------------------+
1 row in set (0.00 sec)

mysql> select * from user_details;
+---------+----------+------------+-----------+--------+----------------------------------+--------+
| user_id | username | first_name | last_name | gender | password                         | status |
+---------+----------+------------+-----------+--------+----------------------------------+--------+
|       1 | rogers63 | david      | john      | Female | e6a33eee180b07e563d74fee8c2c66b8 |      1 |
|       2 | mike28   | rogers     | paul      | Male   | 2e7dc6b8a1598f4f75c3eaa47958ee2f |      1 |
|       3 | rivera92 | david      | john      | Male   | 1c3a8e03f448d211904161a6f5849b68 |      1 |
|       4 | ross95   | maria      | sanders   | Male   | 62f0a68a4179c5cdd997189760cbcf18 |      1 |
|       5 | paul85   | morris     | miller    | Female | 61bd060b07bddfecccea56a82b850ecf |      1 |
|       6 | smith34  | daniel     | michael   | Female | 7055b3d9f5cb2829c26cd7e0e601cde5 |      1 |
|       7 | james84  | sanders    | paul      | Female | b7f72d6eb92b45458020748c8d1a3573 |      1 |
|       8 | daniel53 | mark       | mike      | Male   | 299cbf7171ad1b2967408ed200b4e26c |      1 |
|       9 | brooks80 | morgan     | maria     | Female | aa736a35dc15934d67c0a999dccff8f6 |      1 |
|      10 | morgan65 | paul       | miller    | Female | a28dca31f5aa5792e1cefd1dfd098569 |      1 |
+---------+----------+------------+-----------+--------+----------------------------------+--------+
10 rows in set (0.00 sec)



