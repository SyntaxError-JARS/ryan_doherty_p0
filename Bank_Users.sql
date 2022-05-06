// Banking app database
create schema Bank;

// Create the tables under the banking schema

create table user(
	first_name varchar(20) not null,
	last_name varchar(30) not null,
	email varchar(40) primary key,
	"username" varchar(16) not null unique,
	"password" varchar(20) not null,
);

create table account( 
	id serial primary key,
	"username" varchar(16) not null unique,
	"password" varchar(20) not null,
	balance int not null,
	email varchar (40) not null unique,
);

// link user table to account table
alter table account 
add constraint fk_emailID
foreign key (email) references user(email);

insert into user (first_name, last_name, email, username, password) values ('Jack', 'Red', 'jackr@red.com', 'jred47', '567gth789');
insert into user (first_name, last_name, email, username, password) values ('Steve', 'Blue', 'stevewuz@here.com', 'stevewuzhere1', 'jkl678kb2424');
insert into user (first_name, last_name, email, username, password) values ('Pierce', 'Green', 'buckets@tdameritrade.com', 'paulp34', 'paulypfrom3');
insert into user (first_name, last_name, email, username, password) values ('Gabriella', 'Pinkett', 'gabpink@skynet.com', 'gabpink77', 'xxx012xxx');
insert into user (first_name, last_name, email, username, password) values ('Blake', 'Greene', 'bgreene@savethewhales.org', 'bgreene35', 'samplePSSWRD24');
insert into user (first_name, last_name, email, username, password) values ('Zachary', 'Redd', 'izeeredd@smells.org', 'zachredd5', 'sampletrample22');
insert into user (first_name, last_name, email, username, password) values ('Shannon', 'Bleu', 'shannonbleu@admin.ch', 'shannon24', 'dolaundry24');
insert into user (first_name, last_name, email, username, password) values ('Josi', 'Brown', 'jbrown34@tdameritrade.com', 'jbrown67', 'downtownbrown67');
insert into user (first_name, last_name, email, username, password) values ('Destiny', 'Emeralt', 'demeralt@w3.org', 'destiny1', 'demeralt1');
insert into user (first_name, last_name, email, username, password) values ('James', 'Amarillo', 'jamjam34@gmail.com', 'jamjam34', 'JamJamFamFam34');

insert into account (default,'jred47','567gth789','1200', 'jackr@red.com');
insert into account (default,'stevewuzhere1', 'jk1678kb24','2550', 'stevewuz@here.com');
insert into account (default,'paulp34','paulypfrom3','780', 'buckets@tdameritrade.com');
insert into account (default,'gabpink77','xxx012xxx','420', 'gabpink@skynet.com');
insert into account (default,'bgreene35','samplePSSWRD24','7889', 'bgreene@savesthewhales.org');
insert into account (default,'zachredd5','sampletrample22','3488', 'izeeredd@smells.org');
insert into account (default,'shannon24','dolaundry24','899', 'shannonbleu@admin.ch');
insert into account (default,'jbrown67','downtownbrown67','2480', 'jbrown34@tdameritrade.com');
insert into account (default,'destiny1','demeralt1','5460','demeralt@w3.org');
insert into account (default,'jamjam34','JamJamFamFam34','1200', 'jamjam34@gmail.com');

// display data in table
select * from user;
select * from account;
