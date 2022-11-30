-- Insert for UDF
INSERT INTO Service Values ('Rental', '12/11/2023', '12/20/2023', 500, 'R')
INSERT INTO Rental VALUES (23, 19, 2, 2)

SELECT dbo.GetRentalAmount(19, 23);

-- Insert for Stored Procedure--GetAdvertisementCountByDock

INSERT INTO DockGrouping VALUES (1, 1, '1/1/2022', '2/1/2022');
INSERT INTO DockGrouping VALUES (1, 1, '2/1/2022', '3/1/2022');
INSERT INTO DockGrouping VALUES (3, 1, '3/11/2022', '4/11/2022');
INSERT INTO DockGrouping VALUES (3, 7, '1/1/2022', '2/1/2022');
INSERT INTO DockGrouping VALUES (4, 7, '2/1/2022', '3/1/2022');
INSERT INTO DockGrouping VALUES (6, 6, '3/11/2022', '4/11/2022');

-- Insert for Stored Procedure--GetNumberOfRentalByBikeID

INSERT INTO Service Values ('Rental', '2/10/2023', '2/20/2023', 1000, 'R')
INSERT INTO Rental VALUES (24, 14, 3, 6)
INSERT INTO Service Values ('Rental', '3/10/2023', '3/20/2023', 1000, 'R')
INSERT INTO Rental VALUES (25, 16, 4, 6)
INSERT INTO Service Values ('Rental', '7/10/2023', '7/15/2023', 200, 'R')
INSERT INTO Rental VALUES (26, 12, 3, 8)
INSERT INTO Service Values ('Rental', '3/13/2023', '3/20/2023', 500, 'R')
INSERT INTO Rental VALUES (27, 18, 4, 5)