create table product
(
P_id int primary key identity(1,1),
P_name varchar(50),
Price decimal(12,2),
image varchar(400),
Category_id int,
constraint fk_catg_prod foreign key(Category_id) references category(Category_id)
)

-------------------------------------------------------------------------------------------------------------
create table category
(
Category_id int primary key,
Category_name varchar(50)
)

-----------------------------------------------------------------------------------------------------------------
create table Roles
(
roleid int primary key,
rolename varchar(50)
)
---------------------------------------------------------------------------------------------------------------------
create table Userss
(
userid int primary key identity(1,1),
username varchar(20),
password varchar(50),
email varchar(100),
roleid int,
constraint fk_key foreign key(roleid) references  Roles(roleid)
)
----------------------------------------------------------------------------------------------------------------------------