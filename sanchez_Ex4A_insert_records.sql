use lana_dog_walking;

INSERT INTO customers (customer_id, name, phone, email, address) VALUES
(1, 'Alice Sanchez', '510-555-5556', 'alice@email.com', '123 Name St'),
(2, 'Bob Smith', '510-555-1001', 'bob.smith@email.com', '456 Oak Ave'),
(3, 'Carla Gomez', '510-555-1002', 'carla.gomez@email.com', '789 Pine Rd'),
(4, 'David Lee', '510-555-1003', 'david.lee@email.com', '321 Maple St'),
(5, 'Eva Tran', '510-555-1004', 'eva.tran@email.com', '654 Cedar Blvd'),
(6, 'Frank Harris', '510-555-1005', 'frank.harris@email.com', '987 Birch Ln'),
(7, 'Grace Kim', '510-555-1006', 'grace.kim@email.com', '159 Walnut Way'),
(8, 'Henry Patel', '510-555-1007', 'henry.patel@email.com', '753 Cherry Ct'),
(9, 'Isabella Cruz', '510-555-1008', 'isabella.cruz@email.com', '246 Aspen Dr'),
(10, 'Jack ONeil', '510-555-1009', 'jack.oneil@email.com', '852 Spruce St');

INSERT INTO dogs (dog_id, name, breed, age, notes, customer_id) VALUES
(1, 'Barry', 'Pitbull', '7 years', 'Very active', 1),
(2, 'Luna', 'Labrador', '4 years', 'Friendly and calm', 2),
(3, 'Max', 'German Shepherd', '6 years', 'Well trained', 3),
(4, 'Bella', 'Golden Retriever', '3 years', 'Loves people', 4),
(5, 'Rocky', 'Bulldog', '5 years', 'Short walks preferred', 5),
(6, 'Daisy', 'Beagle', '2 years', 'Very curious', 6),
(7, 'Charlie', 'Poodle', '8 years', 'Needs gentle pace', 7),
(8, 'Milo', 'Shih Tzu', '1 year', 'Puppy energy', 8),
(9, 'Lucy', 'Border Collie', '4 years', 'High energy', 9),
(10, 'Tucker', 'Boxer', '6 years', 'Strong puller', 10);

INSERT INTO walks (walk_id, date, time, duration, status, dog_id) VALUES
(1, '2026-04-08', '09:00:00', '01:30:00', 'Done', 1),
(2, '2026-04-10', '08:00:00', '00:45:00', 'Done', 2),
(3, '2026-04-11', '10:30:00', '01:00:00', 'Done', 3),
(4, '2026-04-12', '15:00:00', '00:30:00', 'Cancelled', 4),
(5, '2026-04-13', '09:15:00', '01:15:00', 'Done', 5),
(6, '2026-04-14', '17:30:00', '00:45:00', 'Done', 6),
(7, '2026-04-15', '07:00:00', '00:30:00', 'Scheduled', 7),
(8, '2026-04-16', '11:00:00', '01:00:00', 'Scheduled', 8),
(9, '2026-04-17', '14:00:00', '00:45:00', 'Done', 9),
(10, '2026-04-18', '16:30:00', '00:30:00', 'Done', 10);

INSERT INTO payments (payment_id, amount, date, method, customer_id) VALUES
(1, 50.00, '2026-04-08', 'Card', 1),
(2, 45.00, '2026-04-10', 'Card', 2),
(3, 50.00, '2026-04-11', 'Cash', 3),
(4, 55.00, '2026-04-13', 'Card', 5),
(5, 45.00, '2026-04-14', 'Card', 6),
(6, 50.00, '2026-04-17', 'Cash', 9),
(7, 50.00, '2026-04-18', 'Card', 10),
(8, 50.00, '2026-04-11', 'Card', 3),
(9, 45.00, '2026-04-08', 'Cash', 1),
(10, 55.00, '2026-04-13', 'Card', 5);

select * from customers;
