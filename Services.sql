-- Service Table


Create Table Service(
ServiceID varchar(10) not null,
Description char(30),
StartDate date,
EndDate date,
Amount varchar(20),
ServiceType varchar(30)
Constraint Service_PK primary key (ServiceID)
)

-- Rental Table

create table Rental(
ServiceID varchar(10) not null,
PersonID varchar(10) not null,
DockID int identity(1,1) not null,
BikeID int not null
Constraint Rental_PK primary key(ServiceID),
Constraint Rental_FK1 foreign key (PersonID) references Rider(PersonID),
Constraint Rental_FK2 foreign key (DockID) references Dock(DockID),
Constraint Rental_FK3 foreign key (BikeID) references Bike(BikeID)
)

-- Advertisement Table
create table Advertisement(
ServiceID varchar(10) not null,
PersonID varchar(10) not null,
Constraint Advertisement_PK primary key(ServiceID),
Constraint Advertisement_FK1 foreign key (PersonID) references Advertiser(PersonID)
)

