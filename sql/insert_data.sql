-- Insert sample data into Customer table
INSERT INTO Customer (FirstName, LastName, Email, Phone, Address)
VALUES 
('John', 'Doe', 'john@example.com', '1234567890', '123 Main St'),
('Jane', 'Smith', 'jane@example.com', '2345678901', '456 Elm St'),
('Alice', 'Brown', 'alice@example.com', '3456789012', '789 Pine St');

-- Insert sample data into Product table
INSERT INTO Product (ProductName, Description, Price, StockQuantity)
VALUES 
('Laptop', 'A powerful gaming laptop', 1200.00, 10),
('Smartphone', 'A high-end smartphone', 800.00, 50),
('Headphones', 'Noise-cancelling over-ear headphones', 200.00, 30);

-- Insert sample data into Order table
INSERT INTO `Order` (TotalAmount, CustomerID)
VALUES 
(1200.00, 1),
(800.00, 2),
(1400.00, 3);

-- Insert sample data into OrderItem table
INSERT INTO OrderItem (OrderID, ProductID, Quantity)
VALUES 
(1, 1, 1),  -- John bought 1 Laptop
(2, 2, 1),  -- Jane bought 1 Smartphone
(3, 1, 1),  -- Alice bought 1 Laptop
(3, 3, 2);  -- Alice also bought 2 Headphones

-- Insert sample data into Payment table
INSERT INTO Payment (OrderID, Amount, PaymentMethod)
VALUES 
(1, 1200.00, 'Credit Card'),
(2, 800.00, 'PayPal'),
(3, 1400.00, 'Credit Card');

-- Insert sample data into Shipping table
INSERT INTO Shipping (OrderID, ShippingAddress, ShippingDate, DeliveryDate)
VALUES 
(1, '123 Main St', NOW(), NOW() + INTERVAL 5 DAY),   -- Shipping for John's order
(2, '456 Elm St', NOW(), NOW() + INTERVAL 3 DAY),    -- Shipping for Jane's order
(3, '789 Pine St', NOW(), NOW() + INTERVAL 7 DAY);   -- Shipping for Alice's order
