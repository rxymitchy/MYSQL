-- Question 1: Top 5 customers with highest total bill amount
SELECT CustomerID, SUM(TotalAmount) AS TotalBillAmount
FROM bills
GROUP BY CustomerID
ORDER BY TotalBillAmount DESC
LIMIT 5;

-- Question 2: Average time taken to pay a bill for each customer
SELECT CustomerID, AVG(DATEDIFF(DueDate, BillDate)) AS AvgTimeToPay
FROM bills
WHERE Status = 'Paid'
GROUP BY CustomerID;

-- Question 3: Customers who have never made a late payment
SELECT DISTINCT CustomerID
FROM bills
WHERE DATEDIFF(DueDate, BillDate) >= 0
  AND Status = 'Paid';

-- Question 4: Total amount generated from bills
SELECT SUM(LineTotal) AS TotalAmountGenerated
FROM bill_items;

-- Question 5: Item with the highest LineTotal
SELECT ItemID, MAX(LineTotal) AS MaxLineTotal
FROM bill_items
GROUP BY ItemID
ORDER BY MaxLineTotal DESC
LIMIT 1;

-- Question 6: Item with the minimum LineTotal
SELECT ItemID, MIN(LineTotal) AS MinLineTotal
FROM bill_items
GROUP BY ItemID
ORDER BY MinLineTotal ASC
LIMIT 1;

-- Question 7: Most popular payment method
SELECT PaymentMethod, COUNT(*) AS PaymentCount
FROM payment
GROUP BY PaymentMethod
ORDER BY PaymentCount DESC
LIMIT 1;

-- Question 8: Total revenue generated by each payment method
SELECT PaymentMethod, SUM(Amount) AS TotalRevenue
FROM payment
GROUP BY PaymentMethod;

-- Question 9: Average payment amount
SELECT AVG(Amount) AS AvgPaymentAmount
FROM payment;

-- Question 10: Top 3 categories with the highest total revenue
SELECT CategoryID, SUM(TotalAmount) AS TotalRevenue
FROM bills
GROUP BY CategoryID
ORDER BY TotalRevenue DESC
LIMIT 3;

-- Question 11: Customer with the highest number of unpaid bills
SELECT CustomerID, COUNT(*) AS UnpaidBills
FROM bills
WHERE Status = 'Unpaid'
GROUP BY CustomerID
ORDER BY UnpaidBills DESC
LIMIT 1;
