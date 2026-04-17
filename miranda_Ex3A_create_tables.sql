DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE Dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    notes TEXT,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Walks (
    walk_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_id INT,
    date DATE,
    time TIME,
    duration INT,
    status VARCHAR(20),
    FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id)
);

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    date DATE,
    method VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


