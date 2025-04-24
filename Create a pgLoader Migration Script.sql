
LOAD DATABASE
     FROM mysql://root:yourpassword@localhost/your_mysql_db
     INTO postgresql://postgres:yourpgpassword@localhost/your_postgres_db

WITH include drop, create tables, create indexes, reset sequences, data only

SET work_mem TO '16MB', maintenance_work_mem TO '512 MB';
