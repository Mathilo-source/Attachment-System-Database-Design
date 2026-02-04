-- 1. Create the database
CREATE DATABASE IF NOT EXISTS student_attachment;
USE student_attachment;

-- 2. Create Department table
CREATE TABLE Department (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- 3. Create Program table
CREATE TABLE Program (
    program_id INT AUTO_INCREMENT PRIMARY KEY,
    program_name VARCHAR(100) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- 4. Create Lecturer table
CREATE TABLE Lecturer (
    lecturer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20),
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- 5. Create Organization table
CREATE TABLE Organization (
    organization_id INT AUTO_INCREMENT PRIMARY KEY,
    organization_name VARCHAR(100) NOT NULL,
    industry VARCHAR(100),
    address VARCHAR(255),
    email VARCHAR(100)
);

-- 6. Create Supervisor table (from Organization)
CREATE TABLE Supervisor (
    supervisor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20),
    organization_id INT NOT NULL,
    FOREIGN KEY (organization_id) REFERENCES Organization(organization_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- 7. Create Student table
CREATE TABLE Student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20),
    program_id INT NOT NULL,
    FOREIGN KEY (program_id) REFERENCES Program(program_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- 8. Create Attachment table
CREATE TABLE Attachment (
    attachment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    supervisor_id INT NOT NULL,
    lecturer_id INT NOT NULL,
    organization_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status ENUM('Pending','Ongoing','Completed') DEFAULT 'Pending',
    comments TEXT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (supervisor_id) REFERENCES Supervisor(supervisor_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (lecturer_id) REFERENCES Lecturer(lecturer_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (organization_id) REFERENCES Organization(organization_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
