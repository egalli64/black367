-- create tables and populate them for BLACK
use black;

drop table if exists users;

create table users(
	user_id integer primary key auto_increment,
	user_name varchar(15),
    user_password varchar(20)
);

insert into users (user_id, user_name, user_password) values ('1','Federico', 'Federico11');
insert into users (user_id, user_name, user_password) values ('2','Arianna', 'Arianna22');
insert into users (user_id, user_name, user_password) values ('3','Giulia', 'Giulia33');
insert into users (user_id, user_name, user_password) values ('4','Luigi', 'Luigi44');
insert into users (user_id, user_name, user_password) values ('5','Nicole', 'Nicole55');
insert into users (user_id, user_name, user_password) values ('6','MariaGrazia', 'Mariag66');

commit;