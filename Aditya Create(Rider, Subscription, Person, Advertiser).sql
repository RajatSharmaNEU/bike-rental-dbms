--Person Table--
create table Person(
	PersonID varchar(10) not null,
	[Name] char(20),
	EmailID varchar(30),
	[Address] varchar(20),
	City char(20),
	[State] char(15),
	Zipcode varchar(10),
	Phone int,
	[Password] varbinary(25),
	Advertiser varchar(20),
	Rider char(20),
	Constraint Person_PK primary key (PersonID)
)


--Advertiser Table--
create table Advertiser(
	PersonID varchar(10) not null,
	Company_Name varchar(20),
	Constraint Advertiser_PK primary key (PersonID)
)

-- Subscription Table --
create table Subscription(
	SubscriptionID varchar(20) not null,
	SubscriptionName char(20),
	StartDate date,
	EndDate date,
	Constraint Subscription_PK primary key(SubscriptionID)
)

--Rider Table --
create table Rider(
	PersonID varchar(10) not null,
	Constraint Rider_PK primary key (PersonID),
	SubscriptionID varchar(20)
	Constraint Rider_FK foreign key (SubscriptionID) references Subscription(SubscriptionID)
)
