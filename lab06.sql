PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL
);
CREATE TABLE Invoices (
    invoice_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    amount_due DECIMAL(10, 2),
    due_date DATE
);
COMMIT;
