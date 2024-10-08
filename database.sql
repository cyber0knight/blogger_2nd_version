create database blogger_db;

use blogger_db;

-- drop database blogger_db;

create table users(
	id int auto_increment primary key,
    email varchar(100) unique not null,
    username varchar(50) not null,
    role varchar(50) default "user",
    password varchar(100) not null,
    created_At timestamp default current_timestamp
);

create table images(
	id int auto_increment primary key,
    user_id int not null,
    image blob,
    created_At timestamp default current_timestamp,
    foreign key (user_id) references users(id) on delete cascade
);

CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    author varchar(100) not null,
    user_id int not null,
    category varchar(100) not null,
    title varchar(225),
    content TEXT,
    foreign key (user_id) references users(id) on delete cascade,
    created_At timestamp default current_timestamp
);

create table post_images(
	id int auto_increment primary key,
    post_image blob not null,
    post_id int not null,
	foreign key (post_id) references posts(id) on delete cascade
);

create table likes(
	post_id int not null,
    user_id int not null,
    create_At timestamp default current_timestamp,
	foreign key (post_id) references posts(id) on delete cascade,
	foreign key (user_id) references users(id) on delete cascade
);

create table comments(
	post_id int not null,
    user_id int not null,
    comment varchar(225),
    create_At timestamp default current_timestamp,
	foreign key (post_id) references posts(id) on delete cascade,
	foreign key (user_id) references users(id) on delete cascade
);