# Unlimited number of budget categories, like Utilities, Travel Expenses, Child Care
# Let the user enter x number of sub-items for each of these categories listing their monthly expenses along with any income items
# Have the program keep track of their expenses and their cash flow
# This program should let the user know if they are overspending or how much they are saving for the month

DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
	id int PRIMARY KEY AUTO_INCREMENT,
	username varchar(20) NOT NULL,
	passcode varchar(40) NOT NULL,
	email varchar(100) NOT NULL,
	firstName varchar(30) NOT NULL,
	surname varchar(30) NOT NULL,
	age int,

	UNIQUE(username),
	UNIQUE(firstName, surname, age)
);