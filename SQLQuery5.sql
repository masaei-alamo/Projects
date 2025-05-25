SELECT w.Web_User_ID, w.First_Name, w.Last_Name, m.Name as Movie_Name, m.genre
FROM Web_user w
JOIN Booking b ON w.Web_User_ID = b.User_ID
JOIN Show s ON b.Show_ID = s.Show_ID
JOIN Movie m ON s.Movie_ID = m.Movie_ID
WHERE m.genre = 'Romance/Comedy';
