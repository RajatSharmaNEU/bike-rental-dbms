SELECT * FROM BikeCategory;
SELECT * FROM Bike;
SELECT * FROM Dock;
SELECT * FROM DockGrouping;
SELECT * FROM Payment;
SELECT * FROM Penalty;

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
