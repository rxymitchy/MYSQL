-- CREATE DATABASE Sample;

USE Sample;

-- CREATE TABLE users (
 --    user_id INT PRIMARY KEY,
--    username VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE user_profiles (
 --   profile_id INT PRIMARY KEY,
  --  user_id INT UNIQUE NOT NULL,
 --   profile_data TEXT,
  --  CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
-- );

-- Create the departments table
-- CREATE TABLE departments (
--    department_id INT PRIMARY KEY,
--    department_name VARCHAR(100) NOT NULL
-- );

-- Create the employees table with a one-to-many relationship
-- CREATE TABLE employees (
--    employee_id INT PRIMARY KEY,
--    employee_name VARCHAR(100) NOT NULL,
--    department_id INT,
--   CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES departments(department_id)
-- );

-- Create the new 1NF-compliant table
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(50),
    Product VARCHAR(50)
);

-- Insert data into the new table, ensuring one product per row
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
VALUES 
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');
