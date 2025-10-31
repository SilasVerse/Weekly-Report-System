# Weekly Report System 

## Overview
Simple starter project for a Weekly Report Management System using Struts2, MySQL and Bootstrap 3.
This is a minimal, practice example project.


![Java](https://img.shields.io/badge/Java-1.8-orange)
![Struts2](https://img.shields.io/badge/Framework-Struts2-blue)
![MySQL](https://img.shields.io/badge/Database-MySQL-lightblue)

---

## 🚀 Features

| Layer          | Technology                  |
| -------------- | --------------------------- |
| **Frontend**   | JSP, HTML5, CSS3, Bootstrap |
| **Backend**    | Java 8, Apache Struts 2.5   |
| **Database**   | MySQL 8.0                   |
| **Build Tool** | Maven                       |
| **Server**     | Apache Tomcat 9             |

---

## How to run
1. Install MySQL and create the database:
   - Run `db/schema.sql` in MySQL server. Adjust credentials in `DBUtil.java` if needed.
2. Build WAR:
   - `mvn clean package`
3. Deploy `target/WeeklyReportSystem.war` to Apache Tomcat (8+).
4. Open `http://localhost:8080/WeeklyReportSystem/` and login with username `admin` password `admin`.

---
