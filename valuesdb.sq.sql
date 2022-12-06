INSERT INTO librarians(
librarian_id,name,email_address,telephone_number,shift_id)
VALUES(1,'Gida','gida@gmail','0772435672',3),
(2,'Angeli','angeli@gmail','077236772',4);

INSERT INTO shifts(
shift_id,name,student_id,period)
VALUES(3,'morning','early'),
(4,'evening','later');

INSERT INTO books(title,price,description,publish_date,publish_year,isbn_number,image,book_id,author_id,publishing_company_id,student_id)
VALUES('hark',20,'herald','14th',2022,'7724356721',5,7,9,13),
('Help',30,'needed','15th',2021,'7724367727',6,8,10,14);

INSERT INTO author(author_id, name,email_address,bio,contact,publishing_company_id)
VALUES (7,'den','den@gmail.com','married',76854,9),
(8,'dina','dina@gmail.com','single',79645,10);

INSERT INTO publishing_companies(publishing_company_id,name,address)
VALUES(9,'sena company','kazo'),(10,'joy company','kabalagala');

INSERT INTO borrow(borrow_id,taken,returned,librarian_id,student_id)
VALUES(11,yes,no,1,13),(12,yes,yes,2,14);

INSERT INTO students(student_id,name,contact,address,date_of_borrowing,date_of_return,librarian_id)
VALUES(13,'Jemba',492,'kololo','1st',1),
(14,'Chloe',578,'3rd','4th',2);