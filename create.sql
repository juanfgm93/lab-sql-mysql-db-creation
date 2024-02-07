# Create a database
CREATE DATABASE lab1_db;

DROP DATABASE lab1_db;

#  Creating tables:
CREATE TABLE lab1_db.cars(id INT AUTO_INCREMENT PRIMARY KEY,
							vin VARCHAR(60),
							manufacturer VARCHAR(60),
                            model VARCHAR(60),
                            year INT,
                            color VARCHAR(60));
CREATE TABLE lab1_db.customers(id INT AUTO_INCREMENT PRIMARY KEY,
							cust_id INT,
							cust_name VARCHAR(60),
                            cust_phone_number VARCHAR(60),
                            cust_email VARCHAR(60),
                            cust_address VARCHAR(60),
                            cust_city VARCHAR(60),
                            cust_state_province VARCHAR(60),
                            cust_country VARCHAR(60),
                            cust_zipcode INT);
CREATE TABLE lab1_db.salespersons(id INT AUTO_INCREMENT PRIMARY KEY,
							staff_id INT,
							name VARCHAR(60),
                            store VARCHAR(60));
CREATE TABLE lab1_db.invoices(id INT AUTO_INCREMENT PRIMARY KEY,
							invoice_number INT,
							date DATE,
                            car INT,
                            customer INT,
                            salesperson INT,
                            FOREIGN KEY (car) REFERENCES lab1_db.cars(id),
							FOREIGN KEY (customer) REFERENCES lab1_db.customers(id),
							FOREIGN KEY (salesperson) REFERENCES lab1_db.salespersons(id));
                            
