-- Створення бази даних (якщо ще не існує)
CREATE DATABASE IF NOT EXISTS lianes_library;
USE lianes_library;

-- 1. Таблиця книг (Books)
CREATE TABLE IF NOT EXISTS books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    isbn VARCHAR(20),
    notes TEXT
);

-- 2. Таблиця друзів (Friends)
CREATE TABLE IF NOT EXISTS friends (
    friend_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone VARCHAR(50)
);

-- 3. Таблиця видач книг (Loans)
CREATE TABLE IF NOT EXISTS loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    friend_id INT NOT NULL,
    loan_date DATE NOT NULL,
    due_date DATE,
    return_date DATE,
    notes TEXT,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (friend_id) REFERENCES friends(friend_id)
);
