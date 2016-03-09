CREATE DATABASE `testSendMessage` CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE users(
  id int AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(256),
  password VARCHAR(256)
     CHARACTER SET utf8
     COLLATE utf8_unicode_ci
);

CREATE TABLE tests(
  id int AUTO_INCREMENT PRIMARY KEY,
  date DATE,
  time VARCHAR(20),
  name VARCHAR(30),
  message_text VARCHAR(300)
     CHARACTER SET utf8
     COLLATE utf8_unicode_ci
);