-- Create the categories table
CREATE TABLE categories (
    categoryID INT AUTO_INCREMENT PRIMARY KEY,
    categoryName VARCHAR(50)
);

-- Insert categories into the categories table
INSERT INTO categories (categoryName) 
VALUES 
    ('Electronics'),
    ('Furniture'),
    ('Groceries'),
    ('Clothing'),
    ('Utilities');

-- Create the customer table
CREATE TABLE customer (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    customerName VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    phoneNumber VARCHAR(11),
    customerAddress VARCHAR(20),
    dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert customer records into the customer table
INSERT INTO customer (customerName, email, phoneNumber, customerAddress) 
VALUES 
    ('John Doe', 'john.doe@example.com', '1234567890', 'Westlands'),
    ('Jane Smith', 'jane.smith@example.com', '0987654321', 'South B'),
    ('Mark Lee', 'mark.lee@example.com', '1122334455', 'Kilimani'),
    ('Emma Brown', 'emma.brown@example.com', '5566778899', 'Runda');

-- Update customerAddress to "Lavington" for two customers
UPDATE customer 
SET customerAddress = 'Lavington' 
WHERE customerID IN (1, 2);

-- Delete a category from the categories table where categoryID is 2
DELETE FROM categories 
WHERE categoryID = 2;


