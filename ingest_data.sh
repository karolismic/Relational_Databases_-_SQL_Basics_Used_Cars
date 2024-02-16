#!/bin/bash

# MySQL credentials
MYSQL_USER="root"
MYSQL_PASS="mysqlnow2024"  # Replace with your MySQL root password

# Database and table names
DATABASE_NAME="CarDatabase"
TABLE_CAR_DETAILS="CarDetails"

# CSV file path for the merged CSV
CSV="C/ProgramData/MySQL/MySQL Server 8.0/Uploads/2NF_vehicles_specifications.csv"

# SQL Commands
SQL="CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;
     USE $DATABASE_NAME;
     DROP TABLE IF EXISTS $TABLE_CAR_DETAILS;
     CREATE TABLE $TABLE_CAR_DETAILS (
         Model_ID INT PRIMARY KEY,
         Car_Name VARCHAR(255),
         Make VARCHAR(50),
         Model VARCHAR(50),
         Make_Year INT,
         Color VARCHAR(50),
         Body_Type VARCHAR(50),
         Mileage_Run VARCHAR(50),
         No_of_Owners VARCHAR(10),
         Seating_Capacity INT,
         Fuel_Type VARCHAR(50),
         Fuel_Tank_Capacity_L INT,
         Engine_Type VARCHAR(100),
         CC_Displacement INT,
         Transmission VARCHAR(50),
         Transmission_Type VARCHAR(50),
         Power_BHP DECIMAL(5,2),
         Torque_Nm DECIMAL(5,2),
         Mileage_kmpl VARCHAR(50),
         Emission VARCHAR(50),
         Price VARCHAR(50)
     );
     LOAD DATA LOCAL INFILE '$CSV'
     INTO TABLE $TABLE_CAR_DETAILS
     FIELDS TERMINATED BY ','
     ENCLOSED BY '\"'
     LINES TERMINATED BY '\\n'
     IGNORE 1 ROWS;
    "

# Execute SQL Commands
echo "$SQL" | mysql --local-infile=1 -u $MYSQL_USER -p$MYSQL_PASS

echo "Data ingestion complete."
