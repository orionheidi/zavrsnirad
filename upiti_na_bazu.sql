drop database blog;
create database blog;
use blog;
create table posts(id int not null unique auto_increment, title varchar(60) not null, body varchar(1000), user_id int not null,created_at date,primary key (id), foreign key (user_id) references users (id));
describe posts;
 
insert into posts(title,body,user_id,created_at) values ('Trkaci prerije','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.',1, '2018-12-17');
insert into posts(title,body,user_id,created_at) values ('Selektivno pamcenje','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.',2, '2018-12-06');
insert into posts(title,body,user_id,created_at) values ('Suncokreti na vidiku','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.',3, '2018-12-08');
insert into posts(title,body,user_id,created_at) values ('Padajuca zvezda','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.',4, '2018-12-11');
insert into posts(title,body,user_id,created_at) values ('Planeta X','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.',5, '2018-12-03');
insert into posts(title,body,user_id,created_at) values ('Berza tastine','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.',6, '2018-12-04');
insert into posts(title,body,user_id,created_at) values ('Zika sabljar','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.',7, '2018-12-12');
insert into posts(title,body,user_id,created_at) values ('Guzva u prolazu ','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.',8, '2018-12-15');
insert into posts(title,body,user_id,created_at) values ('Na krilima komarca','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.',9, '2018-12-10');
insert into posts(title,body,user_id,created_at) values ('Mocni Lavro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.',10, '2018-12-16');
select * from posts;

create table comments(id int not null unique auto_increment,author varchar(60) not null, text varchar(500), post_id int not null,primary key (id), foreign key (post_id) references posts (id));
describe comments;

insert into comments(author,text,post_id) values ('Zenka Zdenkic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',1);
insert into comments(author,text,post_id) values ('Serjoza Sakic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',1);
insert into comments(author,text,post_id) values ('Melisa Melisic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',1);
insert into comments(author,text,post_id) values ('Serjoza Sakic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',2);
insert into comments(author,text,post_id) values ('Mirko Svemirko','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',2);
insert into comments(author,text,post_id) values ('Dario Argentino','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',3);
insert into comments(author,text,post_id) values ('Samanta Sakic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',3);
insert into comments(author,text,post_id) values ('Beba Patrnuzic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',3);
insert into comments(author,text,post_id) values ('Lavrontije Kokoska','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',4);
insert into comments(author,text,post_id) values ('Zinedin Avramovic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',5);
insert into comments(author,text,post_id) values ('Serjoza Sakic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',5);
insert into comments(author,text,post_id) values ('Lavrontije Kokoska','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',6);
insert into comments(author,text,post_id) values ('Mane Manic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',6);
insert into comments(author,text,post_id) values ('Serjoza Sakic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',7);
insert into comments(author,text,post_id) values ('Lepotic Lepotan','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',8);
insert into comments(author,text,post_id) values ('Arambasic Arambasa','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',9);
insert into comments(author,text,post_id) values ('Andjela Andjelic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',9);
insert into comments(author,text,post_id) values ('Sofronije Pilar','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',9);

select * from comments;

create table users(id int not null unique auto_increment, first_name varchar(60) not null, last_name varchar(60),primary key (id));
insert into users(first_name,last_name) values ('Lavrentije','Lavric');
insert into users(first_name,last_name) values ('Macak u','Cizmama');
insert into users(first_name,last_name) values ('Pepele','Tvor');
insert into users(first_name,last_name) values ('Brzi','Gonzales');
insert into users(first_name,last_name) values ('Paja','Patak');
insert into users(first_name,last_name) values ('Miki','Varo');
insert into users(first_name,last_name) values ('Trbivoje','Trbovic');
insert into users(first_name,last_name) values ('Mandarina','Mandaric');
insert into users(first_name,last_name) values ('Dzabalina','Poskokovic');
insert into users(first_name,last_name) values ('Serjoza','Sakic');
insert into users(first_name,last_name) values ('Mali','Princ');
insert into users(first_name,last_name) values ('Djura','Komarac');


select * from users;

ALTER TABLE posts CHANGE author user_id int unique not null;
TRUNCATE TABLE posts;
DROP TABLE comments;
describe posts;

ALTER TABLE posts
ADD CONSTRAINT user_id
FOREIGN KEY (user_id) REFERENCES users(id);

describe posts;
