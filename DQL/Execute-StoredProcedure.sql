-- Stored Procedure--GetAdvertisementCountByDock
-- Create new service - advertisement - Service ID - 22
-- Link Advertisement with Service ID - 22 and Person ID - 10
-- Insert DockGrouping for Service ID
-- Exec Procedure - GetAdvertisementCountByDock
INSERT INTO Service Values ('Advertisement', '11/1/2022', '12/31/2022', 2000, 'A')
    INSERT INTO Advertisement VALUES (22, 10);

INSERT INTO DockGrouping VALUES (22, 10, '11/1/2022', '12/31/2022');
INSERT INTO DockGrouping VALUES (22, 10, '11/1/2022', '12/31/2022');
INSERT INTO DockGrouping VALUES (22, 10, '11/1/2022', '12/31/2022');
INSERT INTO DockGrouping VALUES (22, 10, '11/1/2022', '12/31/2022');
INSERT INTO DockGrouping VALUES (22, 10, '11/1/2022', '12/31/2022');
INSERT INTO DockGrouping VALUES (22, 10, '11/1/2022', '12/31/2022');

EXEC GetAdvertisementCountByDock '01/01/2020', '12/31/2024';

-- Stored Procedure--GetNumberOfRentalByBikeID
-- Create new service - Rental - Service ID - 23, 24, 25, 26
-- Link Rental with new Service ID
-- Exec GetNumberOfRentalByBikeID
INSERT INTO Service Values ('Rental', '2/10/2023', '2/20/2023', 1000, 'R');
INSERT INTO Service Values ('Rental', '3/10/2023', '3/20/2023', 1000, 'R');
INSERT INTO Service Values ('Rental', '7/10/2023', '7/15/2023', 200, 'R');
INSERT INTO Service Values ('Rental', '3/13/2023', '3/20/2023', 500, 'R');
INSERT INTO Rental VALUES (23, 14, 3, 6);
INSERT INTO Rental VALUES (24, 16, 4, 6);
INSERT INTO Rental VALUES (25, 12, 3, 8);
INSERT INTO Rental VALUES (26, 18, 4, 5);

EXEC GetNumberOfRentalByBikeID '01/01/2020','12/31/2024';

-- Stored Procedure GetPenaltyAmount
INSERT INTO Rider VALUES (22, 1);
INSERT INTO Service Values ('Rental', '11/01/2022', '11/25/2022', 1000, 'R');
INSERT INTO Rental VALUES (29, 22, 1, 1);

DECLARE @Result INT;
EXEC GetPenaltyAmount 29, 22, @Result;
SELECT @Result AS PenaltyAmount;


-- UDF - Get Rental Amount
SELECT dbo.GetRentalAmount(19, 23);