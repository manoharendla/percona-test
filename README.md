# percona-test

## Using docker compose
docker-compose up

```
[root@localhost percona-test]# docker-compose up
Building db
Step 1/4 : FROM percona
 ---> 14dacdf98c7a
Step 2/4 : ENV MYSQL_ROOT_PASSWORD=root
 ---> Using cache
 ---> 4c39c822e93e
Step 3/4 : COPY ./test_db/ /home/
 ---> 32ae227e27a5
Step 4/4 : COPY ./db_custom_init.sh /docker-entrypoint-initdb.d/
 ---> 08b599a09e7d

Successfully built 08b599a09e7d
Successfully tagged percona-test:latest
WARNING: Image for service db was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
Creating percona-test_db_1 ... done
Attaching to percona-test_db_1
db_1  | Initializing database
db_1  | 2022-06-12T20:40:55.972908Z 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
db_1  | 2022-06-12T20:40:57.375106Z 0 [Warning] InnoDB: New log files created, LSN=45790
db_1  | 2022-06-12T20:40:57.777213Z 0 [Warning] InnoDB: Creating foreign key constraint system tables.
db_1  | 2022-06-12T20:40:57.892211Z 0 [Warning] No existing UUID has been found, so we assume that this is the first time that this server has been started. Generating a new UUID: f6873623-ea8f-11ec-ae0e-0242ac130002.
db_1  | 2022-06-12T20:40:57.906743Z 0 [Warning] Gtid table is not ready to be used. Table 'mysql.gtid_executed' cannot be opened.
db_1  | 2022-06-12T20:40:58.202898Z 1 [Warning] root@localhost is created with an empty password ! Please consider switching off the --initialize-insecure option.
db_1  | Database initialized
db_1  | Initializing certificates
db_1  | Ignoring -days; not generating a certificate
db_1  | Generating a RSA private key
db_1  | ....+++++
db_1  | .........................................+++++
db_1  | writing new private key to 'ca-key.pem'
db_1  | -----
db_1  | Ignoring -days; not generating a certificate
db_1  | Generating a RSA private key
db_1  | ..............................+++++
db_1  | ........+++++
db_1  | writing new private key to 'server-key.pem'
db_1  | -----
db_1  | Ignoring -days; not generating a certificate
db_1  | Generating a RSA private key
db_1  | .......................+++++
db_1  | ....+++++
db_1  | writing new private key to 'client-key.pem'
db_1  | -----
db_1  | Certificates initialized
db_1  | MySQL init process in progress...
db_1  | 2022-06-12T20:41:04.481239Z 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
db_1  | 2022-06-12T20:41:04.482287Z 0 [Note] mysqld (mysqld 5.7.35-38) starting as process 71 ...
db_1  | 2022-06-12T20:41:04.484377Z 0 [Note] InnoDB: PUNCH HOLE support available
db_1  | 2022-06-12T20:41:04.484391Z 0 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
db_1  | 2022-06-12T20:41:04.484395Z 0 [Note] InnoDB: Uses event mutexes
db_1  | 2022-06-12T20:41:04.484397Z 0 [Note] InnoDB: GCC builtin __atomic_thread_fence() is used for memory barrier
db_1  | 2022-06-12T20:41:04.484399Z 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
db_1  | 2022-06-12T20:41:04.484401Z 0 [Note] InnoDB: Using Linux native AIO
db_1  | 2022-06-12T20:41:04.484553Z 0 [Note] InnoDB: Number of pools: 1
db_1  | 2022-06-12T20:41:04.488770Z 0 [Note] InnoDB: Using CPU crc32 instructions
db_1  | 2022-06-12T20:41:04.490312Z 0 [Note] InnoDB: Initializing buffer pool, total size = 128M, instances = 1, chunk size = 128M
db_1  | 2022-06-12T20:41:04.493196Z 0 [Note] InnoDB: Completed initialization of buffer pool
db_1  | 2022-06-12T20:41:04.494752Z 0 [Note] InnoDB: If the mysqld execution user is authorized, page cleaner thread priority can be changed. See the man page of setpriority().
db_1  | 2022-06-12T20:41:04.505302Z 0 [Note] InnoDB: Crash recovery did not find the parallel doublewrite buffer at /var/lib/mysql/xb_doublewrite
db_1  | 2022-06-12T20:41:04.505736Z 0 [Note] InnoDB: Highest supported file format is Barracuda.
db_1  | 2022-06-12T20:41:04.539720Z 0 [Note] InnoDB: Created parallel doublewrite buffer at /var/lib/mysql/xb_doublewrite, size 3932160 bytes
db_1  | 2022-06-12T20:41:04.542806Z 0 [Note] InnoDB: Creating shared tablespace for temporary tables
db_1  | 2022-06-12T20:41:04.542887Z 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
db_1  | 2022-06-12T20:41:04.638766Z 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
db_1  | 2022-06-12T20:41:04.639263Z 0 [Note] InnoDB: 96 redo rollback segment(s) found. 96 redo rollback segment(s) are active.
db_1  | 2022-06-12T20:41:04.639271Z 0 [Note] InnoDB: 32 non-redo rollback segment(s) are active.
db_1  | 2022-06-12T20:41:04.639464Z 0 [Note] InnoDB: Waiting for purge to start
db_1  | 2022-06-12T20:41:04.689642Z 0 [Note] InnoDB: Percona XtraDB (http://www.percona.com) 5.7.35-38 started; log sequence number 2754187
db_1  | 2022-06-12T20:41:04.689882Z 0 [Note] Plugin 'FEDERATED' is disabled.
db_1  | 2022-06-12T20:41:04.696249Z 0 [Note] Found ca.pem, server-cert.pem and server-key.pem in data directory. Trying to enable SSL support using them.
db_1  | 2022-06-12T20:41:04.696262Z 0 [Note] Skipping generation of SSL certificates as certificate files are present in data directory.
db_1  | 2022-06-12T20:41:04.696265Z 0 [Warning] A deprecated TLS version TLSv1 is enabled. Please use TLSv1.2 or higher.
db_1  | 2022-06-12T20:41:04.696267Z 0 [Warning] A deprecated TLS version TLSv1.1 is enabled. Please use TLSv1.2 or higher.
db_1  | 2022-06-12T20:41:04.696642Z 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
db_1  | 2022-06-12T20:41:04.697623Z 0 [Note] InnoDB: Buffer pool(s) load completed at 220612 20:41:04
db_1  | 2022-06-12T20:41:04.721282Z 0 [Warning] CA certificate ca.pem is self signed.
db_1  | 2022-06-12T20:41:04.721320Z 0 [Note] Skipping generation of RSA key pair as key files are present in data directory.
db_1  | 2022-06-12T20:41:04.734703Z 0 [Note] Event Scheduler: Loaded 0 events
db_1  | 2022-06-12T20:41:04.734825Z 0 [Note] mysqld: ready for connections.
db_1  | Version: '5.7.35-38'  socket: '/var/lib/mysql/mysql.sock'  port: 0  Percona Server (GPL), Release 38, Revision 3692a61
db_1  | mysql: [Warning] Using a password on the command line interface can be insecure.
db_1  | Warning: Unable to load '/usr/share/zoneinfo/iso3166.tab' as time zone. Skipping it.
db_1  | Warning: Unable to load '/usr/share/zoneinfo/leapseconds' as time zone. Skipping it.
db_1  | Warning: Unable to load '/usr/share/zoneinfo/tzdata.zi' as time zone. Skipping it.
db_1  | Warning: Unable to load '/usr/share/zoneinfo/zone.tab' as time zone. Skipping it.
db_1  | Warning: Unable to load '/usr/share/zoneinfo/zone1970.tab' as time zone. Skipping it.
db_1  | mysql: [Warning] Using a password on the command line interface can be insecure.
db_1  |
db_1  | /docker-entrypoint.sh: running /docker-entrypoint-initdb.d/db_custom_init.sh
db_1  | mysql: [Warning] Using a password on the command line interface can be insecure.
db_1  | mysql: [Warning] Using a password on the command line interface can be insecure.
db_1  |
db_1  | 2022-06-12T20:41:09.106816Z 0 [Note] Giving 1 client threads a chance to die gracefully
db_1  | 2022-06-12T20:41:09.106835Z 0 [Note] Shutting down slave threads
db_1  | 2022-06-12T20:41:11.115051Z 0 [Note] Forcefully disconnecting 0 remaining clients
db_1  | 2022-06-12T20:41:11.115077Z 0 [Note] Event Scheduler: Purging the queue. 0 events
db_1  | 2022-06-12T20:41:11.116654Z 0 [Note] Binlog end
db_1  | 2022-06-12T20:41:11.117666Z 0 [Note] Shutting down plugin 'ngram'
db_1  | 2022-06-12T20:41:11.117676Z 0 [Note] Shutting down plugin 'partition'
db_1  | 2022-06-12T20:41:11.117678Z 0 [Note] Shutting down plugin 'BLACKHOLE'
db_1  | 2022-06-12T20:41:11.117683Z 0 [Note] Shutting down plugin 'ARCHIVE'
db_1  | 2022-06-12T20:41:11.117684Z 0 [Note] Shutting down plugin 'MRG_MYISAM'
db_1  | 2022-06-12T20:41:11.117686Z 0 [Note] Shutting down plugin 'MyISAM'
db_1  | 2022-06-12T20:41:11.117695Z 0 [Note] Shutting down plugin 'INNODB_TABLESPACES_SCRUBBING'
db_1  | 2022-06-12T20:41:11.117697Z 0 [Note] Shutting down plugin 'INNODB_TABLESPACES_ENCRYPTION'
db_1  | 2022-06-12T20:41:11.117699Z 0 [Note] Shutting down plugin 'INNODB_SYS_VIRTUAL'
db_1  | 2022-06-12T20:41:11.117700Z 0 [Note] Shutting down plugin 'INNODB_CHANGED_PAGES'
db_1  | 2022-06-12T20:41:11.117702Z 0 [Note] Shutting down plugin 'INNODB_SYS_DATAFILES'
db_1  | 2022-06-12T20:41:11.117703Z 0 [Note] Shutting down plugin 'INNODB_SYS_TABLESPACES'
db_1  | 2022-06-12T20:41:11.117705Z 0 [Note] Shutting down plugin 'INNODB_SYS_FOREIGN_COLS'
db_1  | 2022-06-12T20:41:11.117707Z 0 [Note] Shutting down plugin 'INNODB_SYS_FOREIGN'
db_1  | 2022-06-12T20:41:11.117708Z 0 [Note] Shutting down plugin 'INNODB_SYS_FIELDS'
db_1  | 2022-06-12T20:41:11.117710Z 0 [Note] Shutting down plugin 'INNODB_SYS_COLUMNS'
db_1  | 2022-06-12T20:41:11.117711Z 0 [Note] Shutting down plugin 'INNODB_SYS_INDEXES'
db_1  | 2022-06-12T20:41:11.117713Z 0 [Note] Shutting down plugin 'INNODB_SYS_TABLESTATS'
db_1  | 2022-06-12T20:41:11.117715Z 0 [Note] Shutting down plugin 'INNODB_SYS_TABLES'
db_1  | 2022-06-12T20:41:11.117716Z 0 [Note] Shutting down plugin 'INNODB_FT_INDEX_TABLE'
db_1  | 2022-06-12T20:41:11.117718Z 0 [Note] Shutting down plugin 'INNODB_FT_INDEX_CACHE'
db_1  | 2022-06-12T20:41:11.117719Z 0 [Note] Shutting down plugin 'INNODB_FT_CONFIG'
db_1  | 2022-06-12T20:41:11.117721Z 0 [Note] Shutting down plugin 'INNODB_FT_BEING_DELETED'
db_1  | 2022-06-12T20:41:11.117723Z 0 [Note] Shutting down plugin 'INNODB_FT_DELETED'
db_1  | 2022-06-12T20:41:11.117724Z 0 [Note] Shutting down plugin 'INNODB_FT_DEFAULT_STOPWORD'
db_1  | 2022-06-12T20:41:11.117726Z 0 [Note] Shutting down plugin 'INNODB_METRICS'
db_1  | 2022-06-12T20:41:11.117728Z 0 [Note] Shutting down plugin 'INNODB_TEMP_TABLE_INFO'
db_1  | 2022-06-12T20:41:11.117729Z 0 [Note] Shutting down plugin 'INNODB_BUFFER_POOL_STATS'
db_1  | 2022-06-12T20:41:11.117731Z 0 [Note] Shutting down plugin 'INNODB_BUFFER_PAGE_LRU'
db_1  | 2022-06-12T20:41:11.117733Z 0 [Note] Shutting down plugin 'INNODB_BUFFER_PAGE'
db_1  | 2022-06-12T20:41:11.117734Z 0 [Note] Shutting down plugin 'INNODB_CMP_PER_INDEX_RESET'
db_1  | 2022-06-12T20:41:11.117736Z 0 [Note] Shutting down plugin 'INNODB_CMP_PER_INDEX'
db_1  | 2022-06-12T20:41:11.117737Z 0 [Note] Shutting down plugin 'INNODB_CMPMEM_RESET'
db_1  | 2022-06-12T20:41:11.117739Z 0 [Note] Shutting down plugin 'INNODB_CMPMEM'
db_1  | 2022-06-12T20:41:11.117741Z 0 [Note] Shutting down plugin 'INNODB_CMP_RESET'
db_1  | 2022-06-12T20:41:11.117742Z 0 [Note] Shutting down plugin 'INNODB_CMP'
db_1  | 2022-06-12T20:41:11.117744Z 0 [Note] Shutting down plugin 'INNODB_LOCK_WAITS'
db_1  | 2022-06-12T20:41:11.117746Z 0 [Note] Shutting down plugin 'INNODB_LOCKS'
db_1  | 2022-06-12T20:41:11.117747Z 0 [Note] Shutting down plugin 'INNODB_TRX'
db_1  | 2022-06-12T20:41:11.117749Z 0 [Note] Shutting down plugin 'XTRADB_ZIP_DICT_COLS'
db_1  | 2022-06-12T20:41:11.117751Z 0 [Note] Shutting down plugin 'XTRADB_ZIP_DICT'
db_1  | 2022-06-12T20:41:11.117752Z 0 [Note] Shutting down plugin 'XTRADB_RSEG'
db_1  | 2022-06-12T20:41:11.117754Z 0 [Note] Shutting down plugin 'XTRADB_INTERNAL_HASH_TABLES'
db_1  | 2022-06-12T20:41:11.117755Z 0 [Note] Shutting down plugin 'XTRADB_READ_VIEW'
db_1  | 2022-06-12T20:41:11.117757Z 0 [Note] Shutting down plugin 'InnoDB'
db_1  | 2022-06-12T20:41:11.117797Z 0 [Note] InnoDB: FTS optimize thread exiting.
db_1  | 2022-06-12T20:41:11.120826Z 0 [Note] InnoDB: Starting shutdown...
db_1  | 2022-06-12T20:41:11.221153Z 0 [Note] InnoDB: Dumping buffer pool(s) to /var/lib/mysql/ib_buffer_pool
db_1  | 2022-06-12T20:41:11.221330Z 0 [Note] InnoDB: Buffer pool(s) dump completed at 220612 20:41:11
db_1  | 2022-06-12T20:41:11.922177Z 0 [Note] InnoDB: Waiting for page_cleaner to finish flushing of buffer pool
db_1  | 2022-06-12T20:41:13.235132Z 0 [Note] InnoDB: Shutdown completed; log sequence number 12339191
db_1  | 2022-06-12T20:41:13.236099Z 0 [Note] InnoDB: Removed temporary tablespace data file: "ibtmp1"
db_1  | 2022-06-12T20:41:13.236112Z 0 [Note] Shutting down plugin 'MEMORY'
db_1  | 2022-06-12T20:41:13.236118Z 0 [Note] Shutting down plugin 'CSV'
db_1  | 2022-06-12T20:41:13.236121Z 0 [Note] Shutting down plugin 'PERFORMANCE_SCHEMA'
db_1  | 2022-06-12T20:41:13.236138Z 0 [Note] Shutting down plugin 'sha256_password'
db_1  | 2022-06-12T20:41:13.236141Z 0 [Note] Shutting down plugin 'mysql_native_password'
db_1  | 2022-06-12T20:41:13.236243Z 0 [Note] Shutting down plugin 'binlog'
db_1  | 2022-06-12T20:41:13.237182Z 0 [Note] mysqld: Shutdown complete
db_1  |
db_1  |
db_1  | MySQL init process done. Ready for start up.
db_1  |
db_1  | 2022-06-12T20:41:13.501608Z 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
db_1  | 2022-06-12T20:41:13.502713Z 0 [Note] mysqld (mysqld 5.7.35-38) starting as process 1 ...
db_1  | 2022-06-12T20:41:13.504823Z 0 [Note] InnoDB: PUNCH HOLE support available
db_1  | 2022-06-12T20:41:13.504837Z 0 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
db_1  | 2022-06-12T20:41:13.504840Z 0 [Note] InnoDB: Uses event mutexes
db_1  | 2022-06-12T20:41:13.504842Z 0 [Note] InnoDB: GCC builtin __atomic_thread_fence() is used for memory barrier
db_1  | 2022-06-12T20:41:13.504844Z 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
db_1  | 2022-06-12T20:41:13.504847Z 0 [Note] InnoDB: Using Linux native AIO
db_1  | 2022-06-12T20:41:13.505000Z 0 [Note] InnoDB: Number of pools: 1
db_1  | 2022-06-12T20:41:13.509998Z 0 [Note] InnoDB: Using CPU crc32 instructions
db_1  | 2022-06-12T20:41:13.511370Z 0 [Note] InnoDB: Initializing buffer pool, total size = 128M, instances = 1, chunk size = 128M
db_1  | 2022-06-12T20:41:13.514353Z 0 [Note] InnoDB: Completed initialization of buffer pool
db_1  | 2022-06-12T20:41:13.518876Z 0 [Note] InnoDB: If the mysqld execution user is authorized, page cleaner thread priority can be changed. See the man page of setpriority().
db_1  | 2022-06-12T20:41:13.529459Z 0 [Note] InnoDB: Crash recovery did not find the parallel doublewrite buffer at /var/lib/mysql/xb_doublewrite
db_1  | 2022-06-12T20:41:13.529942Z 0 [Note] InnoDB: Highest supported file format is Barracuda.
db_1  | 2022-06-12T20:41:13.566155Z 0 [Note] InnoDB: Created parallel doublewrite buffer at /var/lib/mysql/xb_doublewrite, size 3932160 bytes
db_1  | 2022-06-12T20:41:13.569447Z 0 [Note] InnoDB: Creating shared tablespace for temporary tables
db_1  | 2022-06-12T20:41:13.569530Z 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
db_1  | 2022-06-12T20:41:13.640314Z 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
db_1  | 2022-06-12T20:41:13.640974Z 0 [Note] InnoDB: 96 redo rollback segment(s) found. 96 redo rollback segment(s) are active.
db_1  | 2022-06-12T20:41:13.640984Z 0 [Note] InnoDB: 32 non-redo rollback segment(s) are active.
db_1  | 2022-06-12T20:41:13.641235Z 0 [Note] InnoDB: Waiting for purge to start
db_1  | 2022-06-12T20:41:13.691475Z 0 [Note] InnoDB: Percona XtraDB (http://www.percona.com) 5.7.35-38 started; log sequence number 12339191
db_1  | 2022-06-12T20:41:13.691741Z 0 [Note] Plugin 'FEDERATED' is disabled.
db_1  | 2022-06-12T20:41:13.696145Z 0 [Note] Found ca.pem, server-cert.pem and server-key.pem in data directory. Trying to enable SSL support using them.
db_1  | 2022-06-12T20:41:13.696157Z 0 [Note] Skipping generation of SSL certificates as certificate files are present in data directory.
db_1  | 2022-06-12T20:41:13.696161Z 0 [Warning] A deprecated TLS version TLSv1 is enabled. Please use TLSv1.2 or higher.
db_1  | 2022-06-12T20:41:13.696162Z 0 [Warning] A deprecated TLS version TLSv1.1 is enabled. Please use TLSv1.2 or higher.
db_1  | 2022-06-12T20:41:13.696799Z 0 [Warning] CA certificate ca.pem is self signed.
db_1  | 2022-06-12T20:41:13.696830Z 0 [Note] Skipping generation of RSA key pair as key files are present in data directory.
db_1  | 2022-06-12T20:41:13.697187Z 0 [Note] Server hostname (bind-address): '*'; port: 3306
db_1  | 2022-06-12T20:41:13.697222Z 0 [Note] IPv6 is available.
db_1  | 2022-06-12T20:41:13.697229Z 0 [Note]   - '::' resolves to '::';
db_1  | 2022-06-12T20:41:13.697246Z 0 [Note] Server socket created on IP: '::'.
db_1  | 2022-06-12T20:41:13.700328Z 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
db_1  | 2022-06-12T20:41:13.705620Z 0 [Note] InnoDB: Buffer pool(s) load completed at 220612 20:41:13
db_1  | 2022-06-12T20:41:13.717933Z 0 [Note] Event Scheduler: Loaded 0 events
db_1  | 2022-06-12T20:41:13.718058Z 0 [Note] mysqld: ready for connections.
db_1  | Version: '5.7.35-38'  socket: '/var/lib/mysql/mysql.sock'  port: 3306  Percona Server (GPL), Release 38, Revision 3692a61
^CGracefully stopping... (press Ctrl+C again to force)
Stopping percona-test_db_1 ... done

```

## Using docker file

```
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
```


## Output

```
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
```


