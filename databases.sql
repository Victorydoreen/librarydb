CREATE TABLE librarian(
    librarian_id bigint NOT NULL ,
    name varchar (255) NOT NULL,
 	email_address varchar NOT NULL UNIQUE,
 	telephone_number int NOT NULL UNIQUE,
 	PRIMARY KEY (librarian_id),
 	FOREIGN KEY (shift_id) REFERENCES shift (shift_id)
	);

CREATE TABLE shift(
	shift_id bigint NOT NULL ,
    name varchar (255) NOT NULL,
	shift_time time without time zone NOT NULL,
	email_address varchar NOT NULL UNIQUE,
	telephone_number int NOT NULL UNIQUE,
	PRIMARY KEY (shift_id),
 	FOREIGN KEY (student_id) REFERENCES student (student_id)
);
CREATE TABLE book(
	book_id bigint NOT NULL ,
    book_title varchar (255) NOT NULL UNIQUE,
	price int NOT NULL ,
	description varchar NOT NULL,
	publish_date date NOT NULL,
	publish_year date NOT NULL,
	isbn_number int NOT NULL,
	image bytea NOT NULL,
	PRIMARY KEY (book_id),
	FOREIGN KEY (author_id) REFERENCES author (author_id),
	FOREIGN KEY (company_id) REFERENCES company (company_id),
	FOREIGN KEY (std_id) REFERENCES student (std_id)
);

CREATE TABLE author1(
	author_id bigint NOT NULL ,
    name varchar (255) NOT NULL,
	email_address varchar NOT NULL UNIQUE,
	bio varchar NOT NULL,
	contact int NOT NULL UNIQUE,
	pub_company varchar NOT NULL,
	PRIMARY KEY (author_id),
	FOREIGN KEY (company_id) REFERENCES company (company_id)
);

CREATE TABLE company(
	company_id bigint NOT NULL ,
    name varchar (255) NOT NULL,
	email_address varchar NOT NULL UNIQUE,
	telephone_number int NOT NULL UNIQUE,
	PRIMARY KEY (company_id)
);

CREATE TABLE borrowing(
	borrow_id bigint NOT NULL ,
    taken boolean  NOT NULL,
	return_day boolean NOT NULL,
	PRIMARY KEY (borrow_id));
	FOREIGN KEY (librarian_id) REFERENCES librarian(librarian_id),
	FOREIGN KEY (std_id) REFERENCES student (std_id)
);

CREATE TABLE student(
	std_id bigint NOT NULL ,
    name varchar (255) NOT NULL,
	address varchar NOT NULL ,
	contact int NOT NULL UNIQUE,
	date_of_borrowing date NOT NULL,
	date_of_return date NOT NULL,
	PRIMARY KEY (std_id),
	FOREIGN KEY (librarian_id) REFERENCES librarian (librarian_id)
);









