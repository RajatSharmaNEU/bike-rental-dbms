USE [bluebike]
GO

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
INSERT INTO Subscription
VALUES
    ('Subscription 1','2022-01-01','2022-03-31'),
    ('Subscription 2','2021-12-15','2022-02-28'),
    ('Subscription 3','2022-07-20','2022-12-31'),
    ('Subscription 4','2022-11-01','2022-12-31'),
    ('Subscription 5','2021-12-31','2022-12-31'),
    ('Subscription 6','2022-10-01','2023-01-31'),
    ('Subscription 7','2022-09-10','2022-11-30'),
    ('Subscription 8','2023-01-01','2023-03-31'),
    ('Subscription 9','2023-02-14','2023-04-30'),
    ('Subscription 10','2023-01-01','2023-12-31');

--- Rider Table Values Insertion ---
INSERT INTO Rider VALUES
                      (11,1),(12,2),(13,3),(14,4),(15,5),(16,6),(17,7),(18,8),(19,9),(20,10);

-- Trek Bikes, Giant Bicycle, Redline, Bianchi, Davidson
-- Insert BikeCategory
INSERT INTO BikeCategory VALUES('Trek', 'Mountain Bikes');
INSERT INTO BikeCategory VALUES('Trek', 'Road Bikes');
INSERT INTO BikeCategory VALUES('Giant', 'Mountain Bikes');
INSERT INTO BikeCategory VALUES('Giant', 'Road Bikes');
INSERT INTO BikeCategory VALUES('Redline', 'Mountain Bikes');
INSERT INTO BikeCategory VALUES('Redline', 'Road Bikes');
INSERT INTO BikeCategory VALUES('Bianchi', 'Mountain Bikes');
INSERT INTO BikeCategory VALUES('Bianchi', 'Road Bikes');
INSERT INTO BikeCategory VALUES('Davidson', 'Mountain Bikes');
INSERT INTO BikeCategory VALUES('Davidson', 'Road Bikes');

-- Insert Bike
INSERT INTO Bike VALUES('Top Fuel', 20, 'Available', 1);
INSERT INTO Bike VALUES('Pro Caliber', 20, 'In-Use', 2);
INSERT INTO Bike VALUES('Madone', 30, 'Available', 3);
INSERT INTO Bike VALUES('Domane', 30, 'In-Use', 4);
INSERT INTO Bike VALUES('Checkpoint', 40, 'Available', 5);
INSERT INTO Bike VALUES('FX Sport 6', 40, 'In-Use', 6);
INSERT INTO Bike VALUES('FX Sport 6', 50, 'Available', 7);
INSERT INTO Bike VALUES('FX+2', 50, 'Broken', 8);
INSERT INTO Bike VALUES('Dual Sport Stagger', 45, 'Available', 9);
INSERT INTO Bike VALUES('Allant', 45, 'Broken', 10);

INSERT INTO DOCK VALUES ('Dock1', 'Boston');
INSERT INTO DOCK VALUES ('Dock2', 'Boston');
INSERT INTO DOCK VALUES ('Dock3', 'Boston');
INSERT INTO DOCK VALUES ('Dock4', 'Boston');
INSERT INTO DOCK VALUES ('Dock5', 'Boston');
INSERT INTO DOCK VALUES ('Dock6', 'Boston');
INSERT INTO DOCK VALUES ('Dock7', 'Boston');
INSERT INTO DOCK VALUES ('Dock8', 'Boston');
INSERT INTO DOCK VALUES ('Dock9', 'Boston');
INSERT INTO DOCK VALUES ('Dock10', 'Boston');

INSERT INTO Service Values ('Advertisement','11/18/2022','03/17/2023',1000,'A')
    INSERT INTO Service Values ('Advertisement','12/20/2022','06/19/2023',2000,'A')
INSERT INTO Service Values ('Advertisement','01/08/2023','09/07/2023',5000,'A')
INSERT INTO Service Values ('Advertisement','01/16/2023','07/15/2023',2000,'A')
INSERT INTO Service Values ('Advertisement','04/27/2023','12/26/2023',5000,'A')
INSERT INTO Service Values ('Advertisement','05/13/2023','09/12/2023',1000,'A')
INSERT INTO Service Values ('Advertisement','06/06/2023','12/05/2023',2000,'A')
INSERT INTO Service Values ('Advertisement','06/09/2023','02/08/2024',5000,'A')
INSERT INTO Service Values ('Advertisement','07/29/2023','03/28/2024',2000,'A')
INSERT INTO Service Values ('Advertisement','08/29/2023','04/28/2024',2000,'A')
INSERT INTO Service Values ('Rental','11/18/2022','11/19/2022',100,'R')
INSERT INTO Service Values ('Rental','02/08/2023','02/10/2023',200,'R')
INSERT INTO Service Values ('Rental','03/12/2023','03/17/2023',500,'R')
INSERT INTO Service Values ('Rental','04/28/2023','04/29/2023',100,'R')
INSERT INTO Service Values ('Rental','05/23/2023','05/25/2023',100,'R')
INSERT INTO Service Values ('Rental','06/11/2023','06/13/2023',200,'R')
INSERT INTO Service Values ('Rental','06/07/2023','06/12/2023',500,'R')
INSERT INTO Service Values ('Rental','08/23/2023','08/25/2023',200,'R')
INSERT INTO Service Values ('Rental','11/26/2023','11/27/2023',100,'R')
INSERT INTO Service Values ('Rental','12/15/2023','12/17/2023',200,'R')

INSERT INTO Advertisement Values (1,1)
INSERT INTO Advertisement Values (2,2)
INSERT INTO Advertisement Values (3,3)
INSERT INTO Advertisement Values (4,4)
INSERT INTO Advertisement Values (5,5)
INSERT INTO Advertisement Values (6,6)
INSERT INTO Advertisement Values (7,7)
INSERT INTO Advertisement Values (8,8)
INSERT INTO Advertisement Values (9,9)
INSERT INTO Advertisement Values (10,10)

INSERT INTO Rental Values (11,11,1,1)
INSERT INTO Rental Values (12,12,2,2)
INSERT INTO Rental Values (13,13,3,3)
INSERT INTO Rental Values (14,14,4,4)
INSERT INTO Rental Values (15,15,5,5)
INSERT INTO Rental Values (16,16,6,6)
INSERT INTO Rental Values (17,17,7,7)
INSERT INTO Rental Values (18,18,8,8)
INSERT INTO Rental Values (19,19,9,9)
INSERT INTO Rental Values (20,20,10,10)

INSERT INTO DockGrouping VALUES (1, 1, '1/1/2022', '2/1/2022');
INSERT INTO DockGrouping VALUES (2, 2, '1/1/2022', '2/1/2022');
INSERT INTO DockGrouping VALUES (3, 3, '1/1/2022', '2/1/2022');
INSERT INTO DockGrouping VALUES (4, 4, '1/1/2022', '2/1/2022');
INSERT INTO DockGrouping VALUES (5, 5, '1/1/2022', '2/1/2022');
INSERT INTO DockGrouping VALUES (6, 6, '1/1/2022', '2/1/2022');
INSERT INTO DockGrouping VALUES (7, 7, '1/1/2022', '2/1/2022');
INSERT INTO DockGrouping VALUES (8, 8, '1/1/2022', '2/1/2022');
INSERT INTO DockGrouping VALUES (9, 9, '1/1/2022', '2/1/2022');
INSERT INTO DockGrouping VALUES (10, 10, '1/1/2022', '2/1/2022');

INSERT INTO Payment VALUES('Done', 1);
INSERT INTO Payment VALUES('Done', 2);
INSERT INTO Payment VALUES('Done', 3);
INSERT INTO Payment VALUES('Done', 4);
INSERT INTO Payment VALUES('Done', 5);
INSERT INTO Payment VALUES('Pending', 6);
INSERT INTO Payment VALUES('Pending', 7);
INSERT INTO Payment VALUES('Pending', 8);
INSERT INTO Payment VALUES('Pending', 9);
INSERT INTO Payment VALUES('Pending', 10);

INSERT INTO Penalty VALUES (20, 'Riding on wrong side', 1);
INSERT INTO Penalty VALUES (20, 'Riding on wrong side', 2);
INSERT INTO Penalty VALUES (20, 'Riding on wrong side', 3);
INSERT INTO Penalty VALUES (20, 'Riding on wrong side', 4);
INSERT INTO Penalty VALUES (20, 'Riding on wrong side', 5);
INSERT INTO Penalty VALUES (20, 'Traffic light jump', 6);
INSERT INTO Penalty VALUES (20, 'Traffic light jump', 7);
INSERT INTO Penalty VALUES (20, 'Traffic light jump', 8);
INSERT INTO Penalty VALUES (20, 'Traffic light jump', 9);
INSERT INTO Penalty VALUES (20, 'Traffic light jump', 10);
