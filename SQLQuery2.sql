SELECT w.Age, m.genre, COUNT(*) as num_bookings
FROM Web_user w
JOIN Booking b ON w.Web_User_ID = b.User_ID
JOIN Show s ON b.Show_ID = s.Show_ID
JOIN Movie m ON s.Movie_ID = m.Movie_ID
GROUP BY w.Age, m.genre
ORDER BY w.Age ASC, num_bookings DESC;
