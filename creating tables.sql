CREATE TABLE Employee (Employee_ID NUMBER(11,0) NOT NULL, Name VARCHAR2(25)
NOT NULL, Address VARCHAR2(30), City VARCHAR2(20), State CHAR(2), PostalCode VARCHAR2(9), Phone VARCHAR2(15) NOT NULL, Email VARCHAR2(30), HourlySalary DECIMAL(7,2), DateHired DATE, Employee_Type VARCHAR2(25), CONSTRAINT
Employee_PK PRIMARY KEY (Employee_ID));
CREATE TABLE Role (Employee_ID NUMBER(11,0) PRIMARY KEY REFERENCES EMPLOYEE(Employee_ID), ROLE VARCHAR2(50) NOT NULL, Duties VARCHAR2(200) );

INSERT INTO Employee VALUES ( 123456, 'Stanton Lueras', '711 Nulla St.', 'Ames','IA','50014','515-573-3481', 'Stanton@RENTALCAR.COM', 30.00,TO_DATE( 'October 01, 2015', 'MONTH DD, YYYY' ),'Management' );
INSERT INTO Employee VALUES( 12346,'Caridad Hardage','606-3727 Ullamcorper. Street','Ames','IA','50014', '515-477-9830','Caridad@RENTALCAR.COM',28.00,TO_DATE(
'September 10, 2016', 'MONTH DD, YYYY' ),'Management' );
INSERT INTO Employee VALUES ( 12347,'Leopoldo Marchi','Ap #651-8679 Sodales Av.','Ames','IA','50010', '515-525-9249','Leopoldo@RENTALCAR.COM',28.00,TO_DATE(
'October 10, 2015', 'MONTH DD, YYYY' ),'Management' );
INSERT INTO Employee VALUES ( 12348,'Gail Odwyer', '7292 Dictum Av.','Ames','IA','50014','515-278-4277', 'Gail@RENTALCAR.COM',20.00,TO_DATE( 'September 10, 2016', 'MONTH DD, YYYY' ),'Porter' );
INSERT INTO Employee VALUES ( 12349,'Terresa Albertson','3415 Lobortis. Avenue', 'Ames','IA','50010', '515-906-2101','Terresa@RENTALCAR.COM',20.00,TO_DATE( 'September 28, 2016', 'MONTH DD, YYYY' ),'Porter' );
INSERT INTO Employee VALUES ( 12350,'John Albertson','257 Lobortis. Avenue','Ames', 'IA','50010','515-562-5654','John@RENTALCAR.COM',22.00, TO_DATE( 'June 28, 2016', 'MONTH DD, YYYY' ), 'FrontDesk' );
INSERT INTO Employee VALUES ( 12351,'Andres Yokota','Ap #761-2515 Egestas. Rd.','Ames','IA','50014', '515-349-0836','Andres@RENTALCAR.COM',22.00, TO_DATE(
'September 28, 2015', 'MONTH DD, YYYY' ),'FrontDesk' );
INSERT INTO Employee VALUES ( 12352,'Ceola Pinette', 'Ap #636-8082 Arcu Avenue','Ames','IA','50014', '515-241-9830','Ceola@RENTALCAR.COM',22.00, TO_DATE( 'October 28, 2015', 'MONTH DD, YYYY' ),'FrontDesk' );
INSERT INTO Employee VALUES ( 12353,'Misti Mcelyea', 'Ap #630-3889 Nulla. Street', 'Ames','IA','50014', '515-241-0526','Misti@RENTALCAR.COM',22.00, TO_DATE( 'November 01, 2015', 'MONTH DD, YYYY' ),'FrontDesk' );
INSERT INTO Employee VALUES ( 12354,'Lynette Du','Ap #310-1678 Ut Av.', 'Ames','IA','50014','515-853-9830', 'Du@RENTALCAR.COM',20.00,TO_DATE( 'January 28, 2017', 'MONTH DD, YYYY' ),'Porter' );
INSERT INTO Employee VALUES ( 12355,'Mac Dubon','430-985 Eleifend St.', 'Ames','IA','50010', '515-853-2168', 'Mac@RENTALCAR.COM', 20.00,TO_DATE( 'October 12, 2015', 'MONTH DD, YYYY' ), 'Porter' );
INSERT INTO Employee VALUES ( 12356,'Jani Copley','1964 Facilisis Avenue','Ames', 'IA','50010','515-477-9249', 'Jani@RENTALCAR.COM', 25.00,TO_DATE( 'February 12, 2017',
 
'MONTH DD, YYYY' ),'Mechanic' );
INSERT INTO Employee VALUES ( 12357,'Julius Defibaugh','Ap #287-3260 Ut St.','Ames','IA', '50014', '515-477-0526', 'Julius@RENTALCAR.COM',25.00, TO_DATE( 'April 12, 2015', 'MONTH DD, YYYY' ), 'Mechanic' );


CREATE TABLE Role
(Employee_ID	NUMBER(11,0)	PRIMARY KEY REFERENCES
EMPLOYEE(Employee_ID),
ROLE	VARCHAR2(50)	NOT NULL,
Duties	VARCHAR2(200)
);

INSERT INTO Role VALUES ( 123456,'General Manager','Supervise daily business operation and Approve discount' );
INSERT INTO Role VALUES ( 12346,'Assistant Manager','Assist Manager to maintain daily tasks' );
INSERT INTO Role VALUES ( 12347,'Assistant Manager','Assist Manager to maintain daily tasks' );
INSERT INTO Role VALUES ( 12348,'Porter','Check cars back in at the end of the rental period, ensure the car is cleaned, serviced (if needed) and ready for the next renter' );
INSERT INTO Role VALUES ( 12349,'Porter','Check cars back in at the end of the rental period, ensure the car is cleaned, serviced (if needed) and ready for the next renter' );
INSERT INTO Role VALUES ( 12350,'FrontDesk','Handle reservations and rentals' ); INSERT INTO Role VALUES ( 12351,'FrontDesk','Handle reservations and rentals' ); INSERT INTO Role VALUES ( 12352,'FrontDesk','Handle reservations and rentals' ); INSERT INTO Role VALUES ( 12353,'FrontDesk','Handle reservations and rentals' );
INSERT INTO Role VALUES ( 12354,'Porter','Check cars back in at the end of the rental period, ensure the car is cleaned, serviced (if needed) and ready for the next renter' );
INSERT INTO Role VALUES ( 12355,'Porter','Check cars back in at the end of the rental period, ensure the car is cleaned, serviced (if needed) and ready for the next renter' );
INSERT INTO Role VALUES ( 12356,'Mechanic','Provides both routine maintenance and simple repairs' );
INSERT INTO Role VALUES ( 12357,'Mechanic','Provides both routine maintenance and simple repairs' );

CREATE TABLE Customer (Customer_ID NUMBER(11,0) NOT NULL, CustomerName VARCHAR2(25) NOT NULL, BirthDate DATE NOT NULL, Age INTEGER NOT NULL,
Driver_License VARCHAR2(25) NOT NULL, CreditCardNumber VARCHAR2(25) NOT NULL, CreditCardType VARCHAR2(30), Address VARCHAR2(30), City VARCHAR2(20), State CHAR(2), PostalCode VARCHAR2(9), Email VARCHAR2(30), Phone VARCHAR2(15) NOT
NULL, CONSTRAINT Customer_PK PRIMARY KEY (Customer_ID));

INSERT INTO CUSTOMER VALUES (101, 'Deepti Bidkar', TO_DATE( 'August 22, 1991', 'MONTH DD, YYYY' ),'29','DL92399D612', '56364482625631400', 'VISA', '123, Lincoln Way',
'Ames', 'IA', '50010', 'dbidkar@iastate.edu', '4014337006' );
 
INSERT INTO CUSTOMER VALUES (102, 'Jinfeng Chen', TO_DATE( 'September 22, 1994', 'MONTH DD, YYYY' ),'26','DL12369DL12', '56364489625631478', 'VISA', '515, Morrill Road',
'Ames', 'IA', '50010', 'jinfengc@iastate.edu', '5034337006' );
INSERT INTO CUSTOMER VALUES (103, 'Suruchi Sneha', TO_DATE( 'September 22, 1991', 'MONTH DD, YYYY' ),'29','DL12369D612', '56364489625631400', 'VISA', '300, Happy Home',
'Ames', 'IA', '50010', 'ssneha@iastate.edu', '5014337006' );
INSERT INTO CUSTOMER VALUES (104, 'Madhuri Poranki', TO_DATE( 'September 22, 1994', 'MONTH DD, YYYY' ),'26','DL12399D612', '56364482625631400', 'VISA', '125, Lincoln
Way', 'Ames', 'IA', '50010', 'mporanki@iastate.edu', '5014337006' );
INSERT INTO CUSTOMER VALUES (105, 'Sara Williams', TO_DATE( 'August 23, 1994', 'MONTH DD, YYYY' ),'26','DL92399D612', '56364482625631400', 'VISA', '100, Comedy Lane',
'Ames', 'IA', '50010', 'saraw@iastate.edu', '4014337006' );
INSERT INTO CUSTOMER VALUES (106, 'David Green', TO_DATE( 'May 22, 1991', 'MONTH DD, YYYY' ),'29','PL92399D612', '56364485625631400', 'VISA', '109, Campus Town', 'Ames',
'IA', '50010', 'dgreen@iastate.edu', '4014337090' );
INSERT INTO CUSTOMER VALUES (107, 'Rachel Zane', TO_DATE( 'January 22, 1990', 'MONTH DD, YYYY' ),'30','DL91099D612', '56364482625631409', 'VISA', '515, Stadium View
Street', 'Ames', 'IA', '50010', 'rzane@iastate.edu', '4017837410' );
INSERT INTO CUSTOMER VALUES (108, 'Ashley Smith', TO_DATE( 'February 28, 1994', 'MONTH DD, YYYY' ),'27','DL92399D685', '56364482625631890', 'VISA', '500, South 4th
Street', 'Ames', 'IA', '50010', 'asmith@iastate.edu', '7044337044' );
INSERT INTO CUSTOMER VALUES (109, 'John Watson', TO_DATE( 'March 22, 1994', 'MONTH DD, YYYY' ),'26','FK9239989D4', '40074482625631400', 'VISA', '096, Aspen', 'Ames',
'IA', '50010', 'jwatson@iastate.edu', '4628559674' );
INSERT INTO CUSTOMER VALUES (110, 'Mike Peterson', TO_DATE( 'June 18, 1994', 'MONTH DD, YYYY' ),'26','MN92399D562', '44364482625630089', 'VISA', '785, High Street',
'Ames', 'IA', '50010', 'mikep@iastate.edu', '5014337890' );
INSERT INTO CUSTOMER VALUES (111, 'Lucy Ray', TO_DATE( 'May 10, 1994', 'MONTH DD, YYYY' ),'26','LP92399F592', '44008982625634501', 'VISA', '196, Windsor Heights', 'Ames',
'IA', '50010', 'lray@iastate.edu', '5014338956' );
INSERT INTO CUSTOMER VALUES (112, 'Dishant Saha', TO_DATE( 'April 22, 1994', 'MONTH DD, YYYY' ),'27','RT02399D612', '44064482625631400', 'VISA', '015, Basil Deck', 'Ames', 'IA',
'50010', 'dsaha@iastate.edu', '4014337006' );
INSERT INTO CUSTOMER VALUES (113, 'Mohini Chandra', TO_DATE( 'May 02, 1994', 'MONTH DD, YYYY' ),'27','PK92399D612', '44124482625631963', 'VISA', '100, Comedy Lane',
'Ames', 'IA', '50010', 'mchandra@iastate.edu', '7964337006' );
INSERT INTO CUSTOMER VALUES (114, 'Yu Chen', TO_DATE( 'July 02, 1994', 'MONTH DD, YYYY' ),'26','RT92399D610', '96004482625638915', 'VISA', '891, University Town', 'Ames', 'IA',
'50010', 'ychen@iastate.edu', '6904337006' );
INSERT INTO CUSTOMER VALUES (115, 'Samual Black', TO_DATE( 'June 08, 1994', 'MONTH DD, YYYY' ),'26','BL92399M612', '40014482625631400', 'VISA', '012, Walnut Street',
'Ames', 'IA', '50010', 'samb@iastate.edu', '7094337847' );

CREATE TABLE Car (VIN VARCHAR2(17) NOT NULL, CarType VARCHAR2(25) NOT NULL,
Car_Name VARCHAR2(30), DailyRate Decimal(7,2), Passenger_Capicity Number(3), Storage_Capicity Number(3), Air_Condiction VARCHAR2(50), Automatic_Transmission VARCHAR2(50), CD_MP3_Player VARCHAR2(50), FM_Radio VARCHAR2(50), Availability VARCHAR2(50), Power_windows VARCHAR2(50), Power_door_lock VARCHAR2(50), Cruise_control VARCHAR(50), CONSTRAINT Car_PK PRIMARY KEY (VIN));

INSERT INTO CAR VALUES('PV3700038DU000451', 'SUV', 'Honda CRV',75, 5, 2, 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'NO');
 
INSERT INTO CAR VALUES('RK1800085DE009580', 'SUV','Toyota RAV4',75.00,5, 2, 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'NO');
INSERT INTO CAR VALUES('AB1000000LL000T11', 'Compact', 'Honda Civic',32.00, 5, 1, 'YES', 'YES', 'YES', 'YES', 'YES', 'NO', 'NO', 'NO');
INSERT INTO CAR VALUES('AB1000000LR000T21', 'Compact', 'Toyota Corolla', 32.00, 5, 1, 'YES', 'YES', 'YES', 'YES', 'YES', 'NO', 'NO', 'NO');
INSERT INTO CAR VALUES('ER1005600LR000T21', 'Compact', 'Honda Insight', 32.00, 5, 1, 'YES', 'YES', 'YES', 'YES', 'YES', 'NO', 'NO', 'NO');
INSERT INTO CAR VALUES('RG1009300KL000T34', 'Compact', 'Hyundai Elantra', 32.00, 5, 1, 'YES', 'YES', 'YES', 'YES', 'YES', 'NO', 'NO', 'NO');
INSERT INTO CAR VALUES('AC1007800LP000Y67', 'Compact', 'Kia Soul', 32.00, 5, 1, 'YES', 'YES', 'YES', 'YES', 'YES', 'NO', 'NO', 'NO');
INSERT INTO CAR VALUES('AV1000092HJ002100','Compact', 'Mazda3',32.00, 5, 1, 'YES', 'YES', 'YES', 'YES', 'YES', 'NO', 'NO', 'NO');
INSERT INTO CAR VALUES('HR1600044JK009012', 'Full', 'Buick LaCrosse',50.00,5, 2, 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'NO', 'YES');
INSERT INTO CAR VALUES('UL1000083FR006210', 'Full','Ford Taurus', 50.00, 5, 2, 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'NO', 'YES');
INSERT INTO CAR VALUES('HT3400090FJ006300', 'MidSize', 'Honda Accord', 40.00, 5, 1, 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'NO', 'NO');
INSERT INTO CAR VALUES('IV1500069LM002370', 'MidSize','Ford Fusion',40.00, 5, 1, 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'NO', 'NO');

CREATE TABLE Reservation (Reservation_ID NUMBER(11,0) NOT NULL, Reservation_Type VARCHAR2(30), Pickup_DateTime TIMESTAMP, Return_DateTime TIMESTAMP, VIN VARCHAR2(17), Customer_ID NUMBER(11,0), Employee_ID NUMBER(11,0), CONSTRAINT
Reservation_PK PRIMARY KEY (Reservation_ID ), CONSTRAINT Reservation_FK1 FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID), CONSTRAINT Reservation_FK2 FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID));
CONSTRAINT Reservation_FK3 FOREIGN KEY (VIN) REFERENCES Car(VIN));

INSERT INTO Reservation VALUES ( 1238, 'Pleasure', To_TIMESTAMP ('2017-01-02
10:00:00','yyyy-mm-dd hh24:mi:ss'), To_TIMESTAMP ('2017-01-04 10:00:00','yyyy-mm-dd hh24:mi:ss'), 'PV3700038DU000451',101,12350 );
INSERT INTO Reservation VALUES ( 1239,'Business', To_TIMESTAMP ('2017-01-05
12:00:00','yyyy-mm-dd hh24:mi:ss'), To_TIMESTAMP ('2017-01-10 12:00:00','yyyy-mm-dd hh24:mi:ss'), 'HT3400090FJ006300',102,12350 );
INSERT INTO Reservation VALUES ( 1240,'NA', To_TIMESTAMP ('2017-02-14 16:00:00','yyyy-
mm-dd hh24:mi:ss'), To_TIMESTAMP ('2017-02-15 12:00:00','yyyy-mm-dd hh24:mi:ss'), 'HT3400090FJ006300',103,12353 );
INSERT INTO Reservation VALUES ( 1241,'NA', To_TIMESTAMP ('2017-02-14 10:00:00','yyyy-
mm-dd hh24:mi:ss'), To_TIMESTAMP ('2017-02-15 10:00:00','yyyy-mm-dd hh24:mi:ss'), 'AB1000000LR000T21',104,12353 );
INSERT INTO Reservation VALUES ( 1242, 'Repair', To_TIMESTAMP ('2017-03-15
11:00:00','yyyy-mm-dd hh24:mi:ss'), To_TIMESTAMP ('2017-03-16 11:00:00','yyyy-mm-dd hh24:mi:ss'), 'AC1007800LP000Y67',105,12353 );
INSERT INTO Reservation VALUES ( 1243,'Pleasure', To_TIMESTAMP ('2017-02-20
 
14:00:00','yyyy-mm-dd hh24:mi:ss'), To_TIMESTAMP ('2017-02-27 10:00:00','yyyy-mm-dd hh24:mi:ss'), 'ER1005600LR000T21',106,12353 );
INSERT INTO Reservation VALUES ( 1244,'Pleasure', To_TIMESTAMP ('2017-04-02
12:00:00','yyyy-mm-dd hh24:mi:ss'), To_TIMESTAMP ('2017-04-04 11:00:00','yyyy-mm-dd hh24:mi:ss'), 'UL1000083FR006210',107,12351 );
INSERT INTO Reservation VALUES ( 1245,'Business', To_TIMESTAMP ('2017-04-01
09:30:00','yyyy-mm-dd hh24:mi:ss'), To_TIMESTAMP ('2017-04-10 12:00:00','yyyy-mm-dd hh24:mi:ss'), 'IV1500069LM002370',108,12352 );
INSERT INTO Reservation VALUES ( 1246,'NA', To_TIMESTAMP ('2017-02-14 12:00:00','yyyy-
mm-dd hh24:mi:ss'), To_TIMESTAMP ('2017-02-15 12:05:00','yyyy-mm-dd hh24:mi:ss'), 'RG1009300KL000T34',109,12351 );
INSERT INTO Reservation VALUES ( 1247,'NA', To_TIMESTAMP ('2017-03-20 16:00:00','yyyy-
mm-dd hh24:mi:ss'), To_TIMESTAMP ('2017-03-21 10:00:00','yyyy-mm-dd hh24:mi:ss'), 'IV1500069LM002370',110,12352 );

CREATE TABLE Contract (Contract_ID NUMBER(11,0) NOT NULL, Date_TimeIn TIMESTAMP, Date_TimeOut TIMESTAMP, Discount Decimal(7,2), IA_AutoRentExciseTax Decimal(7,2), Iowa_SalesTax Decimal(7,2), Rental_Total Decimal(7,2), Customer_ID NUMBER(11,0), Reservation_ID NUMBER(11,0), VIN VARCHAR2(17), CONSTRAINT
Contract_PK PRIMARY KEY (Contract_ID), CONSTRAINT Contract_FK1 FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID), CONSTRAINT Contract_FK2 FOREIGN KEY (Reservation_ID) REFERENCES Reservation(Reservation_ID), CONSTRAINT Contract_FK3 FOREIGN KEY (VIN) REFERENCES Car(VIN));

INSERT INTO Contract VALUES ( 0010, To_TIMESTAMP ('2017-01-04 10:01:00','yyyy-mm-dd
hh24:mi:ss'), To_TIMESTAMP ('2017-01-02 10:10:00','yyyy-mm-dd hh24:mi:ss'), 0.00,0.05,0.07,168.53,101,1238,'PV3700038DU000451' );
INSERT INTO Contract VALUES ( 0011, To_TIMESTAMP ('2017-01-10 12:01:00','yyyy-mm-dd
hh24:mi:ss'), To_TIMESTAMP ('2017-01-05 11:58:00','yyyy-mm-dd hh24:mi:ss'), 0.00,0.05,0.07,224.70,102,1239,'HT3400090FJ006300' );
INSERT INTO Contract VALUES ( 0012, To_TIMESTAMP ('2017-02-15 11:55:00','yyyy-mm-dd
hh24:mi:ss'), To_TIMESTAMP ('2017-02-14 15:50:00','yyyy-mm-dd hh24:mi:ss'), 0.00,0.05,0.07,44.94,103,1240,'HT3400090FJ006300' );
INSERT INTO Contract VALUES ( 0013, To_TIMESTAMP ('2017-02-15 10:05:00','yyyy-mm-dd
hh24:mi:ss'), To_TIMESTAMP ('2017-02-14 09:58:00','yyyy-mm-dd hh24:mi:ss'), 0.00,0.05,0.07,35.95,104,1241,'AB1000000LR000T21' );
INSERT INTO Contract VALUES ( 0014, To_TIMESTAMP ('2017-03-16 11:04:00','yyyy-mm-dd
hh24:mi:ss'), To_TIMESTAMP ('2017-03-15 11:03:00','yyyy-mm-dd hh24:mi:ss'), 0.00,0.05,0.07,35.95,105,1242,'AC1007800LP000Y67' );
INSERT INTO Contract VALUES ( 0015, To_TIMESTAMP ('2017-02-27 10:01:00','yyyy-mm-dd
hh24:mi:ss'), To_TIMESTAMP ('2017-02-20 14:01:00','yyyy-mm-dd hh24:mi:ss'), 0.10,0.05,0.07,226.50,106,1243,'ER1005600LR000T21' );
INSERT INTO Contract VALUES ( 0016, To_TIMESTAMP ('2017-04-04 11:01:00','yyyy-mm-dd
hh24:mi:ss'), To_TIMESTAMP ('2017-04-02 12:01:00','yyyy-mm-dd hh24:mi:ss'), 0.00,0.05,0.07,112.35,107,1244,'UL1000083FR006210' );
INSERT INTO Contract VALUES ( 0017, To_TIMESTAMP ('2017-04-10 12:01:00','yyyy-mm-dd
hh24:mi:ss'), To_TIMESTAMP ('2017-04-01 09:35:00','yyyy-mm-dd hh24:mi:ss'), 0.10,0.05,0.07,364.01,108,1245,'IV1500069LM002370' );
INSERT INTO Contract VALUES ( 0018, To_TIMESTAMP ('2017-02-15 12:04:00','yyyy-mm-dd
hh24:mi:ss'), To_TIMESTAMP ('2017-02-14 12:02:00','yyyy-mm-dd hh24:mi:ss'), 0.00,0.05,0.07,35.95,109,1246,'RG1009300KL000T34' );
INSERT INTO Contract VALUES ( 0019, To_TIMESTAMP ('2017-03-21 10:05:00','yyyy-mm-dd
hh24:mi:ss'), To_TIMESTAMP ('2017-03-20 16:08:00','yyyy-mm-dd hh24:mi:ss'), 0.00,0.05,0.07,44.94,110,1247,'IV1500069LM002370' );

CREATE TABLE Receipt (Receipt_ID NUMBER(11,0) NOT NULL, Vehicle_FinalCondiction VARCHAR2(50), Customer_ID NUMBER(11,0), Contract_ID NUMBER(11,0), Reservation_ID NUMBER(11,0), VIN VARCHAR2(17), CONSTRAINT Receipt_PK PRIMARY KEY
(Receipt_ID), CONSTRAINT Receipt_FK1 FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID), CONSTRAINT Receipt_FK2 FOREIGN KEY (Contract_ID ) REFERENCES Contract(Contract_ID ), CONSTRAINT Receipt_FK3 FOREIGN KEY (Reservation_ID) REFERENCES Reservation(Reservation_ID), CONSTRAINT Receipt_FK4 FOREIGN KEY (VIN) REFERENCES Car(VIN));
 

INSERT INTO Receipt VALUES ( 20145, 'Good',101,0010,1238,'PV3700038DU000451' ); INSERT INTO Receipt VALUES ( 20146,'Good',102,0011,1239,'HT3400090FJ006300' ); INSERT INTO Receipt VALUES ( 20147,'Good',103,0012,1240,'HT3400090FJ006300' ); INSERT INTO Receipt VALUES ( 20148,'Good',104,0013,1241,'AB1000000LR000T21' ); INSERT INTO Receipt VALUES ( 20149, 'Good',105,0014,1242,'AC1007800LP000Y67' ); INSERT INTO Receipt VALUES ( 20150,'Good',106,0015,1243,'ER1005600LR000T21' ); INSERT INTO Receipt VALUES ( 20151,'Good',107,0016,1244,'UL1000083FR006210' ); INSERT INTO Receipt VALUES ( 20152, 'Good',108,0017,1245,'IV1500069LM002370' ); INSERT INTO Receipt VALUES ( 20153,'Good',109,0018,1246,'RG1009300KL000T34' ); INSERT INTO Receipt VALUES ( 20154, 'Good',110,0019,1247,'IV1500069LM002370' );

