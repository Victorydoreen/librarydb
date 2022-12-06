-- selecting all authors in the database
SELECT * 
FROM author;

SELECT author_id
FROM author;

SELECT name
FROM author;

-- selecting librabrians who work in the morning shift
SELECT * FROM shifts
WHERE shift_id=3;

-- selecting students who have not returned the borrowed books
SELECT * FROM students
where date_of_return=4th;

-- retrieving all authors with their publishing companies
SELECT * FROM publishing_companies
WHERE author_id=7 & author_id=8;

-- total number of books each author has published in a year
SELECT SUM(publish_year)
FROM (books)
WHERE publish_year=2022;

-- count total number of times a student borrowed a particular book
SELECT COUNT (taken)
FROM(borrow)
where taken=yes;



