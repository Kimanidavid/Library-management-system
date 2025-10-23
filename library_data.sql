USE library_db;
-- Add authors
INSERT INTO authors (name, birth_date) VALUES
('J.K. Rowling', '1965-07-31'),
('George Orwell', '1903-06-25'),
('Jane Austen', '1775-12-16');

-- Add books
INSERT INTO books (title, isbn, publication_year, author_id) VALUES
('Harry Potter and the Philosopher\'s Stone', '9780747532699', 1997, 1),
('1984', '9780451524935', 1949, 2),
('Pride and Prejudice', '9780141439518', 1813, 3);

-- Add members
INSERT INTO members (full_name, email, address, registered_date) VALUES
('Alice Smith', 'alice@example.com', '123 Library Lane', '2025-01-15'),
('Bob Johnson', 'bob@example.com', '456 Book St', '2025-03-22');

-- Add staff
INSERT INTO staff (name, email, hire_date) VALUES
('Emma Brown', 'emma@library.com', '2024-09-01'),
('Liam White', 'liam@library.com', '2025-02-14');

-- Add book copies
INSERT INTO book_copies (book_id, shelf_location, status) VALUES
(1, 'A1', 'Available'),
(1, 'A2', 'Available'),
(2, 'B1', 'Available'),
(3, 'C1', 'Available');

-- Add loans
INSERT INTO loans (copy_id, member_id, staff_id, borrow_date, due_date, return_date) VALUES
(1, 1, 1, '2025-10-01', '2025-10-15', NULL);

-- Add reservations
INSERT INTO reservations (member_id, copy_id, reservation_date) VALUES
(2, 2, '2025-10-10');
