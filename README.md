# Customer Support System

A **web-based Customer Support System** designed to streamline ticket handling, user management, and customer interactions through a centralized platform. Built using **PHP, MySQL, HTML, CSS, and JavaScript**, this system supports role-based access and is suitable for organizations of various sizes.

---

## 📌 Overview

The Customer Support System enables organizations to efficiently manage customer issues, support tickets, employees, and subscriptions. It provides separate dashboards for **Admins**, **Customer Support Agents (CSAs)**, and **Regular Users**, ensuring secure and structured access to system features.

---

## 🚀 Key Features

### 🔐 Multi-User Role System

* **Admin Panel**: Full system control and configuration
* **Customer Support Agent (CSA) Panel**: Ticket handling and user support
* **Regular Users**: Ticket creation and account management

### 🎫 Ticket Management System

* Create support tickets with:

  * Title and description
  * Category selection (Technical Support, HR, Technology, Legal, Real Estate)
  * File attachments
* Ticket status tracking (Pending, Approved, etc.)
* Users can create, view, edit, and delete their own tickets
* Admins and CSAs can manage all tickets

### 👤 User Management

* User registration and login
* Profile management (username & password updates)
* Account deletion
* Admin/CSA-controlled user creation, editing, and removal
* Secure password hashing using **bcrypt**

### 🧑‍💼 Employee Management (Admin Only)

* Add, edit, and delete employees / CSAs
* Track employee details:

  * Name, email, age, phone number
  * Specialization
  * Login credentials

### 📚 Knowledge Center

* Article library with search functionality
* Categories include:

  * E-commerce
  * Web Development
  * AI Trends
  * Technology
  * Business
  * Personal Development

### 💎 Premium Subscription System

* Subscription plans (Monthly / Yearly)
* Payment information handling
* Subscription management for premium users

### ➕ Additional Features

* FAQ section
* Feedback / Contact form
* Support page with documentation links
* Analytics & reports (Admin)
* System settings management (Admin)

---

## 🧱 Technical Architecture

### Frontend

* HTML5
* CSS3 (custom stylesheets)
* JavaScript (navigation, validation, UI behavior)
* Fully responsive design

### Backend

* PHP (7.x and 8.x compatible)
* MySQL database
* Session-based authentication
* Secure password hashing using `password_hash()`

---

## 🗄️ Database Structure

**Main Database:** `user`

Tables included:

* `users` – User accounts
* `ticket` – Support tickets
* `subscriptions` – Premium subscription details
* `contact_us` – Feedback and contact submissions
* `employee` – Employee / CSA records

---

## 📂 Project Structure

```
Customer-Support-System/
├── GP SLIIT/
│   ├── Admin/          # Admin panel files
│   ├── CSA/            # Customer Support Agent panel
│   ├── HTML/           # User-facing pages
│   ├── CSS/            # Stylesheets
│   ├── JS/             # JavaScript files
│   ├── Images/         # Image assets
│   ├── KC/             # Knowledge Center
│   ├── Premium/        # Premium subscription system
│   └── new support/    # Support & help pages
├── database_setup.sql  # Database creation script
└── Documentation files
```

---

## 👥 User Roles & Access

### Regular User

* Register / Login
* Create and manage support tickets
* View and edit profile
* Access Knowledge Center
* Submit feedback
* Subscribe to premium plans

### Customer Support Agent (CSA)

* Manage user accounts
* View and update ticket statuses
* Handle customer inquiries

### Admin

* Full system access
* User and employee management
* Ticket management
* System settings
* Analytics and reports

---

## 🔒 Security Features

* Password hashing using PHP `password_hash()`
* Session-based authentication
* SQL injection prevention (prepared statements in key areas)
* Input validation and sanitization

---

## 🛠️ Development Environment

* **Server**: XAMPP (Apache + MySQL)
* **Database**: phpMyAdmin
* **PHP Version**: PHP 7.x / 8.x
* **Browser Support**: Chrome, Firefox, Edge, Safari

---

## 🧩 Use Cases

* Customer service departments
* IT support teams
* Help desk systems
* Small to medium businesses
* Educational institutions
* Any organization requiring ticket-based support management

---

## ✅ Current Status

* All path issues resolved
* Database connections standardized
* CSS and styling issues fixed
* Database setup scripts created
* Ready for deployment and testing

---

## 🔮 Future Enhancements

* Email notifications
* Real-time chat support
* Advanced ticket search and filtering
* Improved file upload handling
* Interactive dashboard analytics
* Mobile application integration
* REST API development

---

## 📄 License

This project is intended for educational and learning purposes. You are free to modify and extend it based on your requirements.

---

⭐ *If you find this project useful, consider giving it a star on GitHub!*


