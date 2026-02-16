CREATE DATABASE day01;
USE day01;

CREATE TABLE books (
	book_id INT PRIMARY KEY,
    title VARCHAR(200),
    author VARCHAR(100),
    genre VARCHAR(50),
    publication_year INT,
    price DECIMAL(10,2),
    pages INT,
    publisher VARCHAR(100)
);

INSERT INTO books (book_id, title, author, genre, publication_year, price, pages, publisher) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925, 15.99, 180, 'Scribner'),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 18.99, 324, 'J.B. Lippincott & Co.'),
(3, '1984', 'George Orwell', 'Science Fiction', 1949, 13.99, 328, 'Secker & Warburg'),
(4, 'Pride and Prejudice', 'Jane Austen', 'Romance', 1813, 12.99, 432, 'T. Egerton'),
(5, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951, 14.99, 277, 'Little, Brown'),
(6, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'Fantasy', 1997, 22.99, 309, 'Scholastic'),
(7, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 16.99, 310, 'George Allen & Unwin'),
(8, 'The Da Vinci Code', 'Dan Brown', 'Mystery', 2003, 19.99, 454, 'Doubleday'),
(9, 'The Shining', 'Stephen King', 'Horror', 1977, 18.99, 447, 'Doubleday'),
(10, 'Sapiens', 'Yuval Noah Harari', 'Science', 2011, 22.99, 443, 'Harper');

INSERT INTO books (book_id, title, author, genre, publication_year, price, pages, publisher) VALUES
(11, 'Brave New World', 'Aldous Huxley', 'Science Fiction', 1932, 15.99, 311, 'Chatto & Windus'),
(12, 'Gone Girl', 'Gillian Flynn', 'Mystery', 2012, 17.99, 422, 'Crown Publishing'),
(13, 'It', 'Stephen King', 'Horror', 1986, 21.99, 1138, 'Viking'),
(14, 'The Alchemist', 'Paulo Coelho', 'Fiction', 1988, 14.99, 208, 'HarperOne'),
(15, 'Steve Jobs', 'Walter Isaacson', 'Biography', 2011, 24.99, 656, 'Simon & Schuster'),
(16, 'Educated', 'Tara Westover', 'Biography', 2018, 19.99, 334, 'Random House'),
(17, 'Becoming', 'Michelle Obama', 'Biography', 2018, 26.99, 448, 'Crown'),
(18, 'The Hunger Games', 'Suzanne Collins', 'Science Fiction', 2008, 17.99, 374, 'Scholastic'),
(19, 'Murder on the Orient Express', 'Agatha Christie', 'Mystery', 1934, 14.99, 256, 'Collins Crime Club'),
(20, 'The Silent Patient', 'Alex Michaelides', 'Mystery', 2019, 18.99, 336, 'Celadon Books'),
(21, 'The Girl on the Train', 'Paula Hawkins', 'Mystery', 2015, 16.99, 336, 'Riverhead Books'),
(22, 'Life of Pi', 'Yann Martel', 'Fiction', 2001, 15.99, 319, 'Knopf Canada'),
(23, 'The Kite Runner', 'Khaled Hosseini', 'Fiction', 2003, 16.99, 371, 'Riverhead Books'),
(24, 'The Book Thief', 'Markus Zusak', 'Historical Fiction', 2005, 17.99, 552, 'Picador'),
(25, 'Atomic Habits', 'James Clear', 'Self-Help', 2018, 21.99, 320, 'Avery'),
(26, 'Dune', 'Frank Herbert', 'Science Fiction', 1965, 19.99, 688, 'Chilton Books'),
(27, 'The Handmaid\'s Tale', 'Margaret Atwood', 'Science Fiction', 1985, 15.99, 311, 'McClelland & Stewart'),
(28, 'Where the Crawdads Sing', 'Delia Owens', 'Fiction', 2018, 18.99, 384, 'Putnam'),
(29, 'The Seven Husbands of Evelyn Hugo', 'Taylor Jenkins Reid', 'Fiction', 2017, 16.99, 388, 'Atria Books'),
(30, 'Project Hail Mary', 'Andy Weir', 'Science Fiction', 2021, 23.99, 496, 'Ballantine Books'),
(31, 'The Creative Act', 'Rick Rubin', 'Self-Help', 2023, 28.99, 432, 'Penguin Press'),
(32, 'The Lean Startup', 'Eric Ries', 'Business', 2011, 24.99, 336, 'Crown Business'),
(33, 'Relentless', 'Tim Grover', 'Self-Help', 2013, 22.99, 208, 'Scribner'),
(34, 'The Psychology of Money', 'Morgan Housel', 'Finance', 2020, 18.99, 256, 'Harriman House'),
(35, 'Influence: The Psychology of Persuasion', 'Robert Cialdini', 'Psychology', 1984, 19.99, 336, 'William Morrow'),
(36, 'You\'ve Got to Read This Book', 'Jack Canfield', 'Self-Help', 2006, 16.99, 320, 'William Morrow'),
(37, 'Getting Things Done', 'David Allen', 'Productivity', 2001, 17.99, 352, 'Penguin Books');

#1. Retrieve all the books in the database
SELECT * FROM books;

#2. Find all books published after 2015
SELECT title, publication_year FROM books
WHERE publication_year > 2015;

#3. List all books in the "Mystery" genre
SELECT title, genre FROM books
WHERE genre = "Mystery";

#4. Find books priced between $10 and $25
SELECT title, price FROM books
WHERE price BETWEEN 10 AND 25;

#5. Show all book by "J.K. Rowling" and "Stephen King"
SELECT title, author FROM books
WHERE author IN ('J.K. Rowling', 'Stephen King');

#6. List all book with more than 400 pages
SELECT title, pages
FROM books WHERE pages>400;

#7. Find the 5 most expensive books
SELECT title, price FROM books
ORDER BY price DESC
LIMIT 5;

#8. Display books published in 2020, sorted by title alphabetically
SELECT title, publication_year FROM books WHERE publication_year = '2020' ORDER BY title ASC;

#9. Find all Science Fiction books under $20
SELECT title, price FROM books WHERE price < 20 AND genre= 'Fiction';

#10. List all unique genre in the library
SELECT DISTINCT(genre) FROM books;

#11 Show the books where the tile contains the word "The"
SELECT title FROM books WHERE title LIKE '%the%';

#12. Find books not in fiction genre
SELECT title, genre FROM books WHERE genre!= 'Fiction';

#13. Display the 10 oldest books in the library
SELECT title, publication_year FROM books ORDER BY publication_year ASC LIMIT 10;

#14. Retrieve books with exact 208
SELECT title, pages FROM books WHERE pages = '208';

#15. List all publishers in Alphabetical order (no di=uplicates)
SELECT DISTINCT(publisher) FROM books ORDER BY publisher ASC;