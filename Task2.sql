-- Task 2: Data Insertion and Handling Nulls

-- Create Tables
CREATE TABLE Authors (
    author_id INTEGER PRIMARY KEY,
    author_name TEXT NOT NULL,
    country TEXT
);

CREATE TABLE Books (
    book_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author_id INTEGER,
    price REAL,
    published_year INTEGER,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Members (
    member_id INTEGER PRIMARY KEY,
    member_name TEXT NOT NULL,
    phone TEXT,
    email TEXT
);

-- Insert Data
INSERT INTO Authors (author_id, author_name, country)
VALUES
(1, 'Chetan Bhagat', 'India'),
(2, 'J.K. Rowling', 'UK'),
(3, 'George Orwell', NULL);

INSERT INTO Books (book_id, title, author_id, price, published_year)
VALUES
(101, 'Half Girlfriend', 1, 350.00, 2014),
(102, 'Harry Potter', 2, 500.00, 2001),
(103, '1984', 3, NULL, 1949);

INSERT INTO Members (member_id, member_name, phone, email)
VALUES
(1, 'Aditya', '9876543210', 'aditya@gmail.com'),
(2, 'Rohit', NULL, 'rohit@gmail.com'),
(3, 'Sneha', '9865321470', NULL);

-- Update Data
UPDATE Books SET price = 250.00 WHERE price IS NULL;
UPDATE Members SET phone = '9998887777' WHERE member_name = 'Rohit';

-- Delete Data
DELETE FROM Books WHERE book_id = 103;
DELETE FROM Members WHERE email IS NULL;

-- Add Default Value Column
ALTER TABLE Books ADD COLUMN genre TEXT DEFAULT 'Unknown';
