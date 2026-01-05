-- =====================================================
-- Customer Support System - Database Setup Script
-- =====================================================
-- This script creates all necessary databases and tables
-- for the Customer Support System
-- =====================================================

-- Create Database: user
-- This is the main database used by most of the application
CREATE DATABASE IF NOT EXISTS `user` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user`;

-- =====================================================
-- Table: users
-- Stores user account information
-- =====================================================
CREATE TABLE IF NOT EXISTS `users` (
  `User_id` INT(11) NOT NULL AUTO_INCREMENT,
  `F_name` VARCHAR(100) NOT NULL,
  `L_name` VARCHAR(100) NOT NULL,
  `Email` VARCHAR(255) NOT NULL UNIQUE,
  `Username` VARCHAR(100) NOT NULL UNIQUE,
  `Password` VARCHAR(255) NOT NULL,
  `Age` INT(11) DEFAULT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`User_id`),
  INDEX `idx_username` (`Username`),
  INDEX `idx_email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- =====================================================
-- Table: ticket
-- Stores support tickets created by users
-- =====================================================
CREATE TABLE IF NOT EXISTS `ticket` (
  `ticket_id` INT(11) NOT NULL AUTO_INCREMENT,
  `User_id` INT(11) NOT NULL,
  `title` VARCHAR(255) NOT NULL,
  `description` TEXT NOT NULL,
  `category` VARCHAR(100) NOT NULL,
  `attachment` VARCHAR(255) DEFAULT NULL,
  `status` VARCHAR(50) DEFAULT 'pending',
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ticket_id`),
  FOREIGN KEY (`User_id`) REFERENCES `users`(`User_id`) ON DELETE CASCADE,
  INDEX `idx_user_id` (`User_id`),
  INDEX `idx_status` (`status`),
  INDEX `idx_category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- =====================================================
-- Table: subscriptions
-- Stores premium subscription information
-- =====================================================
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `subscriptionId` INT(11) NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `subscription_plan` VARCHAR(50) NOT NULL,
  `card_number` VARCHAR(50) DEFAULT NULL,
  `expiry_date` VARCHAR(20) DEFAULT NULL,
  `cvv` VARCHAR(10) DEFAULT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`subscriptionId`),
  INDEX `idx_email` (`email`),
  INDEX `idx_plan` (`subscription_plan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- =====================================================
-- Table: contact_us
-- Stores feedback/contact form submissions
-- =====================================================
CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(50) DEFAULT NULL,
  `message` TEXT NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `idx_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- =====================================================
-- Table: employee
-- Stores employee/CSA information
-- =====================================================
CREATE TABLE IF NOT EXISTS `employee` (
  `employee_Id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(100) NOT NULL UNIQUE,
  `password` VARCHAR(255) NOT NULL,
  `F_name` VARCHAR(100) NOT NULL,
  `L_name` VARCHAR(100) NOT NULL,
  `specialization` VARCHAR(255) DEFAULT NULL,
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `age` INT(11) DEFAULT NULL,
  `phone` VARCHAR(50) DEFAULT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`employee_Id`),
  INDEX `idx_username` (`username`),
  INDEX `idx_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- =====================================================
-- Create Database: Admin
-- (Optional - mentioned in conn.php but may not be actively used)
-- =====================================================
CREATE DATABASE IF NOT EXISTS `Admin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Admin`;

-- Add any Admin-specific tables here if needed
-- Currently, Admin uses the 'user' database

-- =====================================================
-- Create Database: premiumuser
-- (Optional - mentioned in Premium/config.php)
-- =====================================================
CREATE DATABASE IF NOT EXISTS `premiumuser` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `premiumuser`;

-- Add any premiumuser-specific tables here if needed
-- Currently, subscriptions are stored in 'user' database

-- =====================================================
-- Sample Data (Optional - for testing)
-- =====================================================
USE `user`;

-- Insert a sample admin user (password: Password123)
-- Password hash for 'Password123'
INSERT INTO `users` (`F_name`, `L_name`, `Email`, `Username`, `Password`, `Age`) 
VALUES ('Admin', 'User', 'admin@supportify.com', 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 30)
ON DUPLICATE KEY UPDATE `Username`=`Username`;

-- Insert a sample CSA employee (password: Password123)
INSERT INTO `employee` (`username`, `password`, `F_name`, `L_name`, `specialization`, `email`, `age`, `phone`)
VALUES ('csa', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CSA', 'Agent', 'Customer Support', 'csa@supportify.com', 25, '0771234567')
ON DUPLICATE KEY UPDATE `username`=`username`;

-- =====================================================
-- Database Setup Complete!
-- =====================================================
-- Next Steps:
-- 1. Import this file into phpMyAdmin
-- 2. Verify all tables are created
-- 3. Test the application
-- =====================================================

