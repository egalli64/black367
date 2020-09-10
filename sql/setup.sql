-- run it as root

drop user if exists black;
drop schema if exists black;

create user black identified by 'teamblack';
create schema black;
grant all privileges on black.* to black;
grant alter routine on black.* to black;
