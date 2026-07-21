USE lianes_library;

-- 1. Додаємо книги
INSERT INTO books (title, author, genre, isbn, notes) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', '9780743273565', 'Good condition'),
('1984', 'George Orwell', 'Dystopian', '9780451524935', 'Favorite'),
('To Kill a Mockingbird', 'Harper Lee', 'Classic', '9780061120084', 'Hardcover'),
('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Non-Fiction', '9780062316097', 'Paperback'),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', '9780547928227', 'Gift from Alex');

-- 2. Додаємо друзів
INSERT INTO friends (name, email, phone) VALUES
('Sarah Miller', 'sarah.m@example.com', '+1234567890'),
('John Doe', 'john.doe@example.com', '+1987654321'),
('Emma Watson', 'emma.w@example.com', '+1122334455');

-- 3. Додаємо записи про видачу книжок (Loans)
INSERT INTO loans (book_id, friend_id, loan_date, due_date, return_date, notes) VALUES
(1, 1, '2026-06-01', '2026-06-15', '2026-06-14', 'Returned on time'),
(2, 2, '2026-07-01', '2026-07-15', NULL, 'Currently borrowed, overdue'),
(4, 3, '2026-07-10', '2026-07-24', NULL, 'Currently borrowed');