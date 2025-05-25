SELECT RIGHT(Email_ID, LEN(Email_ID) - CHARINDEX('@', Email_ID)) AS email_domain, COUNT(*) AS num_bookings
FROM Web_user
JOIN Booking ON Web_user.Web_User_ID = Booking.User_ID
WHERE RIGHT(Email_ID, LEN(Email_ID) - CHARINDEX('@', Email_ID)) IN ('gmail.com', 'yahoo.com', 'outlook.com')
GROUP BY RIGHT(Email_ID, LEN(Email_ID) - CHARINDEX('@', Email_ID))
ORDER BY num_bookings DESC;



