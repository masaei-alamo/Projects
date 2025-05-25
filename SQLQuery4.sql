SELECT s.Show_ID, s.Show_Time, s.Show_Date, s.Seats_Remaining_Gold, s.Seats_Remaining_Silver, w.First_Name, w.Last_Name
FROM Show s
JOIN Booking b ON s.Show_ID = b.Show_ID
JOIN Web_user w ON b.User_ID = w.Web_User_ID
WHERE (s.Seats_Remaining_Gold > 0 OR s.Seats_Remaining_Silver > 0)
ORDER BY s.Show_Date ASC, s.Show_Time DESC;
