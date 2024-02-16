#!/bin/bash

# MySQL credentials
MYSQL_USER="root"
MYSQL_PASS="mysqlnow2024"  # Replace with your MySQL root password

# Check MySQL connection
mysqladmin -u $MYSQL_USER -p$MYSQL_PASS ping

# The following command assumes you have an SQL file that sets up your database
# and tables which you run to perform the initial database setup.
# Replace '/path/to/initial_setup.sql' with the path to your SQL script file.

mysql -u $MYSQL_USER -p$MYSQL_PASS < "/c/Users/VIVID HORIZON/Desktop/Second project/initial_setup.sql"





echo "Initial MySQL setup is complete."
