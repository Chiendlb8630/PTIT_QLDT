# 📘 Education Management - Spring Boot Project

This project is a web-based Training Management System developed with Spring Boot, aiming to facilitate academic operations like course registration, grade tracking, student-teacher interaction, and announcements. It integrates a structured MySQL database for robust data management.

---

## 🛠️ Technologies Used

- ✅ Java 17+
- ✅ Spring Boot
- ✅ Spring Data JPA
- ✅ MySQL
- ✅ RESTful API
- ✅ Maven

---

## ⚙️ Installation Guide

### 1. Database Setup

Use the provided SQL file (`DB_QLDT.sql`) to set up the MySQL database:

```sql
CREATE DATABASE qldt;
USE qldt;
-- Then run DB_QLDT.sql
```

You can execute it using MySQL Workbench or the MySQL CLI:

### 2. Configure application.properties

Edit `src/main/resources/application.properties`:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/qldt
spring.datasource.username=root
spring.datasource.password=your_password

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

### 3. Run the Project

```bash
mvn clean install
mvn spring-boot:run
```

---

## 📌 Main Features

- 👤 Account Management (Admin, Teacher, Student)
- 📚 Course Management (Credits, Terms, Prerequisites)
- 🏫 Course Registration (Group, Slot Management)
- 📝 Grade Management
- 🔔 Notifications and Announcements
- 📊 Term-wise Academic Result Tracking

---

## 🔐 Default Accounts

| Role    | Username | Password |
|---------|----------|----------|
| Admin   | admin    | admin    |
| Teacher | nct      | nct      |
| Student | nva      | nva      |

---

## 🗃️ Database Overview

The SQL file `DB_QLDT.sql` contains the following main tables:

- `accounts` – Stores user accounts (admin, teachers, students)
- `courses` – Stores course information
- `courseregistrations` – Tracks student course enrollments and grades
- `groups` – Defines course groups (time slots, rooms, teachers)
- `groupregistrations` – Tracks group enrollment per student
- `notifications` – Stores announcements shown to users

---

## This project belongs to GROUP 2 for the OOP class(TEL1448).

Khương Đình Chiến - OOP_STARTER 


