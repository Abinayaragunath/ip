CREATE DATABASE hospital;

USE hospital;

-- Table: users
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  password VARCHAR(255),
  role ENUM('patient', 'admin') DEFAULT 'patient'
);

-- Table: appointments
CREATE TABLE appointments (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  doctor_name VARCHAR(100),
  department VARCHAR(100),
  appointment_date DATE,
  appointment_time TIME,
  status VARCHAR(50) DEFAULT 'Pending',
  FOREIGN KEY (user_id) REFERENCES users(id)
);
