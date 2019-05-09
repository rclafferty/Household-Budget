DROP TABLE IF EXISTS Transactions;
DROP TABLE IF EXISTS BudgetSubcategory;
DROP TABLE IF EXISTS BudgetCategory;
DROP TABLE IF EXISTS Budget;
DROP TABLE IF EXISTS Family_Users;
DROP TABLE IF EXISTS Family;
DROP TABLE IF EXISTS User;

CREATE TABLE IF NOT EXISTS User (
	id int PRIMARY KEY AUTO_INCREMENT,
    firstName varchar(20) NOT NULL,
    middleName varchar(20),
    lastName varchar(30) NOT NULL,
    username varchar(30) NOT NULL,
    email varchar(100) NOT NULL,
    passcode varchar(256) NOT NULL,
    age int DEFAULT 0,
    
    # Unique Keys
    UNIQUE(username),
    UNIQUE(email),
    
    # Indexes
    INDEX(lastName),
    INDEX(firstName, middleName, lastName),
    INDEX(username),
    INDEX(email)
);
CREATE TABLE IF NOT EXISTS Family (
	id int PRIMARY KEY AUTO_INCREMENT,
    title varchar(50) NOT NULL,
    
    # Unique Keys
    UNIQUE(title),
    
    # Indexes
    INDEX(title)
);
CREATE TABLE IF NOT EXISTS Family_Users (
	userID int,
		FOREIGN KEY (userID) REFERENCES User(id),
    familyID int,
		FOREIGN KEY (familyID) REFERENCES Family(id)
);
CREATE TABLE IF NOT EXISTS Budget (
	id int PRIMARY KEY AUTO_INCREMENT,
    userID int,
		FOREIGN KEY (userID) REFERENCES User(id),
	title varchar(30) NOT NULL,
    
    # Unique Keys
    UNIQUE(userID, title),
    
    # Indexes
    INDEX(title)
);
CREATE TABLE IF NOT EXISTS Income (
    id int PRIMARY KEY AUTO_INCREMENT,
    budgetID int,
		FOREIGN KEY (budgetID) REFERENCES Budget(id),
	title varchar(30) NOT NULL,
    amount float NOT NULL,
    
    # Unique Keys
    UNIQUE(budgetID, title),
    
    # Indexes
    INDEX(title)
);
CREATE TABLE IF NOT EXISTS BudgetCategory (
	id int PRIMARY KEY AUTO_INCREMENT,
    budgetID int,
		FOREIGN KEY (budgetID) REFERENCES Budget(id),
	title varchar(30) NOT NULL,
    
    # Unique Keys
    UNIQUE(budgetID, title),
    
    # Indexes
    INDEX(title)
);
CREATE TABLE IF NOT EXISTS BudgetSubcategory (
	id int PRIMARY KEY AUTO_INCREMENT,
    categoryID int,
		FOREIGN KEY (categoryID) REFERENCES BudgetCategory(id),
	title varchar(30) NOT NULL,
    allotedAmount float NOT NULL DEFAULT 0.00,
    
    # Unique Keys
    UNIQUE(categoryID, title),
    
    # Indexes
    INDEX(title)
);
CREATE TABLE IF NOT EXISTS Transactions (
	id int PRIMARY KEY AUTO_INCREMENT,
    subcategoryID int,
		FOREIGN KEY (subcategoryID) REFERENCES BudgetSubcategory(id),
	title varchar(50) NOT NULL,
	amount float NOT NULL,
    description varchar(200) NOT NULL,
    calendarDateTime DATETIME NOT NULL,
    
    # Unique Keys
    UNIQUE(calendarDateTime),
    
    # Indexes
    INDEX(title),
    INDEX(title, calendarDateTime),
    INDEX(title, calendarDateTime, description)
);