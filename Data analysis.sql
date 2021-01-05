/*  List the reservations made for after February 15, 2017*/
Select CustomerName,Pickup_DateTime, VIN From Reservation,Customer
Where Customer.Customer_ID = Reservation.Customer_ID AND PICKUP_DATETIME > ='15-FEB-17 12.00.00.000000 AM'

/*	Find the total number of no-shows, that is, customers who made reservations, but no rental contracts were created by the end of the time period mentioned in Phase 1*/
Select count(Rental_Total)As NoShow
 
From Contract
Where Rental_Total = 0.00
/*	List the names and cell phone numbers of all customers who made reservations for SUVs*/
Select CustomerName,Phone,CarType From Customer,Car,Reservation
Where Customer.Customer_ID = Reservation.Customer_ID AND Reservation.VIN = Car.VIN AND CarType='SUV'
/*	List the names of the customers and the total amount of each rental for all rentals of a compact car since January 1st, 2017*/
select Cu.CUSTOMERNAME, C.RENTAL_TOTAL from Customer Cu INNER JOIN contract C on Cu.Customer_ID =C.Customer_ID
INNER JOIN Car CA on CA.VIN = C.VIN WHERE CA.CARTYPE = 'Compact'
and C.DATE_TIMEIN >= '01-JAN-17 12.00.00.000000 AM';
/* Provide the total number of cars by category (compact, mid-sized, etc.) held by Ames Rental Car*/
select CARTYPE, count(*) as Total_Number_of_Cars from CAR GROUP BY CARTYPE
/*	Provide the number of rental cars (total) that are available to rent, as of March 3rd, 2017*/
select count(*) as Total_Car_Available from contract WHERE DATE_TIMEOUT
> = '	03-MAR-17 12.00.00.000000 AM'

/* Provide the total revenue earned in rentals for the company from the period of February 1st, 2017-February 28th, 2017*/
select SUM(C.RENTAL_TOTAL) AS TOTAL_REVENUE from Contract C where C.DATE_TIMEIN >= '01-FEB-17 12.00.00.000000 AM' and C.DATE_TIMEOUT <= '28-FEB-17 12.00.00.000000 AM';
/* Which customer brought in the highest amount of revenue between January 1st, 2017 and April 30th, 2017?*/
SELECT FROM (
select CUSTOMERNAME,SUM(RENTAL_TOTAL) as Revenue from customer CU INNER JOIN contract CO on CU.CUSTOMER_ID = CO.CUSTOMER_ID WHERE DATE_TIMEIN >= '01-JAN-17 12.00.00.000000 AM' and DATE_TIMEOUT <= '30-APR-17 12.00.00.000000 AM'
GROUP BY CUSTOMERNAME ORDER by SUM(RENTAL_TOTAL) DESC)
WHERE rownum = 1;

/*	Which employee has been with the company the longest?*/
SELECT EMPLOYEE_id, NAME, DATEHIRED FROM EMPLOYEE e WHERE DATEHIRED IN
(SELECT min(DATEHIRED) FROM EMPLOYEE
);
/*10.	Which customer has rented the most cars from the company as measured in number of days?*/
SELECT c.CUSTOMER_ID, CUSTOMERNAME,c.DAYS from (SELECT SUM(ceil((CAST(DATE_TIMEIN AS DATE) -
CAST(DATE_TIMEOUT AS DATE))) ) days, customer_id FROM CONTRACT
GROUP BY CUSTOMER_ID
ORDER BY days desc) c INNER JOIN Customer ON
Customer.customer_id = c.customer_id where ROWNUM = 1




