select * from Person
select * from Advertiser
select * from Subscription
select * from Rider


-- Person Table Values Insertion--

INSERT INTO Person VALUES
--Advertisers--
('Aditya','aditya@gmail.com','75 Saint Alphonsus Street','Boston','MA',1234567890,02120,'abc123',1,0),
('Rajat','rajat@gmail.com','75 Saint Alphonsus Street','Boston','MA',1234567899,02120,'abc123',1,0),
('Sanjana','sanjana@gmail.com','Park Drive','Boston','MA',1111111111,02215,'abc123',1,0),
('Saranya','saranya@gmail.com','Brighton','Boston','MA',1223456789,02135,'abc123',1,0),
('Swaroop','swaroop@gmail.com','95 Saint Alphonsus Street','Boston','MA',1233456789,02120,'abc123',1,0),
('Sishwa','sishwa@gmail.com','100 Alphonsus Street','Boston','MA',1234456789,02111,'abc123',1,0),
('Mohit','mohit@gmail.com','Boylston Street','Boston','MA',1234556789,02219,'abc123',1,0),
('Sahithi','sahithi@gmail.com','Tremont Street','Boston','MA',1234566789,02122,'abc123',1,0),
('Rithvik','rithvik@gmail.com','Huntington Ave','Boston','MA',1234567789,02100,'abc123',1,0),
('Mahith','mahith@gmail.com','Roxbury Crossing','Boston','MA',1234567889,02121,'abc123',1,0),
--Riders--
('Joseph','joseph@gmail.com','Mission Hill','Boston','MA',1212121212,02111,'abc123',0,1),
('Peter','peter@gmail.com','Mission Main','Boston','MA',1234567892,02110,'abc123',0,1),
('Messi','messi@gmail.com','Brooklyn','Boston','MA',1234567893,02140,'abc123',0,1),
('Ronaldo','ronaldo@gmail.com','Backbay','Boston','MA',1234567894,02126,'abc123',0,1),
('David','david@gmail.com','Dorchester','Boston','MA',1234567895,02107,'abc123',0,1),
('Manuel','manuel@gmail.com','Jamaica Plain','Boston','MA',1234567896,02158,'abc123',0,1),
('Bruno','bruno@gmail.com','Arlington','Boston','MA',1234567897 ,02128,'abc123',0,1),
('Pep','pep@gmail.com','Symphony','Boston','MA',1234567891,02113,'abc123',0,1),
('Vijay','vijay@gmail.com','Heath Street','Boston','MA',1234567898,02101,'abc123',0,1),
('Namrata','namrata@gmail.com','Prudential','Boston','MA',1010101010,02133,'abc123',0,1);

--- Advertiser Table Values Insertion ---
INSERT INTO Advertiser VALUES
(1,'Company 1'), (2,'Company 2'), (3,'Company 3'), (4, 'Company 4'), (5,'Company 5'), (6,'Company 6'), (7,'Company 7'),(8,'Company 8'), (9, 'Company 9'), (10, 'Company 10');

--- Subscription Table Values Insertion ---
INSERT INTO Subscription (SubscriptionID,SubscriptionName,StartDate,EndDate)
VALUES
(1,'Subscription 1','2022-01-01','2022-03-31'),
(2,'Subscription 2','2021-12-15','2022-02-28'),
(3,'Subscription 3','2022-07-20','2022-12-31'),
(4,'Subscription 4','2022-11-01','2022-12-31'),
(5,'Subscription 5','2021-12-31','2022-12-31'),
(6,'Subscription 6','2022-10-01','2023-01-31'),
(7,'Subscription 7','2022-09-10','2022-11-30'),
(8,'Subscription 8','2023-01-01','2023-03-31'),
(9,'Subscription 9','2023-02-14','2023-04-30'),
(10,'Subscription 10','2023-01-01','2023-12-31');
SET IDENTITY_INSERT Subscription ON

--- Rider Table Values Insertion ---
INSERT INTO Rider VALUES
(11,1),(12,2),(13,3),(14,4),(15,5),(16,6),(17,7),(18,8),(19,9),(20,10);