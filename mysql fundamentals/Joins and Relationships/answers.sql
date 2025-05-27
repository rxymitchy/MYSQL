-- Bills and Payments Table Join
-- Retrieve TotalAmount and Status from bills, and DueDate, PaymentMethod, and PaymentAmount from payments
SELECT 
    b.TotalAmount, 
    b.Status, 
    p.DueDate, 
    p.PaymentMethod, 
    p.PaymentAmount
FROM 
    bills b
INNER JOIN 
    payments p
ON 
    b.BillID = p.BillID;


-- Customer and Bills Table Join
-- Retrieve customerName, email, and customerAddress from customer, and TotalAmount and Status from bills
SELECT 
    c.customerName, 
    c.email, 
    c.customerAddress, 
    b.TotalAmount, 
    b.Status
FROM 
    customer c
LEFT JOIN 
    bills b
ON 
    c.customerID = b.customerID;


-- Bills and Bill Items Table Join
-- Retrieve BillDate, DueDate, Status, ItemDescription, Quantity, LineTotal, and calculate Number_of_Days
SELECT 
    b.BillDate, 
    b.DueDate, 
    bi.Status, 
    bi.ItemDescription, 
    bi.Quantity, 
    bi.LineTotal,
    DATEDIFF(b.DueDate, b.BillDate) AS Number_of_Days
FROM 
    bills b
RIGHT JOIN 
    bill_items bi
ON 
    b.BillID = bi.BillID;


-- One-to-One Relationship: Users and User Profiles
-- Create the users table
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL
);

-- Create the user_profiles table with a one-to-one relationship
CREATE TABLE user_profiles (
    profile_id INT PRIMARY KEY,
    user_id INT UNIQUE NOT NULL,
    profile_data TEXT,
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
);


-- One-to-Many Relationship: Departments and Employees
-- Create the departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Create the employees table with a one-to-many relationship
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT,
    CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES departments(department_id)
);


--  Categories, Bills, and Customer Tables Join
-- Retrieve CategoryName, TotalAmount, DueDate, customerName, and customerAddress
SELECT 
    cat.CategoryName, 
    b.TotalAmount, 
    b.DueDate, 
    c.customerName, 
    c.customerAddress
FROM 
    categories cat
INNER JOIN 
    bills b
ON 
    cat.CategoryID = b.CategoryID
LEFT JOIN 
    customer c
ON 
    b.CustomerID = c.CustomerID;
