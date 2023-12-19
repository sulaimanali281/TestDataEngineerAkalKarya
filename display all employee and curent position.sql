SELECT
    a.EmployeeId,
    a.FullName,
    a.BirthDate,
    a.Address,
    a.PosId,
    a.PosTitle,
    a.StartDate,
    a.EndDate
FROM (
    SELECT
	E.EmployeeId,
    E.FullName,
    E.BirthDate,
    E.Address,
    PH.PosId,
    PH.PosTitle,
    PH.StartDate,
    PH.EndDate,
        ROW_NUMBER() OVER (PARTITION BY e.EmployeeId ORDER BY ph.EndDate DESC) AS RowNum
    FROM
        Employee e
    LEFT JOIN
        PositionHistory ph ON e.EmployeeId = ph.EmployeeId
) a
WHERE
    RowNum = 1;