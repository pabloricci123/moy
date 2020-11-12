CREATE DATABASE IF NOT EXISTS api_rest_laravel;
USE api_rest_laravel;

CREATE TABLE users(
id          int(255) auto_increment not null,
name        varchar(50),
surname     varchar(100),
role        varchar(20),    
email       varchar(255),
password    varchar(255),
description text,
image       varchar(255),
created_at  datetime DEFAULT NULL,
updated_at  datetime DEFAULT NULL,
remember_token  varchar(255),
CONSTRAINT pk_users PRIMARY KEY(id)
)ENGINE=InnoDb; 

CREATE TABLE users(id SERIAL PRIMARY KEY,name  varchar(50),surname varchar(100),role varchar(20),email varchar(255),password varchar(255),description text,image varchar(255),created_at  date DEFAULT NULL,updated_at  date DEFAULT NULL,remember_token  varchar(255));

CREATE TABLE categories(
id          int(255) auto_increment not null,
name        varchar(100),
created_at  datetime DEFAULT NULL,
updated_at  datetime DEFAULT NULL,
CONSTRAINT pk_categories PRIMARY KEY(id)
)ENGINE=InnoDb;


CREATE TABLE categories(id SERIAL PRIMARY KEY,name varchar(100),created_at  date DEFAULT NULL,updated_at  date DEFAULT NULL);





CREATE TABLE posts(id SERIAL PRIMARY KEY,user_id int not null,category_id int not null,title varchar(255) not null,content text not null,image varchar(255),created_at  date DEFAULT NULL,updated_at  date DEFAULT NULL,estado int,CONSTRAINT fk_post_user FOREIGN KEY(user_id) REFERENCES users(id),CONSTRAINT fk_post_category FOREIGN KEY(category_id) REFERENCES categories(id));


CREATE TABLE posts(
id          int(255) auto_increment not null,
user_id     int(255) not null,
category_id int(255) not null,
title       varchar(255) not null,
content     text not null,
image       varchar(255),
created_at  datetime DEFAULT NULL,
updated_at  datetime DEFAULT NULL,
estado int,
CONSTRAINT pk_posts PRIMARY KEY (id),
CONSTRAINT fk_post_user FOREIGN KEY(user_id) REFERENCES users(id),
CONSTRAINT fk_post_category FOREIGN KEY(category_id) REFERENCES categories(id)
)ENGINE=InnoDb;