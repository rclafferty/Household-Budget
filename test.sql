SELECT u.firstName AS 'First Name', u.lastName AS 'Last Name', b.title AS 'Budget Title', bc.title AS 'Category', bs.title AS 'Subcategory', bs.allotedAmount AS 'Budgetted Amount' FROM User u
    JOIN Budget b ON u.id = b.userID
    JOIN BudgetCategory bc ON b.id = bc.budgetID
    JOIN BudgetSubcategory bs ON bc.id = bs.categoryID
    WHERE u.username LIKE 'rclafferty';

SELECT u.firstName AS 'First Name', u.lastName AS 'Last Name', b.title AS 'Budget Title' FROM User u
    JOIN Budget b ON u.id = b.userID
    WHERE u.username LIKE 'rclafferty';

SELECT id FROM BudgetCategory WHERE title LIKE 'Bills';

SELECT bc.id FROM BudgetCategory bc
	JOIN Budget b ON bc.budgetID = b.id
	JOIN User u ON b.userID = u.id
WHERE bc.title LIKE 'Bills' AND u.username LIKE 'rclafferty';
    
SELECT f.title AS 'Family', u.firstName AS 'First Name', u.lastName AS 'Last Name', b.title AS 'Budget Title', bc.title AS 'Category', bs.title AS 'Subcategory', FORMAT(bs.allotedAmount, 2) AS 'Budgetted Amount' FROM Family f
	JOIN Family_Users fu ON f.id = fu.familyID
    JOIN User u ON fu.userID = u.id
    JOIN Budget b ON u.id = b.userID
    JOIN BudgetCategory bc ON b.id = bc.budgetID
    JOIN BudgetSubcategory bs ON bc.id = bs.categoryID;
    
# Total amount rclafferty has budgetted
SELECT u.username AS 'User', FORMAT(SUM(bs.allotedAmount), 2) AS 'Total Budgetted Amount' FROM User u
    JOIN Budget b ON u.id = b.userID
    JOIN BudgetCategory bc ON b.id = bc.budgetID
    JOIN BudgetSubcategory bs ON bc.id = bs.categoryID;