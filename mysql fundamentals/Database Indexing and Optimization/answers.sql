-- 1. Create an Index on the TotalAmount Column
CREATE INDEX IdxTotalAmount ON bills (TotalAmount);

-- 2. Drop the Index IdxEmail from the customer Table
DROP INDEX IdxEmail ON customer;

-- 3. Create a User Named bob with a Password
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';

-- 4. Grant INSERT Privilege to User bob on the bills Database
GRANT INSERT ON bills.* TO 'bob'@'localhost';

-- 5. Change the Password for User bob
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';
