# EmployeeManagementSystem
This project is created to show SQL concepts, queries, stored procedures, views and triggers. The idea of this project is of an Employee Management System that is being built using MySQL.


## Setup General Information
You can set up and run this project by choosing to use **Docker** or by manually installing **MySQL**.

### Setup by running Docker
To set up the MySQL database using Docker, follow these steps:

1. Install Docker and Docker Compose.
2. Clone the repository and navigate to the project folder.
3. Run the following command to start the MySQL database using Docker:
   ```bash
   docker-compose up
4. MySQL with then initialize with the 'schema.sql' and 'insert_data.sql' files located in the 'SQL/' folder
5. To access the MySQL database through your terminal you can use the following code:
   ```bash
    docker exec -it employee_management_db mysql -uuser -ppassword

### Setup by installing MySQL
1. Install MySQL
2. Once MySQL is installed and you have a license then create a new database. This can be done using SQL code such as: 
    ```SQL
sql exec CREATE DATABASE employee_management
3. Run the SQL scripts in the 'SQL/' folder to set up your schema and insert the data:
    ```bash
    mysql -u <your-username> -p employee_management < sql/schema.sql
    mysql -u <your-username> -p employee_management < sql/insert_data.sql
3. Now you can run queries on the database in the MySQL console

### Accessing the Database
After setting up the dtb by docker or by installing MySQL manually, you can then run sample queries in queries.sql and also try stored procedures, triggers, views, etc. 
Note: If you set up the dtb by installing MySQL manually run this cmnd after the schema is initially loaded:
    ```bash
    mysql -u <your-username> -p employee_management < sql/queries.sql


## Database Schema
ERD for the Employee Management System:

![Database Schema](./images/schema_diagram.png)




