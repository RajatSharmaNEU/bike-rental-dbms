--Bike--
Use Bike
go
create table Bike (
BikeID int NOT NULL, 
BikeName varchar(30),
RentPrice float,
BikeStatus varchar(50),
BikeCategoryID int, 
Primary Key (BikeID), 
Foreign Key (BikeCategoryID) references BikeCategory(BikeCategoryID)
)

--BikeCategory--
create table BikeCategory (
BikeCategoryID int,
BikeManufactorName int NOT NULL , 
BikeDetail varchar(100),
Primary Key (BikeCategoryID)
)
