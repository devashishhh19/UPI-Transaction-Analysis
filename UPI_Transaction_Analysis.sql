CREATE DATABASE upi_analysis;
USE upi_analysis;

CREATE TABLE transactions (
    Transaction_ID VARCHAR(50),
    Timestamp DATETIME,
    Sender_Name VARCHAR(100),
    Sender_UPI_ID VARCHAR(100),
    Receiver_Name VARCHAR(100),
    Receiver_UPI_ID VARCHAR(100),
    Amount_INR DECIMAL(10,2),
    Status VARCHAR(20)
);
select * from transactions

-- 1. How many transactions are recorded in the dataset?
select count(*) as Total_Transaction
from transactions;

-- 2. What is the total money value of all transactions?
select sum(Amount_INR) as Total_Money_Value
from transactions;

-- 3. What is the average amount transferred per transaction?
select avg(Amount_INR) as Average_Amount_Transferred
from transactions;

--4. What is the highest amount transferred in a single transaction?
select max(Amount_INR) as Highest_Transaction
from transactions;

--5. What is the lowest amount transferred in a single transaction?
select min(Amount_INR) as Lowest_Transaction
from transactions;

-- 6. How many transactions were successful and how many failed?
select status, count(*) as Transaction_Count
from transactions
group by status;

-- 7. What is the total amount involved in successful transactions?
select sum(Amount_INR) as Successful_Transaction_Amount
from transactions
where status='SUCCESS';

-- 8. What is the total amount associated with failed transactions?
select sum(Amount_INR) as Failed_Transaction_Amount
from transactions
where status='FAILED';

-- 9. What is the average amount of a successful transaction?
select avg(Amount_INR) as Average_Successful_Amount
from transactions
where status='SUCCESS';

-- 10. Which five senders transferred the highest total amount?
select top 5 Sender_Name,sum(Amount_INR) as Highest_Sender_Amount
from transactions
group by Sender_Name
order by Highest_Sender_Amount desc;

-- 11. Which five receivers received the highest total amount?
select top 5 Receiver_Name, sum(Amount_INR) as Highest_Receiver_Amount
from transactions
group by Receiver_Name
order by Highest_Receiver_Amount desc;

-- 12. Which senders have transferred more than ₹50,000 in total?
select Sender_Name, sum(Amount_INR) as Total_Amount
from transactions
group by Sender_Name
having sum(Amount_INR) > 50000
order by Total_Amount desc

-- 13. How many transactions has each sender made?
select Sender_Name, count(*) as Sender_Transaction_Count
from transactions
group by Sender_Name
order by Sender_Transaction_Count desc

-- 14. How many transactions has each receiver received?
select Receiver_Name, count(*) as Receiver_Transaction_Count
from transactions
group by Receiver_Name
order by Receiver_Transaction_Count desc

-- 15. What is the largest successful transaction recorded?
select top 1 Transaction_ID, Sender_Name, Receiver_Name, Amount_INR
from transactions
where status='SUCCESS'
order by Amount_INR desc

-- 16. Which three senders transferred the highest total amount through successful transactions?
select top 3 Sender_Name, sum(Amount_INR) as Highest_Total_Amount
from transactions
where Status = 'SUCCESS'
group by Sender_Name
order by Highest_Total_Amount desc

-- 17. How many transactions were made in each month?
select year(Timestamp) as Year, month(Timestamp) as Month, count(*) as Transaction_Count
from transactions
group by year(Timestamp), month(Timestamp)
order by Year, Month;

-- 18. What was the total transaction value for each month?
select year(Timestamp) as Year, month(Timestamp) as Month, sum(Amount_INR) as Total_Transaction_Value
from transactions
group by year(Timestamp), month(Timestamp)
order by Year, Month;

-- 19. Which transactions have an amount higher than the overall average transaction value?
select Transaction_ID, Sender_Name, Receiver_Name, Amount_INR
from transactions
where Amount_INR > (select avg(Amount_INR) from transactions)
order by Amount_INR desc

-- 20.Which senders have the highest number of failed transactions?
select Sender_Name, count(*) as Failed_Transactions
from transactions
where Status = 'FAILED'
group by Sender_Name
order by Failed_Transactions desc





