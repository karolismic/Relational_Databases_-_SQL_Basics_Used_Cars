**1. Setting Up the MySQL Database**

*Using MySQL Workbench:*

MySQL Workbench was launched, and a connection to the local MySQL server instance was established.
A new schema (database) named CarDatabase was created via the Workbench interface by selecting "Create Schema" from the context menu in the Schemas panel.
The changes were applied to instantiate the schema, preparing a container for the upcoming tables and data.

Using Git Bash:

A Bash script named setup_mysql.sh was prepared, containing SQL statements for establishing the database CarDatabase schema and structure also a table CarDetails was created.
Execution of this script through Git Bash ensured that MySQL service was running and that the database was ready for table creation.

**2. Ingesting Data Into the Database**

*Preparing the Data:*

The CSV file was positioned in the MySQL Uploads directory, as determined by the secure_file_priv configuration of MySQL.
Permissions were verified to ensure that the MySQL server had read access to the files.
Using Git Bash:

A script named ingest_data.sh was developed, incorporating SQL commands within a Bash script to load data into MySQL.
The LOAD DATA LOCAL INFILE SQL statement was utilized within the script to import the contents of the CSV files into their respective tables in the CarDatabase.
This script was executed in Git Bash, which handled the data loading process into the MySQL tables.

**3. Setting Up an Account for a User**

*Using MySQL Workbench:*

A new MySQL user account was established through the User and Privileges interface of MySQL Workbench.
Necessary privileges for interacting with the CarDatabase schema were granted, such as SELECT, INSERT, UPDATE, and DELETE, without conferring administrative rights.
Using Git Bash:

An alternative method involved the use of a Bash script named create_user.sh, embedding SQL statements for user creation and privilege assignment.
Like the prior scripts, this one was run from Git Bash, applying the changes directly to the MySQL server.

**4. Normalizing the Data to the 2NF (Second Normal Form)**

*Using MySQL Workbench:*

The table structures and relationships were examined to confirm adherence to the Second Normal Form.
The process involved ensuring that the database was already in the First Normal Form, eliminating duplicate columns within the same table, and segregating related data into separate tables.
Partial dependencies were removed to eradicate situations where a non-primary-key column relied only on part of a composite primary key.
Additional tables were created as necessary, with appropriate foreign key relationships established to uphold 2NF standards.

**5. Database Backup and Restoration**

Database Backup:

Using MySQL Workbench:

To perform a backup using MySQL Workbench, the 'Data Export' option under the 'Server' tab was selected.
The specific database (CarDatabase) was chosen, and the desired export options were set, including the backup destination path.
After configuring the options, the 'Start Export' button was clicked to create a .sql file, which is the backup of the database.
Using Git Bash:

A Bash script named backup_db.sh was prepared to use the mysqldump command-line utility for backing up the database.
The script was run in Git Bash, which executed the mysqldump command, specifying the user, password, and database name, along with the output file path for the backup.
Upon completion, a message confirmed the backup, and the .sql file was stored in the specified backup directory.
Database Restoration:

Using MySQL Workbench:

For restoration, MySQL Workbench's 'Data Import' function was utilized.
The .sql backup file was located and selected as the source for the import.
The appropriate database was chosen to receive the data, and the 'Start Import' action was initiated, effectively restoring the database from the backup file.

*Using Git Bash:*

To restore the database via Git Bash, a script named restore_db.sh was created.
This script utilized the mysql command, indicating the user, password, and database into which the data from the .sql file should be imported.
After executing the script in Git Bash, the data from the .sql file was imported back into CarDatabase, completing the restoration process.

*Additional notes*

The table creation script could be modified to refine the database structure, ensuring that all non-key attributes were fully functionally dependent on the primary key alone.
Throughout this process, MySQL Workbench provided a graphical interface for database manipulation, while Git Bash offered a powerful means for scripting and automation. This dual-approach facilitated the efficient setup of the database environment, secure data ingestion, user privilege management, and adherence to the normalization standards of the Second Normal Form.1. Setting Up the MySQL Database

*Using MySQL Workbench:*

MySQL Workbench was launched, and a connection to the local MySQL server instance was established.
A new schema (database) named CarDatabase was created via the Workbench interface by selecting "Create Schema" from the context menu in the Schemas panel.

The changes were applied to instantiate the schema, preparing a container for the upcoming tables and data.

*Using Git Bash:*

A Bash script named setup_mysql.sh was prepared, containing SQL statements for establishing the database schema and structure.
Execution of this script through Git Bash ensured that MySQL service was running and that the database was ready for table creation.

Throughout this process, MySQL Workbench provided a graphical interface for database manipulation, while Git Bash offered a powerful means for scripting and automation. This dual-approach facilitated the efficient setup of the database environment, secure data ingestion, user privilege management, and adherence to the normalization standards of the Second Normal Form. 
