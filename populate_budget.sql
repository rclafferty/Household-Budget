# Budgets
INSERT INTO Budget (userID, title) VALUES ((SELECT id FROM User WHERE username LIKE 'rclafferty'), 'May 2019 Budget');

# Incomes
INSERT INTO Income (budgetID, title, amount) VALUES ((SELECT id FROM Budget WHERE title LIKE 'May 2019 Budget'), 'April Leftover', 400.00);
INSERT INTO Income (budgetID, title, amount) VALUES ((SELECT id FROM Budget WHERE title LIKE 'May 2019 Budget'), 'First National Bank Transfer', 100.00);
INSERT INTO Income (budgetID, title, amount) VALUES ((SELECT id FROM Budget WHERE title LIKE 'May 2019 Budget'), 'April Income', 1700.00);

# Budget Categories
INSERT INTO BudgetCategory (budgetID, title) VALUES ((SELECT id FROM Budget WHERE userID = (SELECT id FROM User WHERE username LIKE 'rclafferty') AND title LIKE 'May 2019 Budget'), 'Bills');
INSERT INTO BudgetCategory (budgetID, title) VALUES ((SELECT id FROM Budget WHERE userID = (SELECT id FROM User WHERE username LIKE 'rclafferty') AND title LIKE 'May 2019 Budget'), 'Car');
INSERT INTO BudgetCategory (budgetID, title) VALUES ((SELECT id FROM Budget WHERE userID = (SELECT id FROM User WHERE username LIKE 'rclafferty') AND title LIKE 'May 2019 Budget'), 'Food');
INSERT INTO BudgetCategory (budgetID, title) VALUES ((SELECT id FROM Budget WHERE userID = (SELECT id FROM User WHERE username LIKE 'rclafferty') AND title LIKE 'May 2019 Budget'), 'Hermit Crabs');
INSERT INTO BudgetCategory (budgetID, title) VALUES ((SELECT id FROM Budget WHERE userID = (SELECT id FROM User WHERE username LIKE 'rclafferty') AND title LIKE 'May 2019 Budget'), 'Payments');
INSERT INTO BudgetCategory (budgetID, title) VALUES ((SELECT id FROM Budget WHERE userID = (SELECT id FROM User WHERE username LIKE 'rclafferty') AND title LIKE 'May 2019 Budget'), 'Personal');
INSERT INTO BudgetCategory (budgetID, title) VALUES ((SELECT id FROM Budget WHERE userID = (SELECT id FROM User WHERE username LIKE 'rclafferty') AND title LIKE 'May 2019 Budget'), 'Savings');

### Budget Subcategories ###

# Bills
INSERT INTO BudgetSubcategory (categoryID, title, allotedAmount) VALUES (
	(
        SELECT bc.id FROM BudgetCategory bc
			JOIN Budget b ON bc.budgetID = b.id
			JOIN User u ON b.userID = u.id
		WHERE bc.title LIKE 'Bills' AND u.username LIKE 'rclafferty'
    ),
	'Rent',
	740.00
);
INSERT INTO BudgetSubcategory (categoryID, title, allotedAmount) VALUES (
	(
        SELECT bc.id FROM BudgetCategory bc
			JOIN Budget b ON bc.budgetID = b.id
			JOIN User u ON b.userID = u.id
		WHERE bc.title LIKE 'Bills' AND u.username LIKE 'rclafferty'
    ),
	'Utilities - Electricity',
	70.00
);
INSERT INTO BudgetSubcategory (categoryID, title, allotedAmount) VALUES (
	(
        SELECT bc.id FROM BudgetCategory bc
			JOIN Budget b ON bc.budgetID = b.id
			JOIN User u ON b.userID = u.id
		WHERE bc.title LIKE 'Bills' AND u.username LIKE 'rclafferty'
    ),
	'Utilities - Internet',
	45.00
);
INSERT INTO BudgetSubcategory (categoryID, title, allotedAmount) VALUES (
	(
        SELECT bc.id FROM BudgetCategory bc
			JOIN Budget b ON bc.budgetID = b.id
			JOIN User u ON b.userID = u.id
		WHERE bc.title LIKE 'Bills' AND u.username LIKE 'rclafferty'
    ),
	'Utilities - Trash/Water/Sewage',
	17.00
);

# Car
INSERT INTO BudgetSubcategory (categoryID, title, allotedAmount) VALUES (
	(
        SELECT bc.id FROM BudgetCategory bc
			JOIN Budget b ON bc.budgetID = b.id
			JOIN User u ON b.userID = u.id
		WHERE bc.title LIKE 'Car' AND u.username LIKE 'rclafferty'
    ),
	'Gas',
	300.00
);
INSERT INTO BudgetSubcategory (categoryID, title, allotedAmount) VALUES (
	(
        SELECT bc.id FROM BudgetCategory bc
			JOIN Budget b ON bc.budgetID = b.id
			JOIN User u ON b.userID = u.id
		WHERE bc.title LIKE 'Car' AND u.username LIKE 'rclafferty'
    ),
	'Insurance',
	40.00
);
INSERT INTO BudgetSubcategory (categoryID, title, allotedAmount) VALUES (
	(
        SELECT bc.id FROM BudgetCategory bc
			JOIN Budget b ON bc.budgetID = b.id
			JOIN User u ON b.userID = u.id
		WHERE bc.title LIKE 'Car' AND u.username LIKE 'rclafferty'
    ),
	'Maintenance',
	50.00
);

# Food
INSERT INTO BudgetSubcategory (categoryID, title, allotedAmount) VALUES (
	(
        SELECT bc.id FROM BudgetCategory bc
			JOIN Budget b ON bc.budgetID = b.id
			JOIN User u ON b.userID = u.id
		WHERE bc.title LIKE 'Food' AND u.username LIKE 'rclafferty'
    ),
	'Eating Out',
	40.00
);
INSERT INTO BudgetSubcategory (categoryID, title, allotedAmount) VALUES (
	(
        SELECT bc.id FROM BudgetCategory bc
			JOIN Budget b ON bc.budgetID = b.id
			JOIN User u ON b.userID = u.id
		WHERE bc.title LIKE 'Food' AND u.username LIKE 'rclafferty'
    ),
	'Groceries',
	50.00
);

# Hermit Crabs
INSERT INTO BudgetSubcategory (categoryID, title, allotedAmount) VALUES (
	(
        SELECT bc.id FROM BudgetCategory bc
			JOIN Budget b ON bc.budgetID = b.id
			JOIN User u ON b.userID = u.id
		WHERE bc.title LIKE 'Hermit Crabs' AND u.username LIKE 'rclafferty'
    ),
	'Misc',
	0.01
);
INSERT INTO BudgetSubcategory (categoryID, title, allotedAmount) VALUES (
	(
        SELECT bc.id FROM BudgetCategory bc
			JOIN Budget b ON bc.budgetID = b.id
			JOIN User u ON b.userID = u.id
		WHERE bc.title LIKE 'Hermit Crabs' AND u.username LIKE 'rclafferty'
    ),
	'Supplies',
	0.01
);

# Payments
INSERT INTO BudgetSubcategory (categoryID, title, allotedAmount) VALUES (
	(
        SELECT bc.id FROM BudgetCategory bc
			JOIN Budget b ON bc.budgetID = b.id
			JOIN User u ON b.userID = u.id
		WHERE bc.title LIKE 'Payments' AND u.username LIKE 'rclafferty'
    ),
	'Chillennium',
	25.00
);

# Personal
INSERT INTO BudgetSubcategory (categoryID, title, allotedAmount) VALUES (
	(
        SELECT bc.id FROM BudgetCategory bc
			JOIN Budget b ON bc.budgetID = b.id
			JOIN User u ON b.userID = u.id
		WHERE bc.title LIKE 'Personal' AND u.username LIKE 'rclafferty'
    ),
	'Medicine',
	0.01
);
INSERT INTO BudgetSubcategory (categoryID, title, allotedAmount) VALUES (
	(
        SELECT bc.id FROM BudgetCategory bc
			JOIN Budget b ON bc.budgetID = b.id
			JOIN User u ON b.userID = u.id
		WHERE bc.title LIKE 'Personal' AND u.username LIKE 'rclafferty'
    ),
	'Misc Care',
	0.01
);

# Savings
INSERT INTO BudgetSubcategory (categoryID, title, allotedAmount) VALUES (
	(
        SELECT bc.id FROM BudgetCategory bc
			JOIN Budget b ON bc.budgetID = b.id
			JOIN User u ON b.userID = u.id
		WHERE bc.title LIKE 'Savings' AND u.username LIKE 'rclafferty'
    ),
	'June Rent Savings',
	900.00
);