create database infy ;
use infy ;

CREATE TABLE customer (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Auto-incrementing ID
    name VARCHAR(100) NOT NULL,       -- Customer's name
    dob DATE NOT NULL,                -- Date of Birth
    email VARCHAR(100) UNIQUE NOT NULL, -- Unique Email ID
    phone_number VARCHAR(15) UNIQUE NOT NULL, -- Phone number (validated later)
    address TEXT NOT NULL,            -- Customer's address
    password VARCHAR(255) NOT NULL   -- Password (hashed for security)
);

CREATE TABLE booking (
    booking_id INT AUTO_INCREMENT PRIMARY KEY, -- Auto-incrementing booking ID
    customer_name VARCHAR(100) NOT NULL,       -- Customer's name
    customer_mail VARCHAR(100) NOT NULL,       -- Customer's email
    customer_phone VARCHAR(15) NOT NULL,       -- Customer's phone number
    booking_date DATE NOT NULL,                -- Booking date
    booking_time TIME NOT NULL,                -- Booking time
    agent_id INT DEFAULT NULL                  -- Agent ID (can be NULL if not chosen)
);

select * from booking ;
select * from customer ;

CREATE TABLE agent (
    agent_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    password VARCHAR(255) NOT NULL,
    languages_known VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    status ENUM('Available', 'Not Available', 'Busy') NOT NULL DEFAULT 'Available'
);

select * from agent ;

INSERT INTO agent (name, gender, password, languages_known, location, start_time, end_time, status)
VALUES
('John Doe', 'Male', 'password123', 'English, French', 'New York', '09:00:00', '17:00:00', 'Available'),
('Jane Smith', 'Female', 'password456', 'Spanish, English', 'Los Angeles', '10:00:00', '18:00:00', 'Busy'),
('Sam Lee', 'Male', 'password789', 'Mandarin, English', 'Chicago', '08:00:00', '16:00:00', 'Not Available');

INSERT INTO agent (name, gender, password, languages_known, location, start_time, end_time, status)
VALUES 
('John Doe', 'Male', 'password123', 'English, Spanish', 'New York', '09:00:00', '17:00:00', 'Available'),
('Jane Smith', 'Female', 'password456', 'English, French', 'Los Angeles', '10:00:00', '18:00:00', 'Available'),
('David Brown', 'Male', 'password789', 'English, German', 'Chicago', '08:00:00', '16:00:00', 'Not Available'),
('Emily White', 'Female', 'password012', 'English, Italian', 'San Francisco', '09:30:00', '17:30:00', 'Busy'),
('Michael Johnson', 'Male', 'password345', 'English, Portuguese', 'Miami', '08:30:00', '17:00:00', 'Available'),
('Sarah Lee', 'Female', 'password678', 'English, Chinese', 'Dallas', '09:00:00', '16:00:00', 'Available');


CREATE TABLE insurance_plans (
    plan_id INT AUTO_INCREMENT PRIMARY KEY,
    plan_category VARCHAR(50) NOT NULL,   -- Health, Life, etc.
    plan_name VARCHAR(100) NOT NULL,       -- Name of the plan
    plan_desc TEXT,                        -- Description of the plan
    age_group VARCHAR(50),                 -- Age group (e.g., "18-60", "60+")
    plan_for_gender ENUM('Male', 'Female', 'Both') NOT NULL,  -- Gender-specific or Both
    premium DECIMAL(10, 2),                -- Premium cost
    coverage_amount DECIMAL(15, 2),        -- Coverage amount
    plan_status ENUM('Active', 'Inactive', 'Discontinued') DEFAULT 'Active' -- Plan status
);

