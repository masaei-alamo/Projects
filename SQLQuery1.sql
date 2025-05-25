SELECT DISTINCT w.First_Name, w.Last_Name, w.Email_ID
FROM Web_user w
JOIN Booking b ON w.Web_User_ID = b.User_ID
JOIN Show s ON b.Show_ID = s.Show_ID
JOIN Movie m ON s.Movie_ID = m.Movie_ID
WHERE m.Name = 'Black Panther';
