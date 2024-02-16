#!/bin/bash
# Backup the CarDatabase to a SQL file

MYSQL_USER="root"
MYSQL_PASS="mysqlnow2024"
DATABASE_NAME="CarDatabase"
BACKUP_PATH="/c/Users/VIVID HORIZON/Desktop/Second project/mySQLbackups/CarDatabaseBackup.sql"



mysqldump -u $MYSQL_USER -p$MYSQL_PASS $DATABASE_NAME > "$BACKUP_PATH"


echo "Database backup complete. File located at \"$BACKUP_PATH\""

