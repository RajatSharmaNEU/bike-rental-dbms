/*View to see Service Revenue by type*/

CREATE VIEW ServiceRevenue() AS
SELECT sum(Amount) AS Revenue,
CASE ServiceType
WHEN 'A' THEN 'AdvertisementRevenue'
END AS [RevenueType]
FROM Service WHERE ServiceType= 'A' GROUP BY ServiceType
UNION
SELECT sum(Amount) AS Revenue ,
CASE ServiceType
WHEN 'R' THEN 'RentalRevenue'
END AS [RevenueType]
FROM Service WHERE ServiceType= 'R' GROUP BY ServiceType
UNION


SELECT* FROM ServiceRevenue

/*View to see Person Revenue for Advertisement*/
CREATE VIEW [PersonAdRevenue] AS
SELECT a.PersonID, SUM(Amount) as TotalAmount
FROM 
Service s 
JOIN Advertisement a
ON s.ServiceID = a.ServiceID
LEFT JOIN Advertiser ad
ON ad.PersonID = a.PersonID
GROUP BY a.PersonID

SELECT * FROM PersonAdRevenue


/*View to see Person Revenue for Rental*/
CREATE VIEW [PersonRentalRevenue] AS
SELECT r.PersonID, SUM(Amount) as TotalAmount
FROM 
Service s 
JOIN Rental r
ON s.ServiceID = r.ServiceID
LEFT JOIN Rider rd
ON rd.PersonID = r.PersonID
GROUP BY r.PersonID

SELECT * FROM PersonRentalRevenue



