CREATE DATABASE IF NOT EXISTS TODOLISTDB;

CREATE USER 'todouser'@'localhost' IDENTIFIED BY 'todouser';
GRANT ALL PRIVILEGES ON TODOLISTDB.* TO 'todouser'@'localhost';

FLUSH PRIVILEGES;

USE TODOLISTDB;


CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,

    CHECK (CHAR_LENGTH(email) > 3)
);


CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(140),
    priority ENUM('low', 'medium', 'high') NOT NULL,
    isEnded ENUM('false', 'true') NOT NULL,
    due_date DATE,
    user_id INT,

    CHECK (CHAR_LENGTH(name) BETWEEN 5 AND 50),
    CHECK (CHAR_LENGTH(description) BETWEEN 1 AND 140),
    FOREIGN KEY (user_id) REFERENCES users(id)
);
