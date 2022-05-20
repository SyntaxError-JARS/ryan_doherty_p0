// Banking app database
create schema Bank;

// Create the tables under the banking schema

create table users(
	first_name varchar(20) not null,
	last_name varchar(30) not null,
	email varchar(40) primary key,
	username varchar(16) not null unique,
	"password" varchar(20) not null
);

create table account( 
	id serial primary key,
	username varchar(16) not null unique,
	"password" varchar(20) not null,
	balance numeric not null check(balance >= 0 and balance < 250000) GENERATED ALWAYS as(deposit-withdrawal) stored,
	deposit numeric not null,
	withdrawal numeric not null,
	emaila varchar (40) not null unique
);

drop table account;

alter table account 
add constraint  fk_emaila 
foreign key(emaila) references users(email)
on delete cascade;
 
insert into users values ('Jack', 'Red', 'jackr@red.com', 'jred47', '567gth789');
insert into users values ('Steve', 'Blue', 'stevewuz@here.com', 'stevewuzhere1', 'jkl678kb2424');
insert into users values ('Pierce', 'Green', 'buckets@tdameritrade.com', 'paulp34', 'paulypfrom3');

insert into account values (default,'jred47','567gth789', default, 100.0 , 100.0 ,'jackr@red.com');
insert into account values (default,'stevewuzhere1', 'jk1678kb24', default, 200.0 , 200.0 ,'stevewuz@here.com');
insert into account values (default,'paulp34','paulypfrom3', default, 250.0 , 250.0 , 'buckets@tdameritrade.com');


// display data in table
select * from users;
select * from account;
