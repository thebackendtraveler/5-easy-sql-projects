CREATE DATABASE population;
USE population;

CREATE TABLE population_change(
    period DATE,
    status CHAR(1),
    increase INT,
    migration INT,
    pop_change INT,
    percent DECIMAL(3,2),
    population INTEGER);