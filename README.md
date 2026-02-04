# Attachment-System-Database-Design
# Student Attachment Management System (Database Project)

## 📌 Overview
This project is a relational database system designed to manage student industrial attachments.
It tracks students, their academic programs, organizations, supervisors, lecturers, attachments,
and daily/weekly logbook entries used for evaluation.

The system is designed using proper normalization principles and implemented in MySQL.

---

## 🧩 Entities
- Department
- Program
- Student
- Lecturer
- Organization
- Supervisor
- Attachment
- Logbook

---

## 🔗 Key Relationships
- A department offers many programs
- A program has many students
- An organization has many supervisors
- A student can have multiple attachments
- Each attachment is supervised by one supervisor and evaluated by one lecturer
- Each attachment has many logbook entries

---

## 🛠️ Tools Used
- MySQL
- MySQL Workbench
- GitHub

---

## 🚀 How to Run
1. Clone the repository
2. Open MySQL Workbench
3. Run `database/schema.sql`

---

## 📊 ER Diagram
The ER diagram is available in the `erd/` directory.

---

## 🎯 Learning Outcomes
- Entity-Relationship modeling
- Database normalization
- Use of foreign keys and constraints
- Real-world database design for academic systems

## 👥 Group Members

* *Debra Mutheu*
* *Migelle Handel*
* *Cornelia Achieng'*
* *Melchizedek Wevasa*
* *Daniel Chirunga*
* *Tabitha Doris *
* *Patric Kamau*
* *Lewis Mugo*

---
