SELECT DISTINCT w.First_Name, w.Last_Name, w.Email_ID
FROM Web_user w
JOIN Booking b ON w.Web_User_ID = b.User_ID
JOIN Show s ON b.Show_ID = s.Show_ID
JOIN Screen sc ON s.Screen_ID = sc.Screen_ID
JOIN (SELECT Theatre_ID FROM Screen GROUP BY Theatre_ID HAVING COUNT(*) > 1) multi_screen_theaters
ON sc.Theatre_ID = multi_screen_theaters.Theatre_ID;
