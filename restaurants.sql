
-- 1. CREATE TABLE

CREATE TABLE restaurants (
    restaurant_id INT,
    restaurant_code VARCHAR(12),
    restaurant_name VARCHAR(120),
    cuisine_type VARCHAR(80),
    city VARCHAR(80),
    phone VARCHAR(15),
    seating_capacity INT,
    average_cost_for_two DECIMAL(10,2),
    rating DECIMAL(3,2),
    opening_time TIME,
    closing_time TIME,
    opened_date DATE,
    last_review_at DATETIME,
    opening_status VARCHAR(25)
);


-- 2. DESCRIBE TABLE

DESC restaurants;


-- 3. SHOW CREATE TABLE

SHOW CREATE TABLE restaurants;


-- 4. RES-I1 INSERT FIRST RESTAURANT

INSERT INTO restaurants
(restaurant_id, restaurant_code, restaurant_name,
cuisine_type, city, phone, seating_capacity,
average_cost_for_two, rating, opening_time,
closing_time, opened_date, last_review_at, opening_status)
VALUES
(1, 'RES-BLR-001', 'Spice Courtyard',
'Indian', 'Bengaluru', '9876601001', 80,
1200.50, 4.40, '11:00:00', '23:00:00',
'2018-06-15', '2026-11-19 10:00:00', 'OPEN');


-- 5. RES-I2 INSERT NEXT TWO RESTAURANTS

INSERT INTO restaurants
VALUES
(2, 'RES-CHE-002', 'Green Banana Leaf',
'South Indian', 'Chennai', '9876601002', 60,
700.75, 4.60, '08:00:00', '22:00:00',
'2020-02-10', '2026-11-19 10:15:00', 'OPEN'),

(3, 'RES-MUM-003', 'Coastal Plate',
'Seafood', 'Mumbai', '9876601003', 100,
1800.00, 4.20, '12:00:00', '23:30:00',
'2017-09-21', '2026-11-19 10:30:00', 'OPEN');


-- 6. RES-I3 INSERT HYDERABAD RESTAURANT

INSERT INTO restaurants
(restaurant_id, restaurant_code, restaurant_name,
cuisine_type, city, phone, seating_capacity,
average_cost_for_two, rating, opening_time,
closing_time, opened_date, last_review_at, opening_status)
VALUES
(4, 'RES-HYD-004', 'Urban Bowl',
'Fusion', 'Hyderabad', '9876601004', 45,
950.50, 4.00, '10:00:00', '22:30:00',
'2026-01-12', '2026-11-19 10:45:00', 'OPEN');


-- 7. RES-I4 INSERT PUNE RESTAURANT

INSERT INTO restaurants
VALUES
(5, 'RES-PUN-005', 'The Coffee Table',
'Cafe', 'Pune', '9876601005', 35,
450.25, 4.30, '07:00:00', '21:00:00',
'2022-05-01', '2026-11-19 11:00:00', 'OPEN');


-- 8. INSERT ANOTHER RESTAURANT WITH RATING 3.85

INSERT INTO restaurants
VALUES
(6, 'RES-HYD-006', 'Royal Kitchen',
'Indian', 'Hyderabad', '9876601006', 55,
850.75, 3.85, '09:00:00', '22:00:00',
'2024-05-10', '2026-11-19 11:15:00', 'OPEN');


-- 9. RES-U1 CHANGE BLR RATING TO 4.55

UPDATE restaurants
SET rating = 4.55
WHERE restaurant_code = 'RES-BLR-001';


-- 10. RES-U2 INCREASE MUMBAI COST BY 10%

UPDATE restaurants
SET average_cost_for_two = average_cost_for_two * 1.10
WHERE city = 'Mumbai';


-- 11. RES-U3 CHANGE HYDERABAD RATING TO 4.25

UPDATE restaurants
SET rating = 4.25
WHERE restaurant_code = 'RES-HYD-004';


-- 12. RES-U4 CHANGE OPENING TIME OF OPEN RESTAURANTS

UPDATE restaurants
SET opening_time = '10:00:00'
WHERE opening_status = 'OPEN';


-- 13. RES-U5 UPDATE LAST REVIEW DATETIME

UPDATE restaurants
SET last_review_at = '2026-11-19 15:30:00'
WHERE restaurant_code = 'RES-CHE-002';


-- 14. RES-U6 INCREASE SEATING CAPACITY BY 10

UPDATE restaurants
SET seating_capacity = seating_capacity + 10
WHERE seating_capacity < 60;


-- 15. DISPLAY ALL RESTAURANTS

SELECT * FROM restaurants;


-- 16. DISPLAY RESTAURANTS IN HYDERABAD

SELECT * FROM restaurants
WHERE city = 'Hyderabad';


-- 17. DISPLAY INDIAN CUISINE

SELECT * FROM restaurants
WHERE cuisine_type = 'Indian';


-- 18. DISPLAY RESTAURANTS WITH RATING ABOVE 4.00

SELECT * FROM restaurants
WHERE rating > 4.00;


-- 19. DISPLAY RESTAURANTS WITH COST ABOVE 1000

SELECT * FROM restaurants
WHERE average_cost_for_two > 1000;


-- 20. DISPLAY OPEN RESTAURANTS

SELECT * FROM restaurants
WHERE opening_status = 'OPEN';


-- 21. DISPLAY RESTAURANTS WITH SEATING CAPACITY ABOVE 60

SELECT * FROM restaurants
WHERE seating_capacity > 60;


-- 22. DISPLAY RESTAURANTS IN ASCENDING RATING

SELECT * FROM restaurants
ORDER BY rating ASC;


-- 23. DISPLAY RESTAURANTS IN DESCENDING RATING

SELECT * FROM restaurants
ORDER BY rating DESC;


-- 24. DISPLAY RESTAURANTS BY COST

SELECT * FROM restaurants
ORDER BY average_cost_for_two DESC;


-- 25. COUNT TOTAL RESTAURANTS

SELECT COUNT(*) FROM restaurants;


-- 26. TOTAL AVERAGE COST

SELECT SUM(average_cost_for_two)
FROM restaurants;


-- 27. AVERAGE RESTAURANT RATING

SELECT AVG(rating)
FROM restaurants;


-- 28. MAXIMUM RESTAURANT RATING

SELECT MAX(rating)
FROM restaurants;


-- 29. MINIMUM RESTAURANT RATING

SELECT MIN(rating)
FROM restaurants;


-- 30. COUNT RESTAURANTS BY CITY

SELECT city, COUNT(*)
FROM restaurants
GROUP BY city;


-- 31. COUNT RESTAURANTS BY CUISINE

SELECT cuisine_type, COUNT(*)
FROM restaurants
GROUP BY cuisine_type;


-- 32. AVERAGE RATING BY CITY

SELECT city, AVG(rating)
FROM restaurants
GROUP BY city;


-- 33. TOTAL SEATING CAPACITY BY CITY

SELECT city, SUM(seating_capacity)
FROM restaurants
GROUP BY city;
