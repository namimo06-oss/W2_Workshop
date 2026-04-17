USE lana_dog_walking;

INSERT INTO Customers (name, phone, email, address) VALUES
('Maria Lopez', '408-555-1234', 'maria.lopez@email.com', '123 Main St'),
('John Smith', '408-555-5678', 'john.smith@email.com', '456 Oak Ave'),
('Emily Davis', '408-555-9012', 'emily.davis@email.com', '789 Pine Rd'),
('Carlos Ramirez', '408-555-3456', 'carlos.r@email.com', '321 Elm St'),
('Sophia Nguyen', '408-555-7890', 'sophia.nguyen@email.com', '654 Maple Ave'),
('David Kim', '408-555-2345', 'david.kim@email.com', '987 Cedar Blvd'),
('Isabella Garcia', '408-555-6789', 'isabella.g@email.com', '147 Birch Ln'),
('James Wilson', '408-555-1122', 'james.w@email.com', '258 Walnut St'),
('Olivia Martinez', '408-555-3344', 'olivia.m@email.com', '369 Cherry Ave'),
('Daniel Hernandez', '408-555-5566', 'daniel.h@email.com', '159 Spruce St');

INSERT INTO Dogs (name, breed, age, notes, customer_id) VALUES
('Max', 'Golden Retriever', 5, 'Friendly and energetic', 1),
('Bella', 'Labrador', 3, 'Loves playing fetch', 2),
('Charlie', 'Poodle', 4, 'Needs special grooming', 3),
('Lucy', 'Bulldog', 6, 'Calm and slow walker', 4),
('Cooper', 'Beagle', 2, 'Very curious', 5),
('Daisy', 'Chihuahua', 1, 'Small but active', 6),
('Rocky', 'German Shepherd', 7, 'Very protective', 7),
('Luna', 'Husky', 3, 'Needs long walks', 8),
('Milo', 'Terrier', 4, 'Loves attention', 9),
('Sadie', 'Boxer', 5, 'Very playful', 10);

INSERT INTO Walks (dog_id, date, time, duration, status) VALUES
(1, '2026-04-10', '09:00:00', 30, 'Completed'),
(2, '2026-04-10', '10:00:00', 45, 'Completed'),
(3, '2026-04-11', '11:00:00', 30, 'Scheduled'),
(4, '2026-04-11', '12:00:00', 20, 'Completed'),
(5, '2026-04-12', '09:30:00', 60, 'Scheduled'),
(6, '2026-04-12', '10:30:00', 25, 'Cancelled'),
(7, '2026-04-13', '11:30:00', 40, 'Completed'),
(8, '2026-04-13', '01:00:00', 50, 'Scheduled'),
(9, '2026-04-14', '02:00:00', 30, 'Completed'),
(10, '2026-04-14', '03:00:00', 35, 'Scheduled');

INSERT INTO Payments (customer_id, amount, date, method) VALUES
(1, 25.00, '2026-04-10', 'Card'),
(2, 30.00, '2026-04-10', 'Cash'),
(3, 20.00, '2026-04-11', 'Venmo'),
(4, 15.00, '2026-04-11', 'Card'),
(5, 40.00, '2026-04-12', 'Cash'),
(6, 18.00, '2026-04-12', 'Card'),
(7, 35.00, '2026-04-13', 'Venmo'),
(8, 45.00, '2026-04-13', 'Card'),
(9, 22.00, '2026-04-14', 'Cash'),
(10, 28.00, '2026-04-14', 'Venmo');

SELECT * FROM customers;




