-- create tables and populate them for BLACK
use black;

drop table if exists users;

create table users(
	user_id integer primary key auto_increment,
	user_name varchar(15) unique not null,
    user_password varchar(20) not null,
    first_name varchar(20),
    last_name varchar(25),
    email varchar(25)
);
insert into users (user_id, user_name, user_password, first_name, last_name, email) values
('1','Federico', 'Federico11', 'Federico', 'Medini', 'federico@gmail.com'),
('2','Arianna', 'Arianna22', 'Arianna', 'Niccolo', 'arianna@gmail.com'),
('3','Giulia', 'Giulia33', 'Giulia', 'Pontiggia', 'giulia@gmail.com'),
('4','Luigi', 'Luigi44', 'Luigi', 'De Berardinis', 'luigi@gmail.com'),
('5','Nicole', 'Nicole55', 'Nicole', 'Discepoli', 'nicole@gmail.com'),
('6','MariaGrazia', 'Mariag66', 'Maria Grazia', 'Restifo', 'mariagrazia@gmail.com');

commit;