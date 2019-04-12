
use join_test_db;

select * from users;
select * from roles;



CREATE TABLE if not exists roles(
  id int unsigned not null auto_increment,
  name varchar(100)not null ,
  primary key (id)
);



create table if not exists users (
  id int unsigned not null auto_increment,
  name varchar(100) not null ,
  email varchar(100) not null ,
  role_id int unsigned default null,
  primary key (id),
  foreign key (role_id) references roles(id)
);


truncate roles;
insert into roles(name) value
  ('admin'),('author'),('reviewer'),('commenter');


truncate users;
INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);


select users.role_id from users group by role_id;
select roles.name from roles group by name;


select users.name , roles.name
# dose'nt mather which table is next to from or join is only it mather when left or right is used
# from is the parent table and join is the child table and users.role_id comes from
# table foreign key and roles.id comes from parent id.\
from roles
left join users on users.role_id = roles.id
# where roles.id is not null and users.role_id is not null
;


select users.name,roles.name, users.email
from roles
join users on users.role_id = roles.id;


# concat(roles.name) as job renames the title just for show.\
select users.name, concat(roles.name) as job, users.role_id
from roles
join users on users.role_id = roles.id;























