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

create table hospitals(
	hospital_id integer primary key,
    hospital_name varchar(50),
    hospital_address varchar(50),
    hospital_cap integer,
    hospital_city varchar (20)
    );
    
insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('100', 'Ospedale Sacco', 'Piazza Leonardo', 20100, 'Milano');
insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('101', 'Ospedale Niguarda', 'Piazza Piola', 20100, 'Milano');
insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('102', 'Ospedale San Raffaele', 'Cascina Gobba', 20100, 'Milano');

commit;


    

create table exams(
	exam_id integer primary key auto_increment,
    exam_name varchar(50),
    exam_department varchar (50)
    );
    
insert into exams(exam_id,exam_name,exam_department) values (1,'Pulizia dentale','Odontoiatria'); 
insert into exams(exam_id,exam_name,exam_department) values (2,'Estrazione dente','Odontoiatria'); 
insert into exams(exam_id,exam_name,exam_department) values (3,'Rimozione carie','Odontoiatria'); 
insert into exams(exam_id,exam_name,exam_department) values (4,'Controllo nei','Dermatologia'); 

commit;

-- spostare primary key 

create table exam_hospitals(
	exam_id integer,
	coupled_id integer,
    hospital_id integer,
    
	constraint exam_hospital_pk primary key(coupled_id),
    constraint examhospital_fk foreign key (hospital_id) references hospitals(hospital_id),
	constraint exam_hospital_fk foreign key (exam_id) references exams(exam_id)
 
);

insert into exam_hospitals(coupled_id,hospital_id,exam_id) values(1,100,1);
insert into exam_hospitals(coupled_id,hospital_id,exam_id) values(2,101,1);
insert into exam_hospitals(coupled_id,hospital_id,exam_id) values(3,102,1);
insert into exam_hospitals(coupled_id,hospital_id,exam_id) values(4,100,4);
insert into exam_hospitals(coupled_id,hospital_id,exam_id) values(5,100,2);
insert into exam_hospitals(coupled_id,hospital_id,exam_id) values(6,101,2);
insert into exam_hospitals(coupled_id,hospital_id,exam_id) values(7,102,2);
insert into exam_hospitals(coupled_id,hospital_id,exam_id) values(8,101,4);
insert into exam_hospitals(coupled_id,hospital_id,exam_id) values(9,100,3);
insert into exam_hospitals(coupled_id,hospital_id,exam_id) values(10,101,3);
insert into exam_hospitals(coupled_id,hospital_id,exam_id) values(11,102,3);
insert into exam_hospitals(coupled_id,hospital_id,exam_id) values(12,102,4);

commit;

create table times(
	time_id integer primary key auto_increment,
    time_real varchar(5)
);

insert into times(time_id,time_real) values ('1','10:30');
insert into times(time_id,time_real) values ('2','11:30');
insert into times(time_id,time_real) values ('3','12:30');

    
commit;




create table bookings(
	booking_id integer primary key auto_increment,
    user_id integer,
	coupled_id integer,
    booking_date DATE,
    time_id integer,
    price varchar(10),
		
        constraint booking_coupled_id_fk foreign key (coupled_id) references exam_hospitals(coupled_id),
        constraint bookings_user_id_fk foreign key(user_id) references users(user_id),
        constraint bookings_time_id_fk foreign key(time_id) references times(time_id),
        constraint booking_uq unique(user_id, coupled_id,booking_date,time_id),
        constraint exam_uq unique(coupled_id,booking_date,time_id),
        constraint patientexam_uq unique(user_id,booking_date,time_id)
);

insert into bookings(booking_id,user_id,coupled_id,booking_date,time_id,price) values ('1', '2',1,'2020-10-10','1','100€');
insert into bookings(booking_id,user_id,coupled_id,booking_date,time_id,price) values ('2', '4',2,'2020-10-11','2','100€');
insert into bookings(booking_id,user_id,coupled_id,booking_date,time_id,price) values ('3', '6',3,'2020-10-12','3','100€');
        
commit;