# Hospital-Management-Database


---

# 🏥 Hospital Management System – Database Design

## 📌 Project Overview

This project presents the design and implementation of a relational database for a Hospital Management System using MySQL. The database is developed based on an Entity Relationship (ER) model and includes proper normalization, primary keys, foreign keys, and relationship constraints to ensure data integrity.

The system efficiently manages patient records, staff details, room allocations, medical reports, billing information, and hospital operations.

---

## 🗄 Database Name

**HospitalDB**

---

## 🏢 Core Entities

The database consists of the following main entities:

* **Patient** – Stores personal and medical details of patients.
* **Employee** – Stores general staff information.
* **Doctor** – Specialized entity derived from Employee.
* **Nurse** – Derived from Employee.
* **Receptionist** – Derived from Employee.
* **Rooms** – Manages hospital room details and availability.
* **Bills** – Stores billing details linked to patients.
* **TestReport** – Maintains medical test records of patients.
* **Records** – Stores appointment and hospital record details.

---

## 🔗 Relationships Implemented

* Patient consults Doctor (Many-to-Many)
* Patient assigned to Rooms
* Nurse governs Rooms
* Receptionist maintains Records
* Bills linked to Patient
* Test Reports linked to Patient
* Specialization (ISA Relationship): Employee → Doctor / Nurse / Receptionist

---

## 🛠 Technologies Used

* MySQL
* SQL (DDL & DML)
* ER Modeling
* Relational Database Design Principles

---

## 📊 Database Concepts Applied

* Primary Keys
* Foreign Keys
* Composite Keys
* One-to-Many Relationships
* Many-to-Many Relationships
* Referential Integrity
* Specialization / Generalization (ISA Hierarchy)

---

## 🎯 Objective

The objective of this project is to design a structured and normalized relational database system that models real-world hospital operations while maintaining consistency, accuracy, and data integrity.



If you want, I can also help you add the ER diagram preview inside README so it displays visually.
