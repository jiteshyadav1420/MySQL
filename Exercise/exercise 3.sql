
-- 1 What is a data type? Give two examples  in sql?
/* Ans: a data type specifies the type of data that a column can hold in a database table. It helps define how data is stored, processed, and retrieved.

Examples:
INT: Used to store integer values (whole numbers).

Example: 10, -45, 1000
VARCHAR(n): Used to store variable-length character strings, where n specifies the maximum number of characters.

Example: 'John', 'Database123'*/


-- 2 What is the purpose of constraints in a database?
/* Ans: constraints are rules that ensure data integrity, accuracy, and consistency in a database. 
They prevent invalid data entry and enforce relationships between tables.*/


-- 3  Define the PRIMARY KEY constraint.
/* Ans: PRIMARY KEY constraint uniquely identifies each record in a table.
 It ensures that the column(s) have unique and non-NULL values.*/

-- 4 What is the difference between CHAR and VARCHAR data types?
/* Ans:  CHAR is fixed-length, always reserving the defined space,
 while VARCHAR is variable-length, using only the space needed for the data.*/
 
-- 5 Write a SQL query to select all authors from the Authors table. 
--  Ans: SELECT * FROM Authors;

-- 6 What does the NOT NULL constraint do?
/*the NOT NULL constraint ensures that a column cannot have NULL values,
 requiring a value to be entered for that column.*/
 
 -- 7 Write a SQL query to find all books published after January 1, 2020. 
/* Ans: SELECT * 
FROM Books 
WHERE publication_date > '2020-01-01';*/

-- 8  Explain the purpose of the FOREIGN KEY constraint.
/*Ans: the FOREIGN KEY constraint ensures that
 a column's value matches a value in a referenced column of another table,
 maintaining referential integrity between tables.*/

-- 9 Write a SQL query to count the number of books in the Books table.
/* Ans: SELECT COUNT(*) 
FROM Books;*/

-- 10 
/*The (CHECK)constraint in SQL is used to enforce a specific condition or rule on the values in a column. 
It ensures that the data entered into a column meets certain criteria or conditions.

Example:
To create a "Books" table where the `price` must be greater than 0, you can use the (CHECK) constraint like this:

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    price DECIMAL(10, 2),
    CHECK (price > 0)
);

In this example, the (CHECK) constraint ensures that only positive values for `price` are allowed in the table.*/


































