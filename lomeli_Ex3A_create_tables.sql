DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customers (
customer_id INT PRIMARY KEY,
name VARCHAR(100),
phone VARCHAR(20),
email VARCHAR(100),
address VARCHAR(150)
);

CREATE TABLE Walks (
walk_id INT PRIMARY KEY,
date DATE,
time TIME,
duration INT,
status VARCHAR(50)
);

CREATE TABLE Dogs (
dog_id INT PRIMARY KEY,
name VARCHAR(100),
breed VARCHAR(100),
age INT,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Payments (
payment_id INT PRIMARY KEY,
customer_id INT,
amount DECIMAL(10,2),
date DATE,
method VARCHAR(50),
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) 
);

CREATE TABLE Walk_Dogs (
walk_id INT,
dog_id INT,
PRIMARY KEY (walk_id, dog_id),
FOREIGN KEY (walk_id) REFERENCES Walks(walk_id),
FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id)
);