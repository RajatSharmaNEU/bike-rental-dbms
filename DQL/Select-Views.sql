-- VIEW - RevenueByService
SELECT * FROM Revenue;
SELECT * FROM Revenue r WHERE r.[Revenue Type] = 'Rental';
SELECT * FROM Revenue r WHERE r.[Revenue Type] = 'Advertisement';

-- VIEW - RevenueByPerson
SELECT * FROM RevenueByPerson;

-- VIEW - RevenueByDock
SELECT * FROM RevenueByDock;