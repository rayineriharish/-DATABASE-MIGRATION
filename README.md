# -DATABASE-MIGRATION

COMPANY: CODTECH IT SOLUTIONS

*NAME: RAYINERI HARISH

INTERN ID: COD73117

"DOMAIN: SQL

*DURATION: 4 WEEEKS

MENTOR: NEELA SANTOSH
In this task, the objective was to migrate a complete database from MySQL to PostgreSQL and ensure data integrity after migration. The process was carried out using pgAdmin 4 as the management tool for PostgreSQL, alongside a utility called pgLoader to handle the automated migration of both schema and data. This task allowed me to understand the practical steps of database migration and how to ensure a reliable transition between database systems.

🗃️ Why Migrate?
Migrating from MySQL to PostgreSQL is often done to take advantage of PostgreSQL’s advanced features such as better support for complex queries, strict standards compliance, and superior performance for analytical workloads. It also enables better integration with applications that depend on PostgreSQL’s specific capabilities.

🔧 Preparation in pgAdmin 4
The first step involved preparing the PostgreSQL environment using pgAdmin 4. I launched pgAdmin 4 and created a new empty database using the graphical interface. This target database was where all the MySQL data would be migrated.

Creating the new database in pgAdmin 4 was straightforward:

I right-clicked on the “Databases” section.

Selected “Create → Database”.

Named the new database appropriately (e.g., company_migrated).

🚀 Migration Using pgLoader
For the actual migration, I used pgLoader, a command-line tool designed to automate migrations from MySQL to PostgreSQL. I wrote a migration script in .load format that included connection credentials, the source MySQL database, and the target PostgreSQL database. The script handled everything: creating tables, copying data, building indexes, and adjusting data types as needed.

Sample pgLoader script:

lisp
Copy
Edit
LOAD DATABASE
     FROM mysql://root:password@localhost/your_mysql_db
     INTO postgresql://postgres:password@localhost/your_postgres_db

WITH include drop, create tables, create indexes, reset sequences, data only
SET work_mem TO '16MB', maintenance_work_mem TO '512MB';
I executed the script through the terminal, and pgLoader efficiently transferred the schema and data to PostgreSQL. This automated approach saved time and avoided manual conversion errors.

🔍 Post-Migration Verification in pgAdmin 4
After the migration, I used pgAdmin 4 to verify the data and schema integrity. I explored the tables, checked column data types, and used SQL queries to count the number of rows and validate that the data matched the source MySQL database.

For example:

sql
Copy
Edit
SELECT COUNT(*) FROM employees;
I compared this with the MySQL source to confirm that the row counts matched and no data was missing. I also checked foreign key relationships, indexes, and sample records to ensure the data structure remained consistent.

✅ Conclusion
Task 3 successfully demonstrated the full process of database migration from MySQL to PostgreSQL using pgLoader and verified through pgAdmin 4. The process emphasized the importance of planning, tool usage, and validation in data migration tasks. Overall, this task enhanced my understanding of cross-platform database interoperability and gave me hands-on experience with data integrity checks in PostgreSQL using pgAdmin 4.
