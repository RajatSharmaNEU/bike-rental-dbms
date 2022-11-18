-- iF DATABASE EXISTS, DROP
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'bluebike')
    DROP DATABASE bluebike;
GO

CREATE DATABASE [bluebike]
go
USE [bluebike]
GO

CREATE TABLE [dbo].[Dock](
	DockID INT IDENTITY(1,1) NOT NULL,
    DockName VARCHAR(25) NOT NULL,
    DockLocation VARCHAR(25) NOT NULL,
    CONSTRAINT Dock_PK PRIMARY KEY (DockID)
);




CREATE TABLE [dbo].[DockGrouping](
	DockGroupID INT IDENTITY(1,1) NOT NULL,
    ServiceID INT NOT NULL,
    DockID INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    CONSTRAINT DockGrouping_PK PRIMARY KEY (DockGroupID),
    -- CONSTRAINT DockGrouping_ServiceID_FK FOREIGN KEY (ServiceID) REFERENCES Advertisement(ServiceID),
    CONSTRAINT DockGrouping_DockID_FK FOREIGN KEY (DockID) REFERENCES Dock(DockID),
    CONSTRAINT DockGrouping_Date_Check CHECK (StartDate < EndDate)
);

INSERT INTO Dock VALUES('Dock1', 'Boston-Jvue');
INSERT INTO DockGrouping VALUES(1,1,'1/3/2020', '4/3/2020');

SELECT * FROM Dock;
SELECT * FROM DockGrouping;

INSERT INTO DockGrouping VALUES(1,1,'3/3/2020', '3/3/2020');




