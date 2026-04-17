USE lana_dog_walking;

-- Insert data
INSERT INTO Customers (customer_id, name, phone, email, address)
VALUES
(1, 'James Carter', '831-555-2045', 'james.carter@email.com', '210 Pine St'),
(2, 'Sofia Ramirez', '831-555-3187', 'sofia.ramirez@email.com', '78 Maple Ave'),
(3, 'Liam Johnson', '831-555-4421', 'liam.johnson@email.com', '556 Cedar Rd'),
(4, 'Ava Martinez', '831-555-5566', 'ava.martinez@email.com', '34 Birch St'),
(5, 'Noah Wilson', '831-555-6677', 'noah.wilson@email.com', '890 Walnut St'),
(6, 'Isabella Garcia', '831-555-7788', 'isabella.garcia@email.com', '129 Elm St'),
(7, 'Ethan Brown', '831-555-8899', 'ethan.brown@email.com', '642 Spruce Ln'),
(8, 'Mia Davis', '831-555-9900', 'mia.davis@email.com', '17 Redwood Dr'),
(9, 'Lucas Hernandez', '831-555-1357', 'lucas.hernandez@email.com', '903 Aspen Way'),
(10, 'Amelia Torres', '831-555-2468', 'amelia.torres@email.com', '55 Willow Ct');

INSERT INTO Dogs (dog_id, name, breed, age, customer_id)
VALUES
(1, 'Max', 'Golden Retriever', 5, 1),
(2, 'Bella', 'French Bulldog', 3, 2),
(3, 'Charlie', 'Poodle', 4, 3),
(4, 'Lucy', 'Beagle', 2, 4),
(5, 'Cooper', 'German Shepherd', 6, 5),
(6, 'Daisy', 'Cocker Spaniel', 3, 6),
(7, 'Rocky', 'Boxer', 5, 7),
(8, 'Luna', 'Husky', 2, 8),
(9, 'Milo', 'Dachshund', 4, 9),
(10, 'Sadie', 'Chihuahua', 1, 10);

INSERT INTO Walks (walk_id, date, time, duration, status)
VALUES
(1, '2026-04-17', '09:00:00', 30, 'Completed'),
(2, '2026-04-17', '10:00:00', 45, 'Completed'),
(3, '2026-04-17', '11:00:00', 30, 'Completed'),
(4, '2026-04-17', '12:00:00', 60, 'Scheduled'),
(5, '2026-04-18', '09:30:00', 30, 'Completed'),
(6, '2026-04-18', '10:30:00', 45, 'Completed'),
(7, '2026-04-18', '11:30:00', 30, 'Scheduled'),
(8, '2026-04-19', '08:00:00', 60, 'Completed'),
(9, '2026-04-19', '09:00:00', 30, 'Completed'),
(10, '2026-04-19', '10:00:00', 45, 'Scheduled');

INSERT INTO Walk_Dogs (walk_id, dog_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Payments (payment_id, customer_id, amount, date, method)
VALUES
(1, 1, 25.00, '2026-04-17', 'Credit Card'),
(2, 2, 30.00, '2026-04-17', 'Cash'),
(3, 3, 25.00, '2026-04-17', 'Debit Card'),
(4, 4, 40.00, '2026-04-17', 'Credit Card'),
(5, 5, 35.00, '2026-04-18', 'Cash'),
(6, 6, 25.00, '2026-04-18', 'Debit Card'),
(7, 7, 45.00, '2026-04-18', 'Credit Card'),
(8, 8, 30.00, '2026-04-19', 'Cash'),
(9, 9, 25.00, '2026-04-19', 'Debit Card'),
(10, 10, 50.00, '2026-04-19', 'Credit Card');

-- Check data
SELECT * FROM Customers;
SELECT * FROM Dogs;
SELECT * FROM Walks;
SELECT * FROM Walk_Dogs;
SELECT * FROM Payments;




