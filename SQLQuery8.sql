SELECT m.genre, AVG(t.Price) as avg_price
FROM Movie m
JOIN Show s ON m.Movie_ID = s.Movie_ID
JOIN Booking b ON s.Show_ID = b.Show_ID
JOIN Ticket t ON b.Booking_ID = t.Booking_ID
GROUP BY m.genre
ORDER BY avg_price DESC, m.genre ASC;
