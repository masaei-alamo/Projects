Insert into Web_user values
('100', 'amit', 'amit', 'amit04@gmail.com', 35, '9846273634'),
('101', 'ben', 'ben', 'ben987@gmail.com', 26, '7845279834'),
('102', 'gal', 'gal', 'gal@gmail.com', 30, '8849273345'),
('103', 'joy', 'joy', 'joy.123@gmail.com', 27, '9000567890'),
('104', 'sun', 'sun', 'sunl07@gmail.com', 47, '8874323461'),
('105', 'avi', 'avi', 'avi56@gmail.com', 19, '9078985643'),
('106', 'viki', 'viki', 'viki.89@gmail.com', 23, '7750912345'),
('107', 'koral', 'koral', 'komall87@gmail.com', 15, '9345687654'),
('108', 'masaei', 'masaei', 'masaei1@gmail.com', 32, '9922345016'),
('109', 'yael', 'yael', 'yael@gmail.com', 25, '8567409098'),
('110', 'bayat', 'bayat', 'bayat@gmail.com', 18, '7765433211'),
('111',	'alamo', 'alamo','alamo@gmail.com',38,'9800215673'),
('112',	'adi', 'adi','adi2902@gmail.com',21,'9108996762'),
('113',	'abay', 'abay','abay@gmail.com',25,'7707378654'),
('114',	'ran', 'ran','ran@gmail.com',23,'9591990037'),
('115',	'shir', 'shir','shir@gmail.com',19,'9900554017'),
('116',	'mor', 'mor','mor@gmail.com',23,'9591670037'),
('117',	'chen', 'chen','chen@gmail.com',40,'9902432497'),
('118',	'tomer', 'tomer','tomer@gmail.com',44,'8231239804'),
('119',	'karen', 'karen','karen@gmail.com',32,'9594390037'),
('120',	'janice', 'janice','janice@gmail.com',38,'9325880785'),
('121',	'saray', 'saray','saray1995@gmail.com',23,'9325880785'),
('122',	'moshe', 'moshe','moshe10@gmail.com',21,'8581654798'),
('123',	'dana', 'dana','dana06@gmail.com',37,'8846085689'),
('124',	'sharon', 'sharon','sharon@gmail.com',20,'9098107054'),
('125',	'adir', 'adir','aadrikabhandarkar@gmail.com',28,'9895287453'),
('126',	'rotem', 'rotem','rotem1996@gmail.com',22,'7180867407'),
('127',	'workensh', 'workensh','workensh@gmail.com',35,'9055932134'),
('128',	'moti', 'moti','moti@gmail.com',27,'7191088921'),
('129',	'sara', 'sara','sara@gmail.com',24,'8731990037');

Insert into Theatre values
('T01', 'PVR Cinemas', 4, 'Koramangala, Bangalore'),
('T02', 'INOX Movies', 4, 'Katpadi, Vellore'),
('T03', 'Cinepolis', 3, 'Meera Marg, Gurgaon');

Insert into Screen values
('T011', 20, 60, 'T01'), 
('T012', 20, 60, 'T01'), 
('T013', 20, 60, 'T01'), 
('T014', 20, 60, 'T01'), 
('T021', 22, 64, 'T02'), 
('T022', 22, 64, 'T02'), 
('T023', 22, 64, 'T02'), 
('T024', 22, 64, 'T02'), 
('T031', 20, 50, 'T03'), 
('T032', 20, 50, 'T03'), 
('T033', 20, 50, 'T03');

Insert into Movie values
('001', 'Hichki', 'Hindi','Drama/Comedy', 'U/A'),
('002', 'Pacific Rim Uprising',  'English','Fantasy/SciFi', 'U/A'),
('003', 'Strangers : Prey at night','English', 'Horror', 'U/A'),
('004', 'Tomb Raider', 'English','Fantasy/Action', 'A'),
('005', 'Midnight Sun', 'English','Romance','R'),
('006', 'Peter Rabbit','English', 'Fantasy/Adventure','U/A'),
('007', 'Black Panther','English', 'Fantasy/SciFi','U/A'),
('008', 'Maze Runner: The Death Cure','English', 'Fantasy/SciFi','U/A'),
('009', 'Insidious: The Last Key','English', 'Horror','U/A'),
('010', 'Blackmail','Hindi', 'Comedy','U/A'),
('011', 'Parmanu: The Story of Pokhran','Hindi', 'Drama/Thriller','U/A'),
('012', '3 Storeys','Hindi', 'Drama','U/A'),
('013', 'Rajaratha','Tamil', 'Comedy','U/A'),
('014', 'Yogi Duniya','Tamil', 'Drama/Thriller','U/A'),
('015', 'Kurukshetra','Tamil', 'Fantasy/History','U/A'),
('016', 'Mersal','Tamil', 'Romance/Comedy','U/A');

Insert into Show values
('SHT0110001', '09:00:00 AM', '4/4/18', 20, 60, 400, 350, 'T011', '001'),
('SHT0120001', '09:00:00 AM', '4/4/18', 20, 60, 400, 350, 'T012', '002'),
('SHT0130001', '09:00:00 AM', '4/4/18', 20, 60, 400, 350, 'T013', '003'),
('SHT0140001', '09:00:00 AM', '4/4/18', 20, 60, 400, 350, 'T014', '004'),
('SHT0210001', '09:00:00 AM', '4/4/18', 22, 64, 395, 325, 'T021', '005'),
('SHT0220001', '09:00:00 AM', '4/4/18', 22, 64, 395, 325, 'T022', '006'),
('SHT0230001', '09:00:00 AM', '4/4/18', 22, 64, 395, 325, 'T023', '007'),
('SHT0240001', '09:00:00 AM', '4/4/18', 22, 64, 395, 325, 'T024', '008'),
('SHT0310001', '09:00:00 AM', '4/4/18', 20, 50, 425, 350, 'T031', '009'),
('SHT0320001', '09:00:00 AM', '4/4/18', 20, 50, 425, 350, 'T032', '010'),
('SHT0330001', '09:00:00 AM', '4/4/18', 20, 50, 425, 350, 'T033', '011'),
('SHT0110002', '04:20:00 PM', '4/4/18', 20, 60, 400, 350, 'T011', '012'),
('SHT0120002', '04:20:00 PM', '4/4/18', 20, 60, 400, 350, 'T012', '013'),
('SHT0130002', '04:20:00 PM', '4/4/18', 20, 60, 400, 350, 'T013', '014'),
('SHT0140002', '04:20:00 PM', '4/4/18', 20, 60, 400, 350, 'T014', '015'),
('SHT0210002', '04:20:00 PM', '4/4/18', 22, 64, 395, 325, 'T021', '016'),
('SHT0220002', '04:20:00 PM', '4/4/18', 22, 64, 395, 325, 'T022', '001'),
('SHT0230002', '04:20:00 PM', '4/4/18', 22, 64, 395, 325, 'T023', '002'),
('SHT0240002', '04:20:00 PM', '4/4/18', 22, 64, 395, 325, 'T024', '003'),
('SHT0310002', '04:20:00 PM', '4/4/18', 20, 50, 425, 350, 'T031', '004'),
('SHT0320002', '04:20:00 PM', '4/4/18', 20, 50, 425, 350, 'T032', '005'),
('SHT0330002', '04:20:00 PM', '4/4/18', 20, 50, 425, 350, 'T033', '006'),
('SHT0110003', '07:30:00 PM', '4/4/18', 20, 60, 400, 350, 'T011', '007'),
('SHT0120003', '07:30:00 PM', '4/4/18', 20, 60, 400, 350, 'T012', '008'),
('SHT0130003', '07:30:00 PM', '4/4/18', 20, 60, 400, 350, 'T013', '009'),
('SHT0140003', '07:30:00 PM', '4/4/18', 20, 60, 400, 350, 'T014', '010'),
('SHT0210003', '07:30:00 PM', '4/4/18', 22, 64, 395, 325, 'T021', '011'),
('SHT0220003', '07:30:00 PM', '4/4/18', 22, 64, 395, 325, 'T022', '012'),
('SHT0230003', '07:30:00 PM', '4/4/18', 22, 64, 395, 325, 'T023', '013'),
('SHT0240003', '07:30:00 PM', '4/4/18', 22, 64, 395, 325, 'T024', '014'),
('SHT0310003', '07:30:00 PM', '4/4/18', 20, 50, 425, 350, 'T031', '015'),
('SHT0320003', '07:30:00 PM', '4/4/18', 20, 50, 425, 350, 'T032', '016'),
('SHT0330003', '07:30:00 PM', '4/4/18', 20, 50, 425, 350, 'T033', '001'),
('SHT0110004', '09:00:00 AM', '4/4/18', 20, 60, 400, 350, 'T011', '002'),
('SHT0120004', '09:00:00 AM', '4/4/18', 20, 60, 400, 350, 'T012', '003'),
('SHT0130004', '09:00:00 AM', '4/4/18', 20, 60, 400, 350, 'T013', '004'),
('SHT0140004', '09:00:00 AM', '4/4/18', 20, 60, 400, 350, 'T014', '005'),
('SHT0210004', '09:00:00 AM', '4/4/18', 22, 64, 395, 325, 'T021', '006'),
('SHT0220004', '09:00:00 AM', '4/4/18', 22, 64, 395, 325, 'T022', '007'),
('SHT0230004', '09:00:00 AM', '4/4/18', 22, 64, 395, 325, 'T023', '008'),
('SHT0240004', '09:00:00 AM', '4/4/18', 22, 64, 395, 325, 'T024', '009'),
('SHT0310004', '09:00:00 AM', '4/4/18', 20, 50, 425, 350, 'T031', '010'),
('SHT0320004', '09:00:00 AM', '4/4/18', 20, 50, 425, 350, 'T032', '011'),
('SHT0330004', '09:00:00 AM', '4/4/18', 20, 50, 425, 350, 'T033', '012'),
('SHT0110005', '04:20:00 PM', '4/4/18', 20, 60, 400, 350, 'T011', '013'),
('SHT0120005', '04:20:00 PM', '4/4/18', 20, 60, 400, 350, 'T012', '014'),
('SHT0130005', '04:20:00 PM', '4/4/18', 20, 60, 400, 350, 'T013', '015'),
('SHT0140005', '04:20:00 PM', '4/4/18', 20, 60, 400, 350, 'T014', '016'),
('SHT0210005', '04:20:00 PM', '4/4/18', 22, 64, 395, 325, 'T021', '001'),
('SHT0220005', '04:20:00 PM', '4/4/18', 22, 64, 395, 325, 'T022', '002'),
('SHT0230005', '04:20:00 PM', '4/4/18', 22, 64, 395, 325, 'T023', '003'),
('SHT0240005', '04:20:00 PM', '4/4/18', 22, 64, 395, 325, 'T024', '004'),
('SHT0310005', '04:20:00 PM', '4/4/18', 20, 50, 425, 350, 'T031', '005'),
('SHT0320005', '04:20:00 PM', '4/4/18', 20, 50, 425, 350, 'T032', '006'),
('SHT0330005', '04:20:00 PM', '4/4/18', 20, 50, 425, 350, 'T033', '007'),
('SHT0110006', '07:30:00 PM', '4/4/18', 20, 60, 400, 350, 'T011', '008'),
('SHT0120006', '07:30:00 PM', '4/4/18', 20, 60, 400, 350, 'T012', '009'),
('SHT0130006', '07:30:00 PM', '4/4/18', 20, 60, 400, 350, 'T013', '010'),
('SHT0140006', '07:30:00 PM', '4/4/18', 20, 60, 400, 350, 'T014', '011'),
('SHT0210006', '07:30:00 PM', '4/4/18', 22, 64, 395, 325, 'T021', '012'),
('SHT0220006', '07:30:00 PM', '4/4/18', 22, 64, 395, 325, 'T022', '013'),
('SHT0230006', '07:30:00 PM', '4/4/18', 22, 64, 395, 325, 'T023', '014'),
('SHT0240006', '07:30:00 PM', '4/4/18', 22, 64, 395, 325, 'T024', '015'),
('SHT0310006', '07:30:00 PM', '4/4/18', 20, 50, 425, 350, 'T031', '016'),
('SHT0320006', '07:30:00 PM', '4/4/18', 20, 50, 425, 350, 'T032', '001'),
('SHT0330006', '07:30:00 PM', '4/4/18', 20, 50, 425, 350, 'T033', '002'),
('SHT0110007', '09:00:00 AM', '5/4/18', 20, 60, 400, 350, 'T011', '003'),
('SHT0120007', '09:00:00 AM', '5/4/18', 20, 60, 400, 350, 'T012', '004'),
('SHT0130007', '09:00:00 AM', '5/4/18', 20, 60, 400, 350, 'T013', '005'),
('SHT0140007', '09:00:00 AM', '5/4/18', 20, 60, 400, 350, 'T014', '006'),
('SHT0210007', '09:00:00 AM', '5/4/18', 22, 64, 395, 325, 'T021', '007'),
('SHT0220007', '09:00:00 AM', '5/4/18', 22, 64, 395, 325, 'T022', '008'),
('SHT0230007', '09:00:00 AM', '5/4/18', 22, 64, 395, 325, 'T023', '009'),
('SHT0240007', '09:00:00 AM', '5/4/18', 22, 64, 395, 325, 'T024', '010'),
('SHT0310007', '09:00:00 AM', '5/4/18', 20, 50, 425, 350, 'T031', '011'),
('SHT0320007', '09:00:00 AM', '5/4/18', 20, 50, 425, 350, 'T032', '012'),
('SHT0330007', '09:00:00 AM', '5/4/18', 20, 50, 425, 350, 'T033', '013'),
('SHT0110008', '04:20:00 PM', '6/4/18', 20, 60, 400, 350, 'T011', '014'),
('SHT0120008', '04:20:00 PM', '6/4/18', 20, 60, 400, 350, 'T012', '015'),
('SHT0130008', '04:20:00 PM', '6/4/18', 20, 60, 400, 350, 'T013', '016'),
('SHT0140008', '04:20:00 PM', '6/4/18', 20, 60, 400, 350, 'T014', '001'),
('SHT0210008', '04:20:00 PM', '6/4/18', 22, 64, 395, 325, 'T021', '002'),
('SHT0220008', '04:20:00 PM', '6/4/18', 22, 64, 395, 325, 'T022', '003'),
('SHT0230008', '04:20:00 PM', '6/4/18', 22, 64, 395, 325, 'T023', '004'),
('SHT0240008', '04:20:00 PM', '6/4/18', 22, 64, 395, 325, 'T024', '005'),
('SHT0310008', '04:20:00 PM', '6/4/18', 20, 50, 425, 350, 'T031', '006'),
('SHT0320008', '04:20:00 PM', '6/4/18', 20, 50, 425, 350, 'T032', '007'),
('SHT0330008', '04:20:00 PM', '6/4/18', 20, 50, 425, 350, 'T033', '008'),
('SHT0110009', '07:30:00 PM', '6/4/18', 20, 60, 400, 350, 'T011', '009'),
('SHT0120009', '07:30:00 PM', '6/4/18', 20, 60, 400, 350, 'T012', '010'),
('SHT0130009', '07:30:00 PM', '6/4/18', 20, 60, 400, 350, 'T013', '011'),
('SHT0140009', '07:30:00 PM', '6/4/18', 20, 60, 400, 350, 'T014', '012'),
('SHT0210009', '07:30:00 PM', '6/4/18', 22, 64, 395, 325, 'T021', '013'),
('SHT0220009', '07:30:00 PM', '6/4/18', 22, 64, 395, 325, 'T022', '014'),
('SHT0230009', '07:30:00 PM', '6/4/18', 22, 64, 395, 325, 'T023', '015'),
('SHT0240009', '07:30:00 PM', '6/4/18', 22, 64, 395, 325, 'T024', '016'),
('SHT0310009', '07:30:00 PM', '6/4/18', 20, 50, 425, 350, 'T031', '001'),
('SHT0320009', '07:30:00 PM', '6/4/18', 20, 50, 425, 350, 'T032', '002'),
('SHT0330009', '07:30:00 PM', '6/4/18', 20, 50, 425, 350, 'T033', '003');

INSERT into Booking values('BK12000000', 6, 2100, '3594888552401348', 'Janice janice', 120, 'SHT0110001');
INSERT into Ticket values('S0060SHT0110001', 'BK12000000', 'SLV',  350);
INSERT into Ticket values('S0059SHT0110001', 'BK12000000', 'SLV',  350);
INSERT into Ticket values('S0058SHT0110001', 'BK12000000', 'SLV',  350);
INSERT into Ticket values('S0057SHT0110001', 'BK12000000', 'SLV',  350);
INSERT into Ticket values('S0056SHT0110001', 'BK12000000', 'SLV',  350);
INSERT into Ticket values('S0055SHT0110001', 'BK12000000', 'SLV',  350);
INSERT into Booking values('BK10100001', 5, 1750, '4600867746277489', 'ben ben', 101, 'SHT0110001');
INSERT into Ticket values('S0054SHT0110001', 'BK10100001', 'SLV',  350);
INSERT into Ticket values('S0053SHT0110001', 'BK10100001', 'SLV',  350);
INSERT into Ticket values('S0052SHT0110001', 'BK10100001', 'SLV',  350);
INSERT into Ticket values('S0051SHT0110001', 'BK10100001', 'SLV',  350);
INSERT into Ticket values('S0050SHT0110001', 'BK10100001', 'SLV',  350);
INSERT into Booking values('BK10700002', 6, 2100, '5558062060974207', 'koral koral', 107, 'SHT0110001');
INSERT into Ticket values('S0049SHT0110001', 'BK10700002', 'SLV',  350);
INSERT into Ticket values('S0048SHT0110001', 'BK10700002', 'SLV',  350);
INSERT into Ticket values('S0047SHT0110001', 'BK10700002', 'SLV',  350);
INSERT into Ticket values('S0046SHT0110001', 'BK10700002', 'SLV',  350);
INSERT into Ticket values('S0045SHT0110001', 'BK10700002', 'SLV',  350);
INSERT into Ticket values('S0044SHT0110001', 'BK10700002', 'SLV',  350);
INSERT into Booking values('BK10500003', 3, 1050, '1715568540234971', 'avi avi', 105, 'SHT0110001');
INSERT into Ticket values('S0043SHT0110001', 'BK10500003', 'SLV',  350);
INSERT into Ticket values('S0042SHT0110001', 'BK10500003', 'SLV',  350);
INSERT into Ticket values('S0041SHT0110001', 'BK10500003', 'SLV',  350);
INSERT into Booking values('BK11600004', 1, 350, '5396417845824659', 'mor mor', 116, 'SHT0110001');
INSERT into Ticket values('S0040SHT0110001', 'BK11600004', 'SLV',  350);
INSERT into Booking values('BK10600005', 5, 1800, '6700075718329514', 'viki viki', 106, 'SHT0110001');
INSERT into Ticket values('G0020SHT0110001', 'BK10600005', 'GLD',  400);
INSERT into Ticket values('S0039SHT0110001', 'BK10600005', 'SLV',  350);
INSERT into Ticket values('S0038SHT0110001', 'BK10600005', 'SLV',  350);
INSERT into Ticket values('S0037SHT0110001', 'BK10600005', 'SLV',  350);
INSERT into Ticket values('S0036SHT0110001', 'BK10600005', 'SLV',  350);
INSERT into Booking values('BK12900006', 10, 3700, '3366239730418338', 'sara sara', 129, 'SHT0110001');
INSERT into Ticket values('G0019SHT0110001', 'BK12900006', 'GLD',  400);
INSERT into Ticket values('G0018SHT0110001', 'BK12900006', 'GLD',  400);
INSERT into Ticket values('G0017SHT0110001', 'BK12900006', 'GLD',  400);
INSERT into Ticket values('G0016SHT0110001', 'BK12900006', 'GLD',  400);
INSERT into Ticket values('S0035SHT0110001', 'BK12900006', 'SLV',  350);
INSERT into Ticket values('S0034SHT0110001', 'BK12900006', 'SLV',  350);
INSERT into Ticket values('S0033SHT0110001', 'BK12900006', 'SLV',  350);
INSERT into Ticket values('S0032SHT0110001', 'BK12900006', 'SLV',  350);
INSERT into Ticket values('S0031SHT0110001', 'BK12900006', 'SLV',  350);
INSERT into Ticket values('S0030SHT0110001', 'BK12900006', 'SLV',  350);
INSERT into Booking values('BK11400007', 9, 3350, '2170648806526324', 'ran ran', 114, 'SHT0110001');
INSERT into Ticket values('G0015SHT0110001', 'BK11400007', 'GLD',  400);
INSERT into Ticket values('G0014SHT0110001', 'BK11400007', 'GLD',  400);
INSERT into Ticket values('G0013SHT0110001', 'BK11400007', 'GLD',  400);
INSERT into Ticket values('G0012SHT0110001', 'BK11400007', 'GLD',  400);
INSERT into Ticket values('S0029SHT0110001', 'BK11400007', 'SLV',  350);
INSERT into Ticket values('S0028SHT0110001', 'BK11400007', 'SLV',  350);
INSERT into Ticket values('S0027SHT0110001', 'BK11400007', 'SLV',  350);
INSERT into Ticket values('S0026SHT0110001', 'BK11400007', 'SLV',  350);
INSERT into Ticket values('S0025SHT0110001', 'BK11400007', 'SLV',  350);
INSERT into Booking values('BK12600008', 6, 2100, '8030551205048810', 'rotem rotem', 126, 'SHT0110001');
INSERT into Ticket values('S0024SHT0110001', 'BK12600008', 'SLV',  350);
INSERT into Ticket values('S0023SHT0110001', 'BK12600008', 'SLV',  350);
INSERT into Ticket values('S0022SHT0110001', 'BK12600008', 'SLV',  350);
INSERT into Ticket values('S0021SHT0110001', 'BK12600008', 'SLV',  350);
INSERT into Ticket values('S0020SHT0110001', 'BK12600008', 'SLV',  350);
INSERT into Ticket values('S0019SHT0110001', 'BK12600008', 'SLV',  350);
INSERT into Booking values('BK10800009', 4, 1500, '6369517485040577', 'masaei masaei', 108, 'SHT0110001');
INSERT into Ticket values('G0011SHT0110001', 'BK10800009', 'GLD',  400);
INSERT into Ticket values('G0010SHT0110001', 'BK10800009', 'GLD',  400);
INSERT into Ticket values('S0018SHT0110001', 'BK10800009', 'SLV',  350);
INSERT into Ticket values('S0017SHT0110001', 'BK10800009', 'SLV',  350);
INSERT into Booking values('BK10000010', 7, 2550, '1100946878185874', 'amit amit', 100, 'SHT0110001');
INSERT into Ticket values('G0009SHT0110001', 'BK10000010', 'GLD',  400);
INSERT into Ticket values('G0008SHT0110001', 'BK10000010', 'GLD',  400);
INSERT into Ticket values('S0016SHT0110001', 'BK10000010', 'SLV',  350);
INSERT into Ticket values('S0015SHT0110001', 'BK10000010', 'SLV',  350);
INSERT into Ticket values('S0014SHT0110001', 'BK10000010', 'SLV',  350);
INSERT into Ticket values('S0013SHT0110001', 'BK10000010', 'SLV',  350);
INSERT into Ticket values('S0012SHT0110001', 'BK10000010', 'SLV',  350);
INSERT into Booking values('BK10300011', 9, 3300, '5721854946735779', 'joy joy', 103, 'SHT0110001');
INSERT into Ticket values('G0007SHT0110001', 'BK10300011', 'GLD',  400);
INSERT into Ticket values('G0006SHT0110001', 'BK10300011', 'GLD',  400);
INSERT into Ticket values('G0005SHT0110001', 'BK10300011', 'GLD',  400);
INSERT into Ticket values('S0011SHT0110001', 'BK10300011', 'SLV',  350);
INSERT into Ticket values('S0010SHT0110001', 'BK10300011', 'SLV',  350);
INSERT into Ticket values('S0009SHT0110001', 'BK10300011', 'SLV',  350);
INSERT into Ticket values('S0008SHT0110001', 'BK10300011', 'SLV',  350);
INSERT into Ticket values('S0007SHT0110001', 'BK10300011', 'SLV',  350);
INSERT into Ticket values('S0006SHT0110001', 'BK10300011', 'SLV',  350);
INSERT into Booking values('BK11300012', 5, 1850, '5082598172257230', 'abay abay', 113, 'SHT0110001');
INSERT into Ticket values('G0004SHT0110001', 'BK11300012', 'GLD',  400);
INSERT into Ticket values('G0003SHT0110001', 'BK11300012', 'GLD',  400);
INSERT into Ticket values('S0005SHT0110001', 'BK11300012', 'SLV',  350);
INSERT into Ticket values('S0004SHT0110001', 'BK11300012', 'SLV',  350);
INSERT into Ticket values('S0003SHT0110001', 'BK11300012', 'SLV',  350);
INSERT into Booking values('BK12800013', 3, 1050, '6575600376664856', 'moti moti', 128, 'SHT0120001');
INSERT into Ticket values('S0060SHT0120001', 'BK12800013', 'SLV',  350);
INSERT into Ticket values('S0059SHT0120001', 'BK12800013', 'SLV',  350);
INSERT into Ticket values('S0058SHT0120001', 'BK12800013', 'SLV',  350);
INSERT into Booking values('BK11200014', 4, 1400, '7022580821560455', 'adi adi', 112, 'SHT0120001');
INSERT into Ticket values('S0057SHT0120001', 'BK11200014', 'SLV',  350);
INSERT into Ticket values('S0056SHT0120001', 'BK11200014', 'SLV',  350);
INSERT into Ticket values('S0055SHT0120001', 'BK11200014', 'SLV',  350);
INSERT into Ticket values('S0054SHT0120001', 'BK11200014', 'SLV',  350);
INSERT into Booking values('BK10000015', 4, 1400, '1303333985175724', 'amit amit', 100, 'SHT0120001');
INSERT into Ticket values('S0053SHT0120001', 'BK10000015', 'SLV',  350);
INSERT into Ticket values('S0052SHT0120001', 'BK10000015', 'SLV',  350);
INSERT into Ticket values('S0051SHT0120001', 'BK10000015', 'SLV',  350);
INSERT into Ticket values('S0050SHT0120001', 'BK10000015', 'SLV',  350);
INSERT into Booking values('BK11100016', 4, 1400, '4294259470224084', 'alamo alamo', 111, 'SHT0120001');
INSERT into Ticket values('S0049SHT0120001', 'BK11100016', 'SLV',  350);
INSERT into Ticket values('S0048SHT0120001', 'BK11100016', 'SLV',  350);
INSERT into Ticket values('S0047SHT0120001', 'BK11100016', 'SLV',  350);
INSERT into Ticket values('S0046SHT0120001', 'BK11100016', 'SLV',  350);
INSERT into Booking values('BK11600017', 4, 1400, '8692866852988885', 'mor mor', 116, 'SHT0120001');
INSERT into Ticket values('S0045SHT0120001', 'BK11600017', 'SLV',  350);
INSERT into Ticket values('S0044SHT0120001', 'BK11600017', 'SLV',  350);
INSERT into Ticket values('S0043SHT0120001', 'BK11600017', 'SLV',  350);
INSERT into Ticket values('S0042SHT0120001', 'BK11600017', 'SLV',  350);
INSERT into Booking values('BK11400018', 6, 2100, '7438443760955261', 'ran ran', 114, 'SHT0120001');
INSERT into Ticket values('S0041SHT0120001', 'BK11400018', 'SLV',  350);
INSERT into Ticket values('S0040SHT0120001', 'BK11400018', 'SLV',  350);
INSERT into Ticket values('S0039SHT0120001', 'BK11400018', 'SLV',  350);
INSERT into Ticket values('S0038SHT0120001', 'BK11400018', 'SLV',  350);
INSERT into Ticket values('S0037SHT0120001', 'BK11400018', 'SLV',  350);
INSERT into Ticket values('S0036SHT0120001', 'BK11400018', 'SLV',  350);
INSERT into Booking values('BK11900019', 6, 2300, '5954130176674979', 'karen karen', 119, 'SHT0120001');
INSERT into Ticket values('G0020SHT0120001', 'BK11900019', 'GLD',  400);
INSERT into Ticket values('G0019SHT0120001', 'BK11900019', 'GLD',  400);
INSERT into Ticket values('G0018SHT0120001', 'BK11900019', 'GLD',  400);
INSERT into Ticket values('G0017SHT0120001', 'BK11900019', 'GLD',  400);
INSERT into Ticket values('S0035SHT0120001', 'BK11900019', 'SLV',  350);
INSERT into Ticket values('S0034SHT0120001', 'BK11900019', 'SLV',  350);
INSERT into Booking values('BK10100020', 1, 350, '6289359508592847', 'ben ben', 101, 'SHT0120001');
INSERT into Ticket values('S0033SHT0120001', 'BK10100020', 'SLV',  350);
INSERT into Booking values('BK11300021', 4, 1400, '8882135475839272', 'abay abay', 113, 'SHT0120001');
INSERT into Ticket values('S0032SHT0120001', 'BK11300021', 'SLV',  350);
INSERT into Ticket values('S0031SHT0120001', 'BK11300021', 'SLV',  350);
INSERT into Ticket values('S0030SHT0120001', 'BK11300021', 'SLV',  350);
INSERT into Ticket values('S0029SHT0120001', 'BK11300021', 'SLV',  350);
INSERT into Booking values('BK11700022', 7, 2650, '4464474850275292', 'chen chen', 117, 'SHT0120001');
INSERT into Ticket values('G0016SHT0120001', 'BK11700022', 'GLD',  400);
INSERT into Ticket values('G0015SHT0120001', 'BK11700022', 'GLD',  400);
INSERT into Ticket values('G0014SHT0120001', 'BK11700022', 'GLD',  400);
INSERT into Ticket values('G0013SHT0120001', 'BK11700022', 'GLD',  400);
INSERT into Ticket values('S0028SHT0120001', 'BK11700022', 'SLV',  350);
INSERT into Ticket values('S0027SHT0120001', 'BK11700022', 'SLV',  350);
INSERT into Ticket values('S0026SHT0120001', 'BK11700022', 'SLV',  350);
INSERT into Booking values('BK10700023', 6, 2100, '6245282133912608', 'koral koral', 107, 'SHT0120001');
INSERT into Ticket values('S0025SHT0120001', 'BK10700023', 'SLV',  350);
INSERT into Ticket values('S0024SHT0120001', 'BK10700023', 'SLV',  350);
INSERT into Ticket values('S0023SHT0120001', 'BK10700023', 'SLV',  350);
INSERT into Ticket values('S0022SHT0120001', 'BK10700023', 'SLV',  350);
INSERT into Ticket values('S0021SHT0120001', 'BK10700023', 'SLV',  350);
INSERT into Ticket values('S0020SHT0120001', 'BK10700023', 'SLV',  350);
INSERT into Booking values('BK12900024', 6, 2200, '9248307353076841', 'sara sara', 129, 'SHT0120001');
INSERT into Ticket values('G0012SHT0120001', 'BK12900024', 'GLD',  400);
INSERT into Ticket values('G0011SHT0120001', 'BK12900024', 'GLD',  400);
INSERT into Ticket values('S0019SHT0120001', 'BK12900024', 'SLV',  350);
INSERT into Ticket values('S0018SHT0120001', 'BK12900024', 'SLV',  350);
INSERT into Ticket values('S0017SHT0120001', 'BK12900024', 'SLV',  350);
INSERT into Ticket values('S0016SHT0120001', 'BK12900024', 'SLV',  350);
INSERT into Booking values('BK12000025', 2, 750, '3584580527480251', 'janice janice', 120, 'SHT0120001');
INSERT into Ticket values('G0010SHT0120001', 'BK12000025', 'GLD',  400);
INSERT into Ticket values('S0015SHT0120001', 'BK12000025', 'SLV',  350);
INSERT into Booking values('BK10500026', 9, 3350, '8520638627020768', 'avi avi', 105, 'SHT0120001');
INSERT into Ticket values('G0009SHT0120001', 'BK10500026', 'GLD',  400);
INSERT into Ticket values('G0008SHT0120001', 'BK10500026', 'GLD',  400);
INSERT into Ticket values('G0007SHT0120001', 'BK10500026', 'GLD',  400);
INSERT into Ticket values('G0006SHT0120001', 'BK10500026', 'GLD',  400);
INSERT into Ticket values('S0014SHT0120001', 'BK10500026', 'SLV',  350);
INSERT into Ticket values('S0013SHT0120001', 'BK10500026', 'SLV',  350);
INSERT into Ticket values('S0012SHT0120001', 'BK10500026', 'SLV',  350);
INSERT into Ticket values('S0011SHT0120001', 'BK10500026', 'SLV',  350);
INSERT into Ticket values('S0010SHT0120001', 'BK10500026', 'SLV',  350);
INSERT into Booking values('BK10200027', 4, 1550, '2005290128127310', 'gal gal', 102, 'SHT0120001');
INSERT into Ticket values('G0005SHT0120001', 'BK10200027', 'GLD',  400);
INSERT into Ticket values('G0004SHT0120001', 'BK10200027', 'GLD',  400);
INSERT into Ticket values('G0003SHT0120001', 'BK10200027', 'GLD',  400);
INSERT into Ticket values('S0009SHT0120001', 'BK10200027', 'SLV',  350);
INSERT into Booking values('BK12100028', 5, 1750, '7204457804349640', 'saray saray', 121, 'SHT0120001');
INSERT into Ticket values('S0008SHT0120001', 'BK12100028', 'SLV',  350);
INSERT into Ticket values('S0007SHT0120001', 'BK12100028', 'SLV',  350);
INSERT into Ticket values('S0006SHT0120001', 'BK12100028', 'SLV',  350);
INSERT into Ticket values('S0005SHT0120001', 'BK12100028', 'SLV',  350);
INSERT into Ticket values('S0004SHT0120001', 'BK12100028', 'SLV',  350);
INSERT into Booking values('BK12100030', 6, 2100, '5869012341510020', 'saray saray', 121, 'SHT0130001');
INSERT into Ticket values('S0054SHT0130001', 'BK12100030', 'SLV',  350);
INSERT into Ticket values('S0053SHT0130001', 'BK12100030', 'SLV',  350);
INSERT into Ticket values('S0052SHT0130001', 'BK12100030', 'SLV',  350);
INSERT into Ticket values('S0051SHT0130001', 'BK12100030', 'SLV',  350);
INSERT into Ticket values('S0050SHT0130001', 'BK12100030', 'SLV',  350);
INSERT into Ticket values('S0049SHT0130001', 'BK12100030', 'SLV',  350);
INSERT into Booking values('BK10100031', 1, 350, '2689511402752887', 'ben ben', 101, 'SHT0130001');
INSERT into Ticket values('S0048SHT0130001', 'BK10100031', 'SLV',  350);
INSERT into Booking values('BK11600032', 4, 1400, '3147004524405731', 'mor mor', 116, 'SHT0130001');
INSERT into Ticket values('S0047SHT0130001', 'BK11600032', 'SLV',  350);
INSERT into Ticket values('S0046SHT0130001', 'BK11600032', 'SLV',  350);
INSERT into Ticket values('S0045SHT0130001', 'BK11600032', 'SLV',  350);
INSERT into Ticket values('S0044SHT0130001', 'BK11600032', 'SLV',  350);
INSERT into Booking values('BK11500033', 4, 1400, '4805019035617790', 'shir shir', 115, 'SHT0130001');
INSERT into Ticket values('S0043SHT0130001', 'BK11500033', 'SLV',  350);
INSERT into Ticket values('S0042SHT0130001', 'BK11500033', 'SLV',  350);
INSERT into Ticket values('S0041SHT0130001', 'BK11500033', 'SLV',  350);
INSERT into Ticket values('S0040SHT0130001', 'BK11500033', 'SLV',  350);
INSERT into Booking values('BK11900034', 4, 1500, '9943897496212695', 'karen karen', 119, 'SHT0130001');
INSERT into Ticket values('G0020SHT0130001', 'BK11900034', 'GLD',  400);
INSERT into Ticket values('G0019SHT0130001', 'BK11900034', 'GLD',  400);
INSERT into Ticket values('S0039SHT0130001', 'BK11900034', 'SLV',  350);
INSERT into Ticket values('S0038SHT0130001', 'BK11900034', 'SLV',  350);
INSERT into Booking values('BK10600035', 2, 700, '7107018972114195', 'viki viki', 106, 'SHT0130001');
INSERT into Ticket values('S0037SHT0130001', 'BK10600035', 'SLV',  350);
INSERT into Ticket values('S0036SHT0130001', 'BK10600035', 'SLV',  350);
INSERT into Booking values('BK12200036', 5, 1950, '4958976068123281', 'moshe moshe', 122, 'SHT0130001');
INSERT into Ticket values('G0018SHT0130001', 'BK12200036', 'GLD',  400);
INSERT into Ticket values('G0017SHT0130001', 'BK12200036', 'GLD',  400);
INSERT into Ticket values('G0016SHT0130001', 'BK12200036', 'GLD',  400);
INSERT into Ticket values('G0015SHT0130001', 'BK12200036', 'GLD',  400);
INSERT into Ticket values('S0035SHT0130001', 'BK12200036', 'SLV',  350);
INSERT into Booking values('BK11400037', 2, 700, '8871773307164357', 'ran ran', 114, 'SHT0130001');
INSERT into Ticket values('S0034SHT0130001', 'BK11400037', 'SLV',  350);
INSERT into Ticket values('S0033SHT0130001', 'BK11400037', 'SLV',  350);
INSERT into Booking values('BK12300038', 1, 350, '6244339723079426', 'dana dana', 123, 'SHT0130001');
INSERT into Ticket values('S0032SHT0130001', 'BK12300038', 'SLV',  350);
INSERT into Booking values('BK11300039', 6, 2100, '6699462706453510', 'abay abay', 113, 'SHT0130001');
INSERT into Ticket values('S0031SHT0130001', 'BK11300039', 'SLV',  350);
INSERT into Ticket values('S0030SHT0130001', 'BK11300039', 'SLV',  350);
INSERT into Ticket values('S0029SHT0130001', 'BK11300039', 'SLV',  350);
INSERT into Ticket values('S0028SHT0130001', 'BK11300039', 'SLV',  350);
INSERT into Ticket values('S0027SHT0130001', 'BK11300039', 'SLV',  350);
INSERT into Ticket values('S0026SHT0130001', 'BK11300039', 'SLV',  350);
INSERT into Booking values('BK11700040', 11, 4100, '8642924466477593', 'chen chen', 117, 'SHT0130001');
INSERT into Ticket values('G0014SHT0130001', 'BK11700040', 'GLD',  400);
INSERT into Ticket values('G0013SHT0130001', 'BK11700040', 'GLD',  400);
INSERT into Ticket values('G0012SHT0130001', 'BK11700040', 'GLD',  400);
INSERT into Ticket values('G0011SHT0130001', 'BK11700040', 'GLD',  400);
INSERT into Ticket values('G0010SHT0130001', 'BK11700040', 'GLD',  400);
INSERT into Ticket values('S0025SHT0130001', 'BK11700040', 'SLV',  350);
INSERT into Ticket values('S0024SHT0130001', 'BK11700040', 'SLV',  350);
INSERT into Ticket values('S0023SHT0130001', 'BK11700040', 'SLV',  350);
INSERT into Ticket values('S0022SHT0130001', 'BK11700040', 'SLV',  350);
INSERT into Ticket values('S0021SHT0130001', 'BK11700040', 'SLV',  350);
INSERT into Ticket values('S0020SHT0130001', 'BK11700040', 'SLV',  350);
INSERT into Booking values('BK11800041', 4, 1400, '2319772239000055', 'tomer tomer', 118, 'SHT0130001');
INSERT into Ticket values('S0019SHT0130001', 'BK11800041', 'SLV',  350);
INSERT into Ticket values('S0018SHT0130001', 'BK11800041', 'SLV',  350);
INSERT into Ticket values('S0017SHT0130001', 'BK11800041', 'SLV',  350);
INSERT into Ticket values('S0016SHT0130001', 'BK11800041', 'SLV',  350);
INSERT into Booking values('BK12700042', 4, 1450, '5642591058582590', 'workensh workensh', 127, 'SHT0130001');
INSERT into Ticket values('G0009SHT0130001', 'BK12700042', 'GLD',  400);
INSERT into Ticket values('S0015SHT0130001', 'BK12700042', 'SLV',  350);
INSERT into Ticket values('S0014SHT0130001', 'BK12700042', 'SLV',  350);
INSERT into Ticket values('S0013SHT0130001', 'BK12700042', 'SLV',  350);
INSERT into Booking values('BK10500043', 4, 1550, '7423954552292632', 'avi avi', 105, 'SHT0130001');
INSERT into Ticket values('G0008SHT0130001', 'BK10500043', 'GLD',  400);
INSERT into Ticket values('G0007SHT0130001', 'BK10500043', 'GLD',  400);
INSERT into Ticket values('G0006SHT0130001', 'BK10500043', 'GLD',  400);
INSERT into Ticket values('S0012SHT0130001', 'BK10500043', 'SLV',  350);
INSERT into Booking values('BK12500044', 5, 1750, '3518860411495232', 'adir adir', 125, 'SHT0130001');
INSERT into Ticket values('S0011SHT0130001', 'BK12500044', 'SLV',  350);
INSERT into Ticket values('S0010SHT0130001', 'BK12500044', 'SLV',  350);
INSERT into Ticket values('S0009SHT0130001', 'BK12500044', 'SLV',  350);
INSERT into Ticket values('S0008SHT0130001', 'BK12500044', 'SLV',  350);
INSERT into Ticket values('S0007SHT0130001', 'BK12500044', 'SLV',  350);
INSERT into Booking values('BK12600045', 4, 1500, '6631827136747837', 'rotem rotem', 126, 'SHT0130001');
INSERT into Ticket values('G0005SHT0130001', 'BK12600045', 'GLD',  400);
INSERT into Ticket values('G0004SHT0130001', 'BK12600045', 'GLD',  400);
INSERT into Ticket values('S0006SHT0130001', 'BK12600045', 'SLV',  350);
INSERT into Ticket values('S0005SHT0130001', 'BK12600045', 'SLV',  350);
INSERT into Booking values('BK10400046', 6, 2200, '4552014618856066', 'sun sun', 104, 'SHT0130001');
INSERT into Ticket values('G0003SHT0130001', 'BK10400046', 'GLD',  400);
INSERT into Ticket values('G0002SHT0130001', 'BK10400046', 'GLD',  400);
INSERT into Ticket values('S0004SHT0130001', 'BK10400046', 'SLV',  350);
INSERT into Ticket values('S0003SHT0130001', 'BK10400046', 'SLV',  350);
INSERT into Ticket values('S0002SHT0130001', 'BK10400046', 'SLV',  350);
INSERT into Ticket values('S0001SHT0130001', 'BK10400046', 'SLV',  350);
INSERT into Booking values('BK10300047', 3, 1050, '3405659558862406', 'joy joy', 103, 'SHT0140001');
INSERT into Ticket values('S0060SHT0140001', 'BK10300047', 'SLV',  350);
INSERT into Ticket values('S0059SHT0140001', 'BK10300047', 'SLV',  350);
INSERT into Ticket values('S0058SHT0140001', 'BK10300047', 'SLV',  350);
INSERT into Booking values('BK10800048', 5, 1750, '7581924401592754', 'masaei masaei', 108, 'SHT0140001');
INSERT into Ticket values('S0057SHT0140001', 'BK10800048', 'SLV',  350);
INSERT into Ticket values('S0056SHT0140001', 'BK10800048', 'SLV',  350);
INSERT into Ticket values('S0055SHT0140001', 'BK10800048', 'SLV',  350);
INSERT into Ticket values('S0054SHT0140001', 'BK10800048', 'SLV',  350);
INSERT into Ticket values('S0053SHT0140001', 'BK10800048', 'SLV',  350);
INSERT into Booking values('BK12200049', 4, 1400, '2827060226892437', 'moshe moshe', 122, 'SHT0140001');
INSERT into Ticket values('S0052SHT0140001', 'BK12200049', 'SLV',  350);
INSERT into Ticket values('S0051SHT0140001', 'BK12200049', 'SLV',  350);
INSERT into Ticket values('S0050SHT0140001', 'BK12200049', 'SLV',  350);
INSERT into Ticket values('S0049SHT0140001', 'BK12200049', 'SLV',  350);
INSERT into Booking values('BK12300050', 1, 350, '9662823518615219', 'dana dana', 123, 'SHT0140001');
INSERT into Ticket values('S0048SHT0140001', 'BK12300050', 'SLV',  350);
INSERT into Booking values('BK11900051', 3, 1050, '9924524907575225', 'karen karen', 119, 'SHT0140001');
INSERT into Ticket values('S0047SHT0140001', 'BK11900051', 'SLV',  350);
INSERT into Ticket values('S0046SHT0140001', 'BK11900051', 'SLV',  350);
INSERT into Ticket values('S0045SHT0140001', 'BK11900051', 'SLV',  350);
INSERT into Booking values('BK11800052', 4, 1400, '8846449745860888', 'tomer tomer', 118, 'SHT0140001');
INSERT into Ticket values('S0044SHT0140001', 'BK11800052', 'SLV',  350);
INSERT into Ticket values('S0043SHT0140001', 'BK11800052', 'SLV',  350);
INSERT into Ticket values('S0042SHT0140001', 'BK11800052', 'SLV',  350);
INSERT into Ticket values('S0041SHT0140001', 'BK11800052', 'SLV',  350);
INSERT into Booking values('BK10500053', 1, 350, '3481546317321750', 'avi avi', 105, 'SHT0140001');
INSERT into Ticket values('S0040SHT0140001', 'BK10500053', 'SLV',  350);
INSERT into Booking values('BK10700054', 7, 2500, '2673980134313498', 'koral koral', 107, 'SHT0140001');
INSERT into Ticket values('G0020SHT0140001', 'BK10700054', 'GLD',  400);
INSERT into Ticket values('S0039SHT0140001', 'BK10700054', 'SLV',  350);
INSERT into Ticket values('S0038SHT0140001', 'BK10700054', 'SLV',  350);
INSERT into Ticket values('S0037SHT0140001', 'BK10700054', 'SLV',  350);
INSERT into Ticket values('S0036SHT0140001', 'BK10700054', 'SLV',  350);
INSERT into Ticket values('S0035SHT0140001', 'BK10700054', 'SLV',  350);
INSERT into Ticket values('S0034SHT0140001', 'BK10700054', 'SLV',  350);
INSERT into Booking values('BK12100334', 1, 350, '9191579837457198', 'saray saray', 121, 'SHT0310002');
INSERT into Ticket values('S0019SHT0310002', 'BK12100334', 'SLV',  350);
INSERT into Booking values('BK10000441', 6, 1950, '2439564740193283', 'amit amit', 100, 'SHT0210003');
INSERT into Ticket values('S0021SHT0210003', 'BK10000441', 'SLV',  325);
INSERT into Ticket values('S0020SHT0210003', 'BK10000441', 'SLV',  325);
INSERT into Ticket values('S0019SHT0210003', 'BK10000441', 'SLV',  325);
INSERT into Ticket values('S0018SHT0210003', 'BK10000441', 'SLV',  325);
INSERT into Ticket values('S0017SHT0210003', 'BK10000441', 'SLV',  325);
INSERT into Ticket values('S0016SHT0210003', 'BK10000441', 'SLV',  325);
INSERT into Booking values('BK12900442', 8, 3020, '1739448502528726', 'sara sara', 129, 'SHT0210003');
INSERT into Ticket values('G0009SHT0210003', 'BK12900442', 'GLD',  395);
INSERT into Ticket values('G0008SHT0210003', 'BK12900442', 'GLD',  395);
INSERT into Ticket values('G0007SHT0210003', 'BK12900442', 'GLD',  395);
INSERT into Ticket values('G0006SHT0210003', 'BK12900442', 'GLD',  395);
INSERT into Ticket values('G0005SHT0210003', 'BK12900442', 'GLD',  395);
INSERT into Ticket values('G0004SHT0210003', 'BK12900442', 'GLD',  395);
INSERT into Ticket values('S0015SHT0210003', 'BK12900442', 'SLV',  325);
INSERT into Ticket values('S0014SHT0210003', 'BK12900442', 'SLV',  325);
INSERT into Booking values('BK12200443', 2, 650, '1186481662435206', 'moshe moshe', 122, 'SHT0210003');
INSERT into Ticket values('S0013SHT0210003', 'BK12200443', 'SLV',  325);
INSERT into Ticket values('S0012SHT0210003', 'BK12200443', 'SLV',  325);
INSERT into Booking values('BK10400444', 6, 1950, '8436067815815399', 'sun sun', 104, 'SHT0210003');
INSERT into Ticket values('S0011SHT0210003', 'BK10400444', 'SLV',  325);
INSERT into Ticket values('S0010SHT0210003', 'BK10400444', 'SLV',  325);
INSERT into Ticket values('S0009SHT0210003', 'BK10400444', 'SLV',  325);
INSERT into Ticket values('S0008SHT0210003', 'BK10400444', 'SLV',  325);
INSERT into Ticket values('S0007SHT0210003', 'BK10400444', 'SLV',  325);
INSERT into Ticket values('S0006SHT0210003', 'BK10400444', 'SLV',  325);
INSERT into Booking values('BK11400445', 7, 2485, '9860872140447816', 'ran ran', 114, 'SHT0210003');
INSERT into Ticket values('G0003SHT0210003', 'BK11400445', 'GLD',  395);
INSERT into Ticket values('G0002SHT0210003', 'BK11400445', 'GLD',  395);
INSERT into Ticket values('G0001SHT0210003', 'BK11400445', 'GLD',  395);
INSERT into Ticket values('S0005SHT0210003', 'BK11400445', 'SLV',  325);
INSERT into Ticket values('S0004SHT0210003', 'BK11400445', 'SLV',  325);
INSERT into Ticket values('S0003SHT0210003', 'BK11400445', 'SLV',  325);
INSERT into Ticket values('S0002SHT0210003', 'BK11400445', 'SLV',  325);
INSERT into Booking values('BK11000446', 4, 1300, '7675996964881092', 'bayat bayat', 110, 'SHT0220003');
INSERT into Ticket values('S0064SHT0220003', 'BK11000446', 'SLV',  325);
INSERT into Ticket values('S0063SHT0220003', 'BK11000446', 'SLV',  325);
INSERT into Ticket values('S0062SHT0220003', 'BK11000446', 'SLV',  325);
INSERT into Ticket values('S0061SHT0220003', 'BK11000446', 'SLV',  325);
INSERT into Booking values('BK11700447', 3, 975, '4692295613875388', 'chen chen', 117, 'SHT0220003');
INSERT into Ticket values('S0060SHT0220003', 'BK11700447', 'SLV',  325);
INSERT into Ticket values('S0059SHT0220003', 'BK11700447', 'SLV',  325);
INSERT into Ticket values('S0058SHT0220003', 'BK11700447', 'SLV',  325);
INSERT into Booking values('BK10200453', 9, 3345, '9412216458722752', 'gal gal', 102, 'SHT0220003');
INSERT into Ticket values('G0022SHT0220003', 'BK10200453', 'GLD',  395);
INSERT into Ticket values('G0021SHT0220003', 'BK10200453', 'GLD',  395);
INSERT into Ticket values('G0020SHT0220003', 'BK10200453', 'GLD',  395);
INSERT into Ticket values('G0019SHT0220003', 'BK10200453', 'GLD',  395);
INSERT into Ticket values('G0018SHT0220003', 'BK10200453', 'GLD',  395);
INSERT into Ticket values('G0017SHT0220003', 'BK10200453', 'GLD',  395);
INSERT into Ticket values('S0041SHT0220003', 'BK10200453', 'SLV',  325);
INSERT into Ticket values('S0040SHT0220003', 'BK10200453', 'SLV',  325);
INSERT into Ticket values('S0039SHT0220003', 'BK10200453', 'SLV',  325);
INSERT into Booking values('BK12100454', 1, 325, '5418265350776084', 'saray saray', 121, 'SHT0220003');
INSERT into Ticket values('S0038SHT0220003', 'BK12100454', 'SLV',  325);
INSERT into Booking values('BK12100533', 4, 1400, '2718044174801812', 'saray saray', 121, 'SHT0330003');
INSERT into Ticket values('S0040SHT0330003', 'BK12100533', 'SLV',  350);
INSERT into Ticket values('S0039SHT0330003', 'BK12100533', 'SLV',  350);
INSERT into Ticket values('S0038SHT0330003', 'BK12100533', 'SLV',  350);
INSERT into Ticket values('S0037SHT0330003', 'BK12100533', 'SLV',  350);
INSERT into Booking values('BK11100534', 11, 4225, '4393433569071641', 'alamo alamo', 111, 'SHT0330003');
INSERT into Ticket values('G0020SHT0330003', 'BK11100534', 'GLD',  425);
INSERT into Ticket values('G0019SHT0330003', 'BK11100534', 'GLD',  425);
INSERT into Ticket values('G0018SHT0330003', 'BK11100534', 'GLD',  425);
INSERT into Ticket values('G0017SHT0330003', 'BK11100534', 'GLD',  425);
INSERT into Ticket values('G0016SHT0330003', 'BK11100534', 'GLD',  425);
INSERT into Ticket values('S0036SHT0330003', 'BK11100534', 'SLV',  350);
INSERT into Ticket values('S0035SHT0330003', 'BK11100534', 'SLV',  350);
INSERT into Ticket values('S0034SHT0330003', 'BK11100534', 'SLV',  350);
INSERT into Ticket values('S0033SHT0330003', 'BK11100534', 'SLV',  350);
INSERT into Ticket values('S0032SHT0330003', 'BK11100534', 'SLV',  350);
INSERT into Ticket values('S0031SHT0330003', 'BK11100534', 'SLV',  350);
INSERT into Booking values('BK10100535', 5, 1750, '2876291523109519', 'ben ben', 101, 'SHT0330003');
INSERT into Ticket values('S0030SHT0330003', 'BK10100535', 'SLV',  350);
INSERT into Ticket values('S0029SHT0330003', 'BK10100535', 'SLV',  350);
INSERT into Ticket values('S0028SHT0330003', 'BK10100535', 'SLV',  350);
INSERT into Ticket values('S0027SHT0330003', 'BK10100535', 'SLV',  350);
INSERT into Ticket values('S0026SHT0330003', 'BK10100535', 'SLV',  350);
INSERT into Booking values('BK10900536', 7, 2525, '8996182513796008', 'yael yael', 109, 'SHT0330003');
INSERT into Ticket values('G0015SHT0330003', 'BK10900536', 'GLD',  425);
INSERT into Ticket values('S0025SHT0330003', 'BK10900536', 'SLV',  350);
INSERT into Ticket values('S0024SHT0330003', 'BK10900536', 'SLV',  350);
INSERT into Ticket values('S0023SHT0330003', 'BK10900536', 'SLV',  350);
INSERT into Ticket values('S0022SHT0330003', 'BK10900536', 'SLV',  350);
INSERT into Ticket values('S0021SHT0330003', 'BK10900536', 'SLV',  350);
INSERT into Ticket values('S0020SHT0330003', 'BK10900536', 'SLV',  350);
INSERT into Booking values('BK10500638', 6, 1950, '1401057181402339', 'avi avi', 105, 'SHT0220004');
INSERT into Ticket values('S0029SHT0220004', 'BK10500638', 'SLV',  325);
INSERT into Ticket values('S0028SHT0220004', 'BK10500638', 'SLV',  325);
INSERT into Ticket values('S0027SHT0220004', 'BK10500638', 'SLV',  325);
INSERT into Ticket values('S0026SHT0220004', 'BK10500638', 'SLV',  325);
INSERT into Ticket values('S0025SHT0220004', 'BK10500638', 'SLV',  325);
INSERT into Ticket values('S0024SHT0220004', 'BK10500638', 'SLV',  325);
INSERT into Booking values('BK10300639', 7, 2695, '4090382807395236', 'joy joy', 103, 'SHT0220004');
INSERT into Ticket values('G0012SHT0220004', 'BK10300639', 'GLD',  395);
INSERT into Ticket values('G0011SHT0220004', 'BK10300639', 'GLD',  395);
INSERT into Ticket values('G0010SHT0220004', 'BK10300639', 'GLD',  395);
INSERT into Ticket values('G0009SHT0220004', 'BK10300639', 'GLD',  395);
INSERT into Ticket values('G0008SHT0220004', 'BK10300639', 'GLD',  395);
INSERT into Ticket values('G0007SHT0220004', 'BK10300639', 'GLD',  395);
INSERT into Ticket values('S0023SHT0220004', 'BK10300639', 'SLV',  325);
INSERT into Booking values('BK12100640', 2, 650, '2362081821837371', 'saray saray', 121, 'SHT0220004');
INSERT into Ticket values('S0022SHT0220004', 'BK12100640', 'SLV',  325);
INSERT into Ticket values('S0021SHT0220004', 'BK12100640', 'SLV',  325);
INSERT into Booking values('BK12800641', 5, 1625, '1001972869905404', 'moti moti', 128, 'SHT0220004');
INSERT into Ticket values('S0020SHT0220004', 'BK12800641', 'SLV',  325);
INSERT into Ticket values('S0019SHT0220004', 'BK12800641', 'SLV',  325);
INSERT into Ticket values('S0018SHT0220004', 'BK12800641', 'SLV',  325);
INSERT into Ticket values('S0017SHT0220004', 'BK12800641', 'SLV',  325);
INSERT into Ticket values('S0016SHT0220004', 'BK12800641', 'SLV',  325);
INSERT into Booking values('BK10400642', 4, 1300, '8307991702809362', 'sun sun', 104, 'SHT0220004');
INSERT into Ticket values('S0015SHT0220004', 'BK10400642', 'SLV',  325);
INSERT into Ticket values('S0014SHT0220004', 'BK10400642', 'SLV',  325);
INSERT into Ticket values('S0013SHT0220004', 'BK10400642', 'SLV',  325);
INSERT into Ticket values('S0012SHT0220004', 'BK10400642', 'SLV',  325);
INSERT into Booking values('BK12500894', 4, 1400, '8218431859305404', 'adir adir', 125, 'SHT0330005');
INSERT into Ticket values('S0012SHT0330005', 'BK12500894', 'SLV',  350);
INSERT into Ticket values('S0011SHT0330005', 'BK12500894', 'SLV',  350);
INSERT into Ticket values('S0010SHT0330005', 'BK12500894', 'SLV',  350);
INSERT into Ticket values('S0009SHT0330005', 'BK12500894', 'SLV',  350);
INSERT into Booking values('BK11400895', 7, 2900, '3477417543780944', 'ran ran', 114, 'SHT0330005');
INSERT into Ticket values('G0006SHT0330005', 'BK11400895', 'GLD',  425);
INSERT into Ticket values('G0005SHT0330005', 'BK11400895', 'GLD',  425);
INSERT into Ticket values('G0004SHT0330005', 'BK11400895', 'GLD',  425);
INSERT into Ticket values('G0003SHT0330005', 'BK11400895', 'GLD',  425);
INSERT into Ticket values('G0002SHT0330005', 'BK11400895', 'GLD',  425);
INSERT into Ticket values('G0001SHT0330005', 'BK11400895', 'GLD',  425);
INSERT into Ticket values('S0008SHT0330005', 'BK11400895', 'SLV',  350);
INSERT into Booking values('BK11101545', 4, 1300, '6850483708791641', 'alamo alamo', 111, 'SHT0240009');
INSERT into Ticket values('S0038SHT0240009', 'BK11101545', 'SLV',  325);
INSERT into Ticket values('S0037SHT0240009', 'BK11101545', 'SLV',  325);
INSERT into Ticket values('S0036SHT0240009', 'BK11101545', 'SLV',  325);
INSERT into Ticket values('S0035SHT0240009', 'BK11101545', 'SLV',  325);
INSERT into Booking values('BK12101546', 6, 1950, '5635624662166066', 'saray saray', 121, 'SHT0240009');
INSERT into Ticket values('S0034SHT0240009', 'BK12101546', 'SLV',  325);
INSERT into Ticket values('S0033SHT0240009', 'BK12101546', 'SLV',  325);
INSERT into Ticket values('S0032SHT0240009', 'BK12101546', 'SLV',  325);
INSERT into Ticket values('S0031SHT0240009', 'BK12101546', 'SLV',  325);
INSERT into Ticket values('S0030SHT0240009', 'BK12101546', 'SLV',  325);
INSERT into Ticket values('S0029SHT0240009', 'BK12101546', 'SLV',  325);
INSERT into Booking values('BK10101547', 9, 3205, '4759297383739377', 'ben ben', 101, 'SHT0240009');
INSERT into Ticket values('G0016SHT0240009', 'BK10101547', 'GLD',  395);
INSERT into Ticket values('G0015SHT0240009', 'BK10101547', 'GLD',  395);
INSERT into Ticket values('G0014SHT0240009', 'BK10101547', 'GLD',  395);
INSERT into Ticket values('G0013SHT0240009', 'BK10101547', 'GLD',  395);
INSERT into Ticket values('S0028SHT0240009', 'BK10101547', 'SLV',  325);
INSERT into Ticket values('S0027SHT0240009', 'BK10101547', 'SLV',  325);
INSERT into Ticket values('S0026SHT0240009', 'BK10101547', 'SLV',  325);
INSERT into Ticket values('S0025SHT0240009', 'BK10101547', 'SLV',  325);
INSERT into Ticket values('S0024SHT0240009', 'BK10101547', 'SLV',  325);
INSERT into Booking values('BK11501548', 7, 2485, '3184805897369733', 'shir shir', 115, 'SHT0240009');
INSERT into Ticket values('G0012SHT0240009', 'BK11501548', 'GLD',  395);
INSERT into Ticket values('G0011SHT0240009', 'BK11501548', 'GLD',  395);
INSERT into Ticket values('G0010SHT0240009', 'BK11501548', 'GLD',  395);
INSERT into Ticket values('S0023SHT0240009', 'BK11501548', 'SLV',  325);
INSERT into Ticket values('S0022SHT0240009', 'BK11501548', 'SLV',  325);
INSERT into Ticket values('S0021SHT0240009', 'BK11501548', 'SLV',  325);
INSERT into Ticket values('S0020SHT0240009', 'BK11501548', 'SLV',  325);
INSERT into Booking values('BK12701549', 3, 975, '3522338648699380', 'workensh workensh', 127, 'SHT0240009');
INSERT into Ticket values('S0019SHT0240009', 'BK12701549', 'SLV',  325);
INSERT into Ticket values('S0018SHT0240009', 'BK12701549', 'SLV',  325);
INSERT into Ticket values('S0017SHT0240009', 'BK12701549', 'SLV',  325);
INSERT into Booking values('BK11201550', 8, 2810, '3845602446307788', 'adi adi', 112, 'SHT0240009');
INSERT into Ticket values('G0009SHT0240009', 'BK11201550', 'GLD',  395);
INSERT into Ticket values('G0008SHT0240009', 'BK11201550', 'GLD',  395);
INSERT into Ticket values('G0007SHT0240009', 'BK11201550', 'GLD',  395);
INSERT into Ticket values('S0016SHT0240009', 'BK11201550', 'SLV',  325);
INSERT into Ticket values('S0015SHT0240009', 'BK11201550', 'SLV',  325);
INSERT into Ticket values('S0014SHT0240009', 'BK11201550', 'SLV',  325);
INSERT into Ticket values('S0013SHT0240009', 'BK11201550', 'SLV',  325);
INSERT into Ticket values('S0012SHT0240009', 'BK11201550', 'SLV',  325);
INSERT into Booking values('BK12801551', 8, 2810, '1779078916055343', 'moti moti', 128, 'SHT0240009');
INSERT into Ticket values('G0006SHT0240009', 'BK12801551', 'GLD',  395);
INSERT into Ticket values('G0005SHT0240009', 'BK12801551', 'GLD',  395);
INSERT into Ticket values('G0004SHT0240009', 'BK12801551', 'GLD',  395);
INSERT into Ticket values('S0011SHT0240009', 'BK12801551', 'SLV',  325);
INSERT into Ticket values('S0010SHT0240009', 'BK12801551', 'SLV',  325);
INSERT into Ticket values('S0009SHT0240009', 'BK12801551', 'SLV',  325);
INSERT into Ticket values('S0008SHT0240009', 'BK12801551', 'SLV',  325);
INSERT into Ticket values('S0007SHT0240009', 'BK12801551', 'SLV',  325);
INSERT into Booking values('BK11301552', 2, 650, '4545297605425340', 'abay abay', 113, 'SHT0240009');
INSERT into Ticket values('S0006SHT0240009', 'BK11301552', 'SLV',  325);
INSERT into Ticket values('S0005SHT0240009', 'BK11301552', 'SLV',  325);
INSERT into Booking values('BK11801553', 4, 1510, '5357202946719283', 'tomer tomer', 118, 'SHT0240009');
INSERT into Ticket values('G0003SHT0240009', 'BK11801553', 'GLD',  395);
INSERT into Ticket values('G0002SHT0240009', 'BK11801553', 'GLD',  395);
INSERT into Ticket values('G0001SHT0240009', 'BK11801553', 'GLD',  395);
INSERT into Ticket values('S0004SHT0240009', 'BK11801553', 'SLV',  325);
INSERT into Booking values('BK11201554', 3, 1050, '5656595653884318', 'adi adi', 112, 'SHT0310009');
INSERT into Ticket values('S0050SHT0310009', 'BK11201554', 'SLV',  350);
INSERT into Ticket values('S0049SHT0310009', 'BK11201554', 'SLV',  350);
INSERT into Ticket values('S0048SHT0310009', 'BK11201554', 'SLV',  350);
INSERT into Booking values('BK12201555', 4, 1400, '1373477384992780', 'moshe moshe', 122, 'SHT0310009');
INSERT into Ticket values('S0047SHT0310009', 'BK12201555', 'SLV',  350);
INSERT into Ticket values('S0046SHT0310009', 'BK12201555', 'SLV',  350);
INSERT into Ticket values('S0045SHT0310009', 'BK12201555', 'SLV',  350);
INSERT into Ticket values('S0044SHT0310009', 'BK12201555', 'SLV',  350);
INSERT into Booking values('BK10301556', 2, 700, '4351161151418929', 'joy joy', 103, 'SHT0310009');
INSERT into Ticket values('S0043SHT0310009', 'BK10301556', 'SLV',  350);
INSERT into Ticket values('S0042SHT0310009', 'BK10301556', 'SLV',  350);
INSERT into Booking values('BK11301557', 3, 1050, '3054374384467594', 'abay abay', 113, 'SHT0310009');
INSERT into Ticket values('S0041SHT0310009', 'BK11301557', 'SLV',  350);
INSERT into Ticket values('S0040SHT0310009', 'BK11301557', 'SLV',  350);
INSERT into Ticket values('S0039SHT0310009', 'BK11301557', 'SLV',  350);
INSERT into Booking values('BK10701558', 11, 4300, '3020398147287904', 'koral koral', 107, 'SHT0310009');
INSERT into Ticket values('G0020SHT0310009', 'BK10701558', 'GLD',  425);
INSERT into Ticket values('G0019SHT0310009', 'BK10701558', 'GLD',  425);
INSERT into Ticket values('G0018SHT0310009', 'BK10701558', 'GLD',  425);
INSERT into Ticket values('G0017SHT0310009', 'BK10701558', 'GLD',  425);
INSERT into Ticket values('G0016SHT0310009', 'BK10701558', 'GLD',  425);
INSERT into Ticket values('G0015SHT0310009', 'BK10701558', 'GLD',  425);
INSERT into Ticket values('S0038SHT0310009', 'BK10701558', 'SLV',  350);
INSERT into Ticket values('S0037SHT0310009', 'BK10701558', 'SLV',  350);
INSERT into Ticket values('S0036SHT0310009', 'BK10701558', 'SLV',  350);
INSERT into Ticket values('S0035SHT0310009', 'BK10701558', 'SLV',  350);
INSERT into Ticket values('S0034SHT0310009', 'BK10701558', 'SLV',  350);
INSERT into Booking values('BK12701559', 4, 1400, '9654554908294637', 'workensh workensh', 127, 'SHT0310009');
INSERT into Ticket values('S0033SHT0310009', 'BK12701559', 'SLV',  350);
INSERT into Ticket values('S0032SHT0310009', 'BK12701559', 'SLV',  350);
INSERT into Ticket values('S0031SHT0310009', 'BK12701559', 'SLV',  350);
INSERT into Ticket values('S0030SHT0310009', 'BK12701559', 'SLV',  350);
INSERT into Booking values('BK12501560', 4, 1400, '5001260122334650', 'adir adir', 125, 'SHT0310009');
INSERT into Ticket values('S0029SHT0310009', 'BK12501560', 'SLV',  350);
INSERT into Ticket values('S0028SHT0310009', 'BK12501560', 'SLV',  350);
INSERT into Ticket values('S0027SHT0310009', 'BK12501560', 'SLV',  350);
INSERT into Ticket values('S0026SHT0310009', 'BK12501560', 'SLV',  350);
INSERT into Booking values('BK10601561', 7, 2675, '1146557867329042', 'viki viki', 106, 'SHT0310009');
INSERT into Ticket values('G0014SHT0310009', 'BK10601561', 'GLD',  425);
INSERT into Ticket values('G0013SHT0310009', 'BK10601561', 'GLD',  425);
INSERT into Ticket values('G0012SHT0310009', 'BK10601561', 'GLD',  425);
INSERT into Ticket values('S0025SHT0310009', 'BK10601561', 'SLV',  350);
INSERT into Ticket values('S0024SHT0310009', 'BK10601561', 'SLV',  350);
INSERT into Ticket values('S0023SHT0310009', 'BK10601561', 'SLV',  350);
INSERT into Ticket values('S0022SHT0310009', 'BK10601561', 'SLV',  350);
INSERT into Booking values('BK12801562', 8, 3175, '3044649558029431', 'moti moti', 128, 'SHT0310009');
INSERT into Ticket values('G0011SHT0310009', 'BK12801562', 'GLD',  425);
INSERT into Ticket values('G0010SHT0310009', 'BK12801562', 'GLD',  425);
INSERT into Ticket values('G0009SHT0310009', 'BK12801562', 'GLD',  425);
INSERT into Ticket values('G0008SHT0310009', 'BK12801562', 'GLD',  425);
INSERT into Ticket values('G0007SHT0310009', 'BK12801562', 'GLD',  425);
INSERT into Ticket values('S0021SHT0310009', 'BK12801562', 'SLV',  350);
INSERT into Ticket values('S0020SHT0310009', 'BK12801562', 'SLV',  350);
INSERT into Ticket values('S0019SHT0310009', 'BK12801562', 'SLV',  350);
INSERT into Booking values('BK11101563', 4, 1400, '6835230308886928', 'alamo alamo', 111, 'SHT0310009');
INSERT into Ticket values('S0018SHT0310009', 'BK11101563', 'SLV',  350);
INSERT into Ticket values('S0017SHT0310009', 'BK11101563', 'SLV',  350);
INSERT into Ticket values('S0016SHT0310009', 'BK11101563', 'SLV',  350);
INSERT into Ticket values('S0015SHT0310009', 'BK11101563', 'SLV',  350);
INSERT into Booking values('BK12001564', 6, 2100, '9621576661428164', 'janice janice', 120, 'SHT0310009');
INSERT into Ticket values('S0014SHT0310009', 'BK12001564', 'SLV',  350);
INSERT into Ticket values('S0013SHT0310009', 'BK12001564', 'SLV',  350);
INSERT into Ticket values('S0012SHT0310009', 'BK12001564', 'SLV',  350);
INSERT into Ticket values('S0011SHT0310009', 'BK12001564', 'SLV',  350);
INSERT into Ticket values('S0010SHT0310009', 'BK12001564', 'SLV',  350);
INSERT into Ticket values('S0009SHT0310009', 'BK12001564', 'SLV',  350);
INSERT into Booking values('BK10901565', 7, 2750, '1881938966603726', 'yael yael', 109, 'SHT0310009');
INSERT into Ticket values('G0006SHT0310009', 'BK10901565', 'GLD',  425);
INSERT into Ticket values('G0005SHT0310009', 'BK10901565', 'GLD',  425);
INSERT into Ticket values('G0004SHT0310009', 'BK10901565', 'GLD',  425);
INSERT into Ticket values('G0003SHT0310009', 'BK10901565', 'GLD',  425);
INSERT into Ticket values('S0008SHT0310009', 'BK10901565', 'SLV',  350);
INSERT into Ticket values('S0007SHT0310009', 'BK10901565', 'SLV',  350);
INSERT into Ticket values('S0006SHT0310009', 'BK10901565', 'SLV',  350);
INSERT into Booking values('BK10201566', 4, 1400, '1663867459136592', 'gal gal', 102, 'SHT0310009');
INSERT into Ticket values('S0005SHT0310009', 'BK10201566', 'SLV',  350);
INSERT into Ticket values('S0004SHT0310009', 'BK10201566', 'SLV',  350);
INSERT into Ticket values('S0003SHT0310009', 'BK10201566', 'SLV',  350);
INSERT into Ticket values('S0002SHT0310009', 'BK10201566', 'SLV',  350);
INSERT into Booking values('BK11201567', 5, 1750, '1249897607486337', 'adi adi', 112, 'SHT0320009');
INSERT into Ticket values('S0050SHT0320009', 'BK11201567', 'SLV',  350);
INSERT into Ticket values('S0049SHT0320009', 'BK11201567', 'SLV',  350);
INSERT into Ticket values('S0048SHT0320009', 'BK11201567', 'SLV',  350);
INSERT into Ticket values('S0047SHT0320009', 'BK11201567', 'SLV',  350);
INSERT into Ticket values('S0046SHT0320009', 'BK11201567', 'SLV',  350);
INSERT into Booking values('BK12101568', 6, 2100, '8558240268181465', 'saray saray', 121, 'SHT0320009');
INSERT into Ticket values('S0045SHT0320009', 'BK12101568', 'SLV',  350);
INSERT into Ticket values('S0044SHT0320009', 'BK12101568', 'SLV',  350);
INSERT into Ticket values('S0043SHT0320009', 'BK12101568', 'SLV',  350);
INSERT into Ticket values('S0042SHT0320009', 'BK12101568', 'SLV',  350);
INSERT into Ticket values('S0041SHT0320009', 'BK12101568', 'SLV',  350);
INSERT into Ticket values('S0040SHT0320009', 'BK12101568', 'SLV',  350);
INSERT into Booking values('BK12601569', 7, 2525, '4862018754259181', 'rotem rotem', 126, 'SHT0320009');
INSERT into Ticket values('G0020SHT0320009', 'BK12601569', 'GLD',  425);
INSERT into Ticket values('S0039SHT0320009', 'BK12601569', 'SLV',  350);
INSERT into Ticket values('S0038SHT0320009', 'BK12601569', 'SLV',  350);
INSERT into Ticket values('S0037SHT0320009', 'BK12601569', 'SLV',  350);
INSERT into Ticket values('S0036SHT0320009', 'BK12601569', 'SLV',  350);
INSERT into Ticket values('S0035SHT0320009', 'BK12601569', 'SLV',  350);
INSERT into Ticket values('S0034SHT0320009', 'BK12601569', 'SLV',  350);
INSERT into Booking values('BK10001570', 6, 2400, '3633029084153101', 'amit amit', 100, 'SHT0320009');
INSERT into Ticket values('G0019SHT0320009', 'BK10001570', 'GLD',  425);
INSERT into Ticket values('G0018SHT0320009', 'BK10001570', 'GLD',  425);
INSERT into Ticket values('G0017SHT0320009', 'BK10001570', 'GLD',  425);
INSERT into Ticket values('G0016SHT0320009', 'BK10001570', 'GLD',  425);
INSERT into Ticket values('S0033SHT0320009', 'BK10001570', 'SLV',  350);
INSERT into Ticket values('S0032SHT0320009', 'BK10001570', 'SLV',  350);
INSERT into Booking values('BK11601571', 4, 1400, '7096903064972289', 'mor mor', 116, 'SHT0320009');
INSERT into Ticket values('S0031SHT0320009', 'BK11601571', 'SLV',  350);
INSERT into Ticket values('S0030SHT0320009', 'BK11601571', 'SLV',  350);
INSERT into Ticket values('S0029SHT0320009', 'BK11601571', 'SLV',  350);
INSERT into Ticket values('S0028SHT0320009', 'BK11601571', 'SLV',  350);
INSERT into Booking values('BK11801572', 6, 2175, '7855835677377884', 'tomer tomer', 118, 'SHT0320009');
INSERT into Ticket values('G0015SHT0320009', 'BK11801572', 'GLD',  425);
INSERT into Ticket values('S0027SHT0320009', 'BK11801572', 'SLV',  350);
INSERT into Ticket values('S0026SHT0320009', 'BK11801572', 'SLV',  350);
INSERT into Ticket values('S0025SHT0320009', 'BK11801572', 'SLV',  350);
INSERT into Ticket values('S0024SHT0320009', 'BK11801572', 'SLV',  350);
INSERT into Ticket values('S0023SHT0320009', 'BK11801572', 'SLV',  350);
INSERT into Booking values('BK11301573', 6, 2400, '6431598507084676', 'abay abay', 113, 'SHT0320009');
INSERT into Ticket values('G0014SHT0320009', 'BK11301573', 'GLD',  425);
INSERT into Ticket values('G0013SHT0320009', 'BK11301573', 'GLD',  425);
INSERT into Ticket values('G0012SHT0320009', 'BK11301573', 'GLD',  425);
INSERT into Ticket values('G0011SHT0320009', 'BK11301573', 'GLD',  425);
INSERT into Ticket values('S0022SHT0320009', 'BK11301573', 'SLV',  350);
INSERT into Ticket values('S0021SHT0320009', 'BK11301573', 'SLV',  350);
INSERT into Booking values('BK12901574', 4, 1400, '7026039349669550', 'sara sara', 129, 'SHT0320009');
INSERT into Ticket values('S0020SHT0320009', 'BK12901574', 'SLV',  350);
INSERT into Ticket values('S0019SHT0320009', 'BK12901574', 'SLV',  350);
INSERT into Ticket values('S0018SHT0320009', 'BK12901574', 'SLV',  350);
INSERT into Ticket values('S0017SHT0320009', 'BK12901574', 'SLV',  350);
INSERT into Booking values('BK11501575', 11, 4225, '3938241697901518', 'shir shir', 115, 'SHT0320009');
INSERT into Ticket values('G0010SHT0320009', 'BK11501575', 'GLD',  425);
INSERT into Ticket values('G0009SHT0320009', 'BK11501575', 'GLD',  425);
INSERT into Ticket values('G0008SHT0320009', 'BK11501575', 'GLD',  425);
INSERT into Ticket values('G0007SHT0320009', 'BK11501575', 'GLD',  425);
INSERT into Ticket values('G0006SHT0320009', 'BK11501575', 'GLD',  425);
INSERT into Ticket values('S0016SHT0320009', 'BK11501575', 'SLV',  350);
INSERT into Ticket values('S0015SHT0320009', 'BK11501575', 'SLV',  350);
INSERT into Ticket values('S0014SHT0320009', 'BK11501575', 'SLV',  350);
INSERT into Ticket values('S0013SHT0320009', 'BK11501575', 'SLV',  350);
INSERT into Ticket values('S0012SHT0320009', 'BK11501575', 'SLV',  350);
INSERT into Ticket values('S0011SHT0320009', 'BK11501575', 'SLV',  350);
INSERT into Booking values('BK11901576', 2, 700, '5454153103143932', 'karen karen', 119, 'SHT0320009');
INSERT into Ticket values('S0010SHT0320009', 'BK11901576', 'SLV',  350);
INSERT into Ticket values('S0009SHT0320009', 'BK11901576', 'SLV',  350);
INSERT into Booking values('BK12701577', 9, 3525, '2225255418140077', 'workensh workensh', 127, 'SHT0320009');
INSERT into Ticket values('G0005SHT0320009', 'BK12701577', 'GLD',  425);
INSERT into Ticket values('G0004SHT0320009', 'BK12701577', 'GLD',  425);
INSERT into Ticket values('G0003SHT0320009', 'BK12701577', 'GLD',  425);
INSERT into Ticket values('G0002SHT0320009', 'BK12701577', 'GLD',  425);
INSERT into Ticket values('G0001SHT0320009', 'BK12701577', 'GLD',  425);
INSERT into Ticket values('S0008SHT0320009', 'BK12701577', 'SLV',  350);
INSERT into Ticket values('S0007SHT0320009', 'BK12701577', 'SLV',  350);
INSERT into Ticket values('S0006SHT0320009', 'BK12701577', 'SLV',  350);
INSERT into Ticket values('S0005SHT0320009', 'BK12701577', 'SLV',  350);