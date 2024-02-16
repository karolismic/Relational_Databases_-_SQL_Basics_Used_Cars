**1.Navigate to the folder where project is placed**

cd /c/Users/VIVID\ HORIZON/Desktop/Second\ project

**2.Make shell scripts executable**

chmod +x setup_mysql.sh
chmod +x ingest_data.sh
chmod +x create_user.sh
chmod +x backup_db.sh
chmod +x restore_db.sh

**3.Execute the shell scripts**

./setup_mysql.sh
./ingest_data.sh
./create_user.sh
./backup_db.sh
./restore_db.sh

**4.Commands for mySQL Workbench:**

SHOW GLOBAL VARIABLES LIKE 'local_infile';



SET GLOBAL local_infile = 'ON';

SHOW VARIABLES LIKE 'secure_file_priv';


SELECT * FROM CarDetails;

**5.Password of mySQL Workbench:**
mysqlnow2024


**MySQL Service is Not Running**: The MySQL server may not be running on your system. You need to start the MySQL service.

- Open the Run dialog by pressing `Win + R`, type `services.msc`, and press Enter.
- Find the MySQL service in the list.
- Right-click on it and select "Start". If it's already running, try selecting "Restart".
