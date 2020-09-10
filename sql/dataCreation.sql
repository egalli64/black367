-- create tables and populate them for BLACK
use black;

drop table if exists users;

create table users(
	user_id integer primary key auto_increment,
	user_name varchar(15) unique not null,
    user_password varchar(20) not null,
    first_name varchar(20),
    last_name varchar(25),
    email varchar(25),
    birth_date date,
    gender varchar(1),
    city varchar(20)
);
insert into users (user_id, user_name, user_password, first_name, last_name, email, birth_date, gender, city) values
('1','Federico', 'Federico11', 'Federico', 'Medini', 'federico@gmail.com','1993-11-11','M','Bologna'),
('2','Arianna', 'Arianna22', 'Arianna', 'Niccolo', 'arianna@gmail.com','1994-03-03','F','Mantova'),
('3','Giulia', 'Giulia33', 'Giulia', 'Pontiggia', 'giulia@gmail.com','1995-02-22','F','Lodi'),
('4','Luigi', 'Luigi44', 'Luigi', 'De Berardinis', 'luigi@gmail.com','1995-12-12','M','Bari'),
('5','Nicole', 'Nicole55', 'Nicole', 'Discepoli', 'nicole@gmail.com','1995-07-25','F','Ancona'),
('6','MariaGrazia', 'Mariag66', 'Maria Grazia', 'Restifo', 'mariagrazia@gmail.com','1995-10-18','F','Palermo');

commit;