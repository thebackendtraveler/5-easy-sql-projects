/*Script 1: M1L4_crdb.sql*/
/*
Create a demonstration database using a bicycle shop
that builds custom bicycles as an example.
As a first iteration, we start with customers who place orders.
As a training convenience, we will forget that orders actually need
much more information than what is in this first script.
*/
DROP DATABASE BicycleShop;
CREATE DATABASE BicycleShop;
USE BicycleShop
/*
Customers:
We assume that we only deal with individuals and not companies.
Not all customers are happy with sharing their addresses - especially if they collect
the bicycle themselves.
*/
CREATE TABLE IF NOT EXISTS Customers
(
cust_idINT AUTO_INCREMENT PRIMARY KEY,
surnameVARCHAR(20) NOT NULL,
initialsVARCHAR(5),
salutationVARCHAR(8),
telnumberVARCHAR(15) NOT NULL, # max length of 15 as per ITU E.164
addressVARCHAR(150)# for now, an address is just characters
);
/*
Orders:
A customer can (obviously) create many orders, but an order MUST belong to
a specific customer.
*/
CREATE TABLE IF NOT EXISTS Orders
(
order_idINT AUTO_INCREMENT PRIMARY KEY,
order_dateDATE NOT NULL,
delivery_date DATE,# cannot be NOT NULL as not known when the order placed
customer INT NOT NULL,
total_priceDECIMAL(8,2) NOT NULL,
    CONSTRAINT fk_customer
    FOREIGN KEY (customer)
        REFERENCES Customers(cust_id)
        ON DELETE RESTRICT
ON UPDATE RESTRICT
);
/*
Check what happened
*/
SHOW DATABASES;
SHOW TABLES;