TASK 1

 create database university

create table student(
id bigint not null primary key,
name varchar(50),
birthday date,
groupa int
);

create table subject(
id bigint not null primary key,
name varchar,
description varchar(25),
grade int
);

create table paymenttype(
id bigint not null primary key,
name varchar(50)
);

create table payment(
id bigint not null primary key,
type_id bigint, 
amount decimal,
student_id bigint,
payment_date time,
foreign key (type_id) references paymenttype(id),
foreign key (student_id) references student(id)
);

create table mark(
id bigint not null primary key,
student_id bigint,
subject_id bigint,
mark int,
foreign key (student_id) references student(id),
foreign key (subject_id) references subject(id)
);

TASK 2
1.

INSERT INTO Student (id, name, birthday, groupa) VALUES (1, 'John', '1995-05-10', 1);
INSERT INTO Student (id, name, birthday, groupa) VALUES (2, 'Chris', '1996-05-10',1);
INSERT INTO Student (id, name, birthday, groupa) VALUES (3, 'Carl', '1997-05-10', 1);



INSERT INTO Student (id, name, birthday, groupa) VALUES (4, 'Oliver', '1998-07-10', 2);
INSERT INTO Student (id, name, birthday, groupa) VALUES (5, 'James', '1999-03-10', 2);
INSERT INTO Student (id, name, birthday, groupa) VALUES (6, 'Lucas', '2000-11-10', 2);
INSERT INTO Student (id, name, birthday, groupa) VALUES (7, 'Henry', '2001-11-11', 2);



INSERT INTO Student (id, name, birthday, groupa) VALUES (8, 'Jacob', '2002-12-13', 3);
INSERT INTO Student (id, name, birthday, groupa) VALUES (9, 'Logan', '2003-01-13', 3);


INSERT INTO Student (id, name, birthday, groupa) VALUES (10, 'Said', '2004-01-13', 4);
INSERT INTO Student (id, name, birthday, groupa) VALUES (11, 'Muhammadali', '2006-03-29', 4);


INSERT INTO Student (id, name, birthday, groupa) VALUES (12, 'Steve', '2002-03-19', 5);
INSERT INTO Student (id, name, birthday, groupa) VALUES (13, 'Carter', '2001-09-19', 5);

2.

INSERT INTO Subject (id, name, description, grade) VALUES (4, 'art', 'topic', 1);
INSERT INTO Subject (id, name, description, grade) VALUES (5, 'music', 'expression', 1);

INSERT INTO Subject (id, name, description, grade) VALUES (6, 'Geography', 'physical', 2);
INSERT INTO Subject (id, name, description, grade) VALUES (7, 'history', 'academic', 2);



INSERT INTO Subject (id, name, description, grade) VALUES (8, 'PE', 'activities', 3);
INSERT INTO Subject (id, name, description, grade) VALUES (9, 'math', 'logical', 3);


INSERT INTO Subject (id, name, description, grade) VALUES (10, 'science', 'social', 4);
INSERT INTO Subject (id, name, description, grade) VALUES (11, 'IT', 'network', 4);

3.

INSERT INTO Paymenttype (id, name) VALUES (1, 'daily');
INSERT INTO Paymenttype (id, name) VALUES (2, 'weekly');
INSERT INTO Paymenttype (id, name) VALUES (3, 'monthly');

INSERT INTO payment (student_id,paymenttype_id,amount) VALUES (1,2,1000);
INSERT INTO payment (student_id,paymenttype_id,amount) VALUES (4,3,980);
INSERT INTO payment (student_id,paymenttype_id,amount) VALUES (7,2,1200);
INSERT INTO payment (student_id,paymenttype_id,amount) VALUES (5,1,1000);


insert into mark (id,student_id,subject_id,mark) values (1,2,4,8);
insert into mark (id,student_id,subject_id,mark) values (2,4,3,5);
insert into mark (id,student_id,subject_id,mark) values (3,5,6,9);
insert into mark (id,student_id,subject_id,mark) values (4,8,6,9);
insert into mark (id,student_id,subject_id,mark) values (5,8,9,4);
insert into mark (id,student_id,subject_id,mark) values (6,9,8,9);

TASK 3

ALTER TABLE Student
ALTER COLUMN birthday DATE NOT NULL PRIMARY KEY;

UPDATE Mark
SET mark CASE WHEN mark < 1 THEN 1 WHEN mark > 10 THEN 10 ELSE mark END
WHERE mark IS NOT NULL;
ALTER TABLE Mark
ALTER COLUMN student_id
SET NOT NULL;
ALTER TABLE Mark
ALTER COLUMN subject_id
SET NOT NULL;

ALTER TABLE Subject
ADD CHECK (grade >= 1 AND grade <= 5);

ALTER TABLE PaymentType
ADD UNIQUE (name);




ALTER TABLE Payment
ALTER COLUMN type_id INT NOT NULL;
ALTER TABLE Payment
ALTER COLUMN amount DECIMAL(10,2) NOT NULL;
ALTER TABLE Payment
ALTER COLUMN date DATE NOT NULL;

TASK 4

select * from Student
select * from Student limit 50;
select name form Student;
select distinct amount from Payment;
