#!/bin/bash

# Restore the CarDatabase from a SQL backup file

MYSQL_USER="root"
MYSQL_PASS="mysqlnow2024"
DATABASE_NAME="CarDatabase"
BACKUP_PATH="/c/Users/VIVID HORIZON/Desktop/Second project/mySQLbackups/CarDatabaseBackup.sql"

# Ensure the MySQL Server is running before attempting to restore the database.

mysql -u "$MYSQL_USER" -p"$MYSQL_PASS" "$DATABASE_NAME" < "$BACKUP_PATH"

echo "Database restore complete."

