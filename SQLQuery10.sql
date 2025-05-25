INSERT INTO Booking (Booking_ID, No_of_Tickets, Total_Cost, User_ID, Show_ID)
SELECT 
    CONVERT(varchar(8), ROW_NUMBER() OVER (ORDER BY Web_User_ID)),
    2,
    20,
    Web_User_ID,
    (SELECT TOP 1 Show_ID FROM Show ORDER BY NEWID())
FROM 
    Web_user;



