# Database Setup Guide for Customer Support System

## Prerequisites
- XAMPP installed and running
- phpMyAdmin accessible (usually at http://localhost/phpmyadmin)

## Step-by-Step Setup Instructions

### Method 1: Using phpMyAdmin (Recommended)

1. **Start XAMPP Services**
   - Open XAMPP Control Panel
   - Start **Apache** and **MySQL** services
   - Ensure both show green "Running" status

2. **Access phpMyAdmin**
   - Open your web browser
   - Navigate to: `http://localhost/phpmyadmin`
   - Default login credentials:
     - Username: `root`
     - Password: (leave empty)

3. **Import SQL File**
   - Click on the **"Import"** tab in phpMyAdmin
   - Click **"Choose File"** button
   - Select the `database_setup.sql` file from your project folder
   - Click **"Go"** button at the bottom
   - Wait for the import to complete (you should see success messages)

4. **Verify Database Creation**
   - In the left sidebar, you should see three databases:
     - `user` (main database)
     - `Admin` (optional)
     - `premiumuser` (optional)
   - Click on `user` database to verify tables:
     - `users`
     - `ticket`
     - `subscriptions`
     - `contact_us`
     - `employee`

### Method 2: Using MySQL Command Line

1. **Open MySQL Command Line**
   - Open Command Prompt (Windows) or Terminal (Mac/Linux)
   - Navigate to MySQL bin directory:
     ```bash
     cd C:\xampp\mysql\bin
     ```
   - Login to MySQL:
     ```bash
     mysql -u root -p
     ```
     (Press Enter if no password)

2. **Import SQL File**
   ```sql
   source D:/xampp/htdocs/Customer-Support-System/database_setup.sql
   ```
   (Adjust the path according to your project location)

3. **Verify**
   ```sql
   SHOW DATABASES;
   USE user;
   SHOW TABLES;
   ```

## Database Structure

### Database: `user` (Main Database)

#### Table: `users`
- Stores all registered user accounts
- Columns: User_id, F_name, L_name, Email, Username, Password, Age

#### Table: `ticket`
- Stores support tickets
- Columns: ticket_id, User_id, title, description, category, attachment, status, created_at

#### Table: `subscriptions`
- Stores premium subscription information
- Columns: subscriptionId, full_name, email, password, subscription_plan, card_number, expiry_date, cvv

#### Table: `contact_us`
- Stores feedback/contact form submissions
- Columns: id, name, email, phone, message

#### Table: `employee`
- Stores employee/CSA information
- Columns: employee_Id, username, password, F_name, L_name, specialization, email, age, phone

## Default Login Credentials

After importing the database, you can use these test accounts:

### Admin Account
- **Username:** `admin`
- **Password:** `Password123`
- **Access:** Admin Panel (`/GP SLIIT/Admin/index.php`)

### CSA Account
- **Username:** `csa`
- **Password:** `Password123`
- **Access:** CSA Panel (`/GP SLIIT/CSA/index.php`)

## Connection Configuration

The application uses these database connection files:

1. **GP SLIIT/HTML/udbcon.php** - Main user database connection
2. **GP SLIIT/CSA/dbcon.php** - CSA database connection
3. **GP SLIIT/Admin/udbcon.php** - Admin database connection
4. **GP SLIIT/Premium/config.php** - Premium database connection

All connections use:
- **Host:** `localhost`
- **Username:** `root`
- **Password:** (empty)
- **Database:** `user` (or respective database)

## Troubleshooting

### Issue: "Connection failed" error
- **Solution:** Ensure MySQL service is running in XAMPP Control Panel
- Check if database name matches in connection files

### Issue: "Table doesn't exist" error
- **Solution:** Verify all tables were created successfully
- Re-import the SQL file if tables are missing

### Issue: "Access denied" error
- **Solution:** Check MySQL username and password in connection files
- Default XAMPP MySQL root user has no password

### Issue: "Column not found" error
- **Solution:** Ensure column names match exactly (case-sensitive)
- Check that SQL file was imported completely

## Testing the Connection

1. **Test User Registration**
   - Navigate to: `http://localhost/Customer-Support-System/GP SLIIT/HTML/signup.php`
   - Create a new account
   - Check phpMyAdmin to verify user was added

2. **Test Login**
   - Navigate to: `http://localhost/Customer-Support-System/GP SLIIT/HTML/login.php`
   - Login with test credentials

3. **Test Ticket Creation**
   - Login as a user
   - Create a support ticket
   - Verify ticket appears in database

## Security Notes

⚠️ **Important:** This is a development setup. For production:
- Change default MySQL root password
- Use prepared statements (some files already do)
- Implement proper password hashing (already implemented)
- Add input validation and sanitization
- Use environment variables for database credentials

## Additional Resources

- XAMPP Documentation: https://www.apachefriends.org/docs/
- phpMyAdmin Documentation: https://www.phpmyadmin.net/docs/
- MySQL Documentation: https://dev.mysql.com/doc/

