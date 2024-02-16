#!/bin/bash

# MySQL credentials
MYSQL_USER="root"
MYSQL_PASS="mysqlnow2024"  # Replace with your MySQL root password

# New user details
NEW_USER="Turing"
NEW_PASS="password123"

# SQL Command
SQL="CREATE USER '$NEW_USER'@'localhost' IDENTIFIED BY '$NEW_PASS';
     GRANT ALL PRIVILEGES ON *.* TO '$NEW_USER'@'localhost' WITH GRANT OPTION;
     FLUSH PRIVILEGES;"

# Execute SQL Command
echo $SQL | mysql --local-infile=1 -u $MYSQL_USER -p$MYSQL_PASS

echo "New user created."

