-- Retrieve customerName, email, and PhoneNumber from the customer table
SELECT customerName, email, PhoneNumber FROM customer;

-- Retrieve customerName, email, and PhoneNumber where customerAddress is Kisii
SELECT customerName, email, PhoneNumber FROM customer WHERE customerAddress = 'Kisii';

-- Retrieve customerID and TotalAmount where status is unpaid
SELECT customerID, TotalAmount FROM bills WHERE status = 'unpaid';

-- Retrieve customerID, TotalAmount, and CategoryID where status is paid
SELECT customerID, TotalAmount, CategoryID FROM bills WHERE status = 'paid';

-- Retrieve customerID and Status where BillDate is between specified dates
SELECT customerID, Status FROM bills WHERE BillDate BETWEEN '2024-11-01' AND '2024-11-30';

-- Retrieve billID, itemDescription, and LineTotal in descending order
SELECT billID, itemDescription, LineTotal FROM bill_items ORDER BY LineTotal DESC;

-- Retrieve billID, itemDescription, and LineTotal in ascending order
SELECT billID, itemDescription, LineTotal FROM bill_items ORDER BY LineTotal ASC;

-- Retrieve billID, itemDescription, and LineTotal where LineTotal > 100 ordered by billID
SELECT billID, itemDescription, LineTotal FROM bill_items WHERE LineTotal > 100 ORDER BY billID DESC;

-- Retrieve PaymentAmount and PaymentMethod where paymentMethod contains 'esa'
SELECT PaymentAmount, PaymentMethod FROM payments WHERE PaymentMethod LIKE '%esa';

-- Retrieve CustomerName and CustomerAddress where CustomerAddress starts with 'Ki'
SELECT CustomerName, CustomerAddress FROM customer WHERE CustomerAddress LIKE 'Ki%';