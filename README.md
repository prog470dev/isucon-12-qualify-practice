# isucon-12-qualify-practice

This is a practice repository for isucon12-qualify using the AMI introduced at https://github.com/matsuu/aws-isucon/tree/main . 

## Migrating Tenant Data from SQLite to MySQL

Migrate initial data from sqlite to mysql:
```
$ ./scripts/migrate_tenant_db.sh
```

Add the minimum index to prevent timeouts:
```
$ mysql -uisucon -pisucon --host 127.0.0.1 --port 3306 isuports < ./sql/01_migrate.sql
```

## Preparing to Run the Benchmark

Initialize mysql talent data (normally, this needs to be done with the initialize api):
```
$ ./scripts/reset_mysql_tenant.sh
```

Apply changes and restart:
```
$ ./scripts/restart.sh
```

## Gathering Logs After Running the Benchmark
Gather logs:
```
$ ./scripts/report_log.sh
```

View logs:
```
// nginx access log
$ cat reports/alp.log
// msyql slow query log
$ cat reports/pt-query-digest.log
```