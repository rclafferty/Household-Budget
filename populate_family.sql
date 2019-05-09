INSERT INTO Family (title) VALUES ('Dream Team');

INSERT INTO Family_Users(userID, familyID) VALUES ((SELECT id FROM User WHERE username LIKE 'mlee'), (SELECT id FROM Family WHERE title LIKE 'Dream Team'));
INSERT INTO Family_Users(userID, familyID) VALUES ((SELECT id FROM User WHERE username LIKE 'rclafferty'), (SELECT id FROM Family WHERE title LIKE 'Dream Team'));