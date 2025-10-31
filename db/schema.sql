-- MySQL schema for Weekly Report Management System
CREATE DATABASE IF NOT EXISTS weekly_reports_db;
USE weekly_reports_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    full_name VARCHAR(100),
    role ENUM('admin','manager','employee') DEFAULT 'employee'
);

CREATE TABLE IF NOT EXISTS reports (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    week_start DATE NOT NULL,
    week_end DATE NOT NULL,
    summary TEXT,
    accomplishments TEXT,
    next_plan TEXT,
    issues TEXT,
    status ENUM('submitted','reviewed','approved') DEFAULT 'submitted',
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- sample admin user (password: admin)
INSERT IGNORE INTO users(username, password, full_name, role) VALUES('admin','admin','Administrator','admin');

USE weekly_reports_db;
SELECT * FROM users;

CREATE DATABASE IF NOT EXISTS weekly_reports_db;
USE weekly_reports_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    full_name VARCHAR(100),
    role ENUM('admin','manager','employee') DEFAULT 'employee'
);

INSERT IGNORE INTO users(username, password, full_name, role)
VALUES ('admin','admin','Administrator','admin');



