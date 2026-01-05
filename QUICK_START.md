# Quick Start Guide - Database Setup

## 🚀 Fast Setup (5 Minutes)

### Step 1: Start XAMPP
1. Open **XAMPP Control Panel**
2. Click **Start** for **Apache** and **MySQL**
3. Both should show green "Running"

### Step 2: Open phpMyAdmin
- Go to: **http://localhost/phpmyadmin**
- Username: `root`
- Password: (leave empty)

### Step 3: Import Database
1. Click **"Import"** tab
2. Click **"Choose File"**
3. Select **`database_setup.sql`** from project folder
4. Click **"Go"**
5. Wait for success message ✅

### Step 4: Verify
- Check left sidebar for **`user`** database
- Click on it, you should see 5 tables:
  - ✅ users
  - ✅ ticket
  - ✅ subscriptions
  - ✅ contact_us
  - ✅ employee

### Step 5: Test Application
- Open: **http://localhost/Customer-Support-System/GP SLIIT/HTML/home.php**

## 🔑 Test Login Credentials

### Admin Panel
- URL: `http://localhost/Customer-Support-System/GP SLIIT/Admin/index.php`
- Username: `admin`
- Password: `Password123`

### CSA Panel
- URL: `http://localhost/Customer-Support-System/GP SLIIT/CSA/index.php`
- Username: `csa`
- Password: `Password123`

## 📁 Database Connection Files

All connection files are already configured:
- ✅ `GP SLIIT/HTML/udbcon.php`
- ✅ `GP SLIIT/CSA/dbcon.php`
- ✅ `GP SLIIT/Admin/udbcon.php`
- ✅ `GP SLIIT/Premium/config.php`

**No changes needed!** They all connect to:
- Host: `localhost`
- Username: `root`
- Password: (empty)
- Database: `user`

## ⚠️ Common Issues

**"Connection failed"**
→ Check if MySQL is running in XAMPP

**"Table doesn't exist"**
→ Re-import `database_setup.sql` file

**"Access denied"**
→ MySQL root password should be empty (default XAMPP)

## 📞 Need Help?

See `DATABASE_SETUP_GUIDE.md` for detailed instructions.

