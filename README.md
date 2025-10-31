# Weekly Report Management System (Struts2 + MySQL + Bootstrap 3)

## Overview
Simple starter project for a Weekly Report Management System using Struts2, MySQL and Bootstrap 3.
This is a minimal, educational example.

## How to run
1. Install MySQL and create the database:
   - Run `db/schema.sql` in your MySQL server. Adjust credentials in `DBUtil.java` if needed.
2. Build WAR:
   - `mvn clean package`
3. Deploy `target/WeeklyReportSystem.war` to Apache Tomcat (8+).
4. Open `http://localhost:8080/WeeklyReportSystem/` and login with username `admin` password `admin`.

## Notes / Next steps
- Passwords are stored in plaintext (for demo). Replace with hashing before production.
- Add proper session/role checks and input validation.
- Enhance DAOs with connection pooling.
- Improve UI and add user-friendly features (filtering, pagination, comments, approval workflow).
