SELECT w.Web_User_ID, w.First_Name, w.Last_Name
FROM Web_user w
WHERE w.Web_User_ID IN (
    SELECT User_ID
    FROM Booking
    GROUP BY User_ID
    HAVING COUNT(DISTINCT Show_ID) > 1
);
