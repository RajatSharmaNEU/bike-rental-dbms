/*Revenue VIEW - Total revenue by service type */

CREATE VIEW RevenueByService AS
SELECT
    SUM(s.Amount) AS Revenue,
    CASE ServiceType
        WHEN 'A' THEN 'Advertisement'
        WHEN 'R' THEN 'Rental'
        END AS [Revenue Type]
FROM Service s
GROUP BY s.ServiceType;

CREATE VIEW RevenueByPerson AS
SELECT p.Name, t.Revenue, t.RevenueType FROM
    (
        (
            SELECT t1.PersonID, SUM(t1.Amount) AS Revenue, 'Total' AS RevenueType
            FROM
                (
                    SELECT a.PersonID, s.Amount, s.ServiceType
                    FROM Service s JOIN Advertisement a
                                        ON s.ServiceID = a.ServiceID
                    UNION
                    SELECT r.PersonID, s.Amount, s.ServiceType
                    FROM Service s JOIN Rental r
                                        ON s.ServiceID = r.ServiceID
                ) t1
            GROUP BY t1.PersonID
        )
        UNION
        (
            SELECT a.PersonID, s.Amount AS Revenue,
                   CASE s.ServiceType
                       WHEN 'A' THEN 'Advertisement'
                       END AS 'RevenueType'
            FROM Service s JOIN Advertisement a
            ON s.ServiceID = a.ServiceID
            UNION
            SELECT r.PersonID, s.Amount ,
                   CASE s.ServiceType
                       WHEN 'R' THEN 'Rental'
                       END AS 'RevenueType'
            FROM Service s JOIN Rental r
            ON s.ServiceID = r.ServiceID
        )
    ) t
        JOIN person p ON p.PersonID = t.PersonID;

CREATE VIEW RevenueByDock AS
SELECT d.DockName, d.DockLocation, t.Revenue, t.StartDate, t.EndDate
FROM
    (
        SELECT t.DockID, SUM(s.Amount) AS Revenue, MIN(s.StartDate) AS StartDate, MAX(s.EndDate) AS EndDate
        FROM
            (
                SELECT d.ServiceID, d.DockID
                FROM DockGrouping d
                UNION
                SELECT r.ServiceID, r.DockID
                FROM Rental r
            ) t
                JOIN Service s ON s.ServiceID = t.ServiceID
        GROUP BY t.DockID
    ) t
        JOIN Dock d ON d.DockID = t.DockID