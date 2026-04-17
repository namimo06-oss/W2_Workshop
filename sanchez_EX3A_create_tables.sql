DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    phone       VARCHAR(20),
    email       VARCHAR(100) UNIQUE,
    address     VARCHAR(255)
);

CREATE TABLE Dogs (
    dog_id      INT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(50) NOT NULL,
    breed       VARCHAR(50),
    age         INT CHECK (age >= 0),
    notes       TEXT,
    customer_id INT NOT NULL,
    CONSTRAINT fk_dogs_customer
        FOREIGN KEY (customer_id)
        REFERENCES Customers (customer_id)
        ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE Walks (
    walk_id   INT AUTO_INCREMENT PRIMARY KEY,
    dog_id    INT NOT NULL,
    date      DATE NOT NULL,
    time      TIME NOT NULL,
    duration  INT CHECK (duration > 0), -- minutes
    status    VARCHAR(20) 
              CHECK (status IN ('scheduled', 'completed', 'cancelled')),
    CONSTRAINT fk_walks_dog
        FOREIGN KEY (dog_id)
        REFERENCES Dogs (dog_id)
        ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE Payments (
    payment_id  INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    amount      DECIMAL(8,2) CHECK (amount >= 0),
    date        DATE NOT NULL,
    method      VARCHAR(30),
    CONSTRAINT fk_payments_customer
        FOREIGN KEY (customer_id)
        REFERENCES Customers (customer_id)
        ON DELETE CASCADE
) ENGINE=InnoDB;
