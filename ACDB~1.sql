SELECT * FROM customers;

FROM Customers 
SELECT last_name , first_name;

Select pack_id, speed, monthly_payment from packages;

SELECT strt_date, monthly_payment
FROM   packages; 

SeleCT last_NAME , fiRST_NamE , FROM customers;

Select customer_id, first_name, last_name, main_phone_num, secondary_phone_num, pack_id from Customers;

Select first_name, last_name, join_date, monthly_discount, monthly_discount*(1.2), monthly_discount*(0.8)  
from Customers;

Select pack_id, speed, strt_date, monthly_payment, monthly_payment*(12) "YearlyPayment" 
from packages;

Select first_name||' '||last_name "Full_Name", main_phone_num||', '||secondary_phone_num "Contact_Details"  
from Customers;

Select Distinct City from Customers;

Select Distinct State from Customers;

Select Distinct City, state from Customers;

Select last_name ||' '|| state "Customer_and_state" from customers;

Select first_name "FN", last_name "LN", monthly_discount "DC", city||' '||street "FULL_ADDRESS" 
from Customers;

Select Distinct monthly_discount from customers;

Select distinct pack_id from customers;


