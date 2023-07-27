-- tabloya UNIUQ CONTRAINT EKLEME

CREATE TABLE developers(
	id SERIAL,
	name VARCHAR(50),
	email VARCHAR(50) UNIQUE,
	salary REAL,
	prog_lang VARCHAR(50)
	
);

SELECT * FROM developers

INSERT INTO developers(name, email, salary, prog_lang) VALUES (
	'Aybüke Korkutmaz',
	'email@email.com',
	 3000,
	'devops'
);

SELECT * FROM developers

CREATE TABLE doktorlar(
	id SERIAL,
	name VARCHAR(50) NOT NULL, -- not null boş geçilemez
	email VARCHAR(50) UNIQUE,
	salary REAL
		
);

SELECT * FROM doktorlar

INSERT INTO doktorlar(name, email, salary) VALUES(
	'doktor aybüke',
	'aybüke@email.com',
	3000
);

SELECT * FROM doktorlar

CREATE TABLE students2(
	id INT PRIMARY KEY,
	name VARCHAR(50),
	grade REAL,
	register_date DATE
); 

SELECT * FROM students2

-- Composit key oluşturma 

CREATE TABLE students4(
	id INT,
	name VARCHAR(50),
	grade REAL,
	register_date DATE,
	CONSTRAINT std_pk PRIMARY KEY (id, name) 
); 

SELECT * FROM students4

-- FK Consraint ekleme

SELECT * FROM students3

CREATE TABLE address3(
	address_id INT,
	street VARCHAR(50),
	city VARCHAR(50),
	student_id INT,
	CONSTRAINT add_fk FOREIGN KEY(student_id) REFERENCES students3(id)
);

SELECT * FROM address3

-- Check constraint kullanma

CREATE TABLE personel(
	id INT,
	name VARCHAR(50) NOT NULL CHECK(name <> ''),
	salary REAL CHECK (salary>5000),
	age INT CHECK(age>18)	 
); 

SELECT * FROM personel

INSERT INTO personel VALUES(1,'kişi',10000,19)

SELECT * FROM personel

