CREATE PROCEDURE GetRentalAmount @riderID INT, @serviceID INT, @amount INT OUTPUT 
AS 
BEGIN
    DECLARE @bikeRentPrice INT;

    SELECT @bikeRentPrice = b.RentPrice
    FROM Rental r JOIN Bike b
    ON r.BikeID = b.BikeID
    WHERE r.PersonID = @riderID;

    DECLARE @serviceStartDate DATE,@serviceEndDate DATE;

    SELECT @serviceStartDate=s.StartDate, @serviceEndDate= s.EndDate
    FROM Service s
    WHERE s.ServiceID=@serviceID;

    DECLARE @rentalDays INT;
    SET @rentalDays = DATEDIFF(DAY, @serviceStartDate, @serviceEndDate) + 1;

    SET @amount = @rentalDays * @bikeRentPrice;
END