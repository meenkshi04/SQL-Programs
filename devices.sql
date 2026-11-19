
-- 1. CREATE TABLE

CREATE TABLE devices (
    device_id INT,
    asset_tag VARCHAR(20),
    serial_number VARCHAR(50),
    device_name VARCHAR(120),
    device_type VARCHAR(20),
    manufacturer VARCHAR(80),
    model VARCHAR(100),
    purchase_date DATE,
    purchase_price DECIMAL(12,2),
    warranty_expiry DATE,
    last_maintenance_at DATETIME,
    maintenance_cost DECIMAL(10,2),
    device_status VARCHAR(20),
    created_at DATETIME
);

-- 2. DESCRIBE TABLE

DESC devices;

-- 3. SHOW CREATE TABLE

SHOW CREATE TABLE devices;


-- 4. DEV-I1 INSERT LAPTOP

INSERT INTO devices
VALUES
(1, 'AST-LAP-001', 'SN-LAP-260001', 'Developer Laptop',
'LAPTOP', 'Lenovo', 'ThinkPad E14', '2026-01-15',
78000.50, '2029-01-14', '2026-10-10 10:30:00',
1500.00, 'ASSIGNED', '2026-11-19 09:00:00');


-- 5. DEV-I2 INSERT DESKTOP AND TABLET

INSERT INTO devices
VALUES
(2, 'AST-DES-002', 'SN-DES-260002', 'Lab Desktop',
'DESKTOP', 'Dell', 'OptiPlex 7010', '2025-08-10',
62000.00, '2028-08-09', '2026-09-15 11:00:00',
900.50, 'AVAILABLE', '2026-11-19 09:15:00'),

(3, 'AST-TAB-003', 'SN-TAB-260003', 'Demo Tablet',
'TABLET', 'Samsung', 'Galaxy Tab S9', '2026-03-05',
68000.75, '2028-03-04', '2026-10-20 12:00:00',
500.00, 'AVAILABLE', '2026-11-19 09:30:00');


-- 6. DEV-I3 INSERT ROUTER AND PHONE

INSERT INTO devices
VALUES
(4, 'AST-RTR-004', 'SN-RTR-260004', 'Office Router',
'ROUTER', 'Cisco', 'RV340', '2024-06-20',
28000.00, '2027-06-19', '2026-11-01 09:15:00',
2500.75, 'REPAIR', '2026-11-19 09:45:00'),

(5, 'AST-PHN-005', 'SN-PHN-260005', 'Retired Phone',
'PHONE', 'Nokia', 'Test Model', '2020-01-10',
8000.00, '2021-01-09', '2025-12-10 14:00:00',
300.00, 'RETIRED', '2026-11-19 10:00:00');


-- 7. INSERT DECIMAL PURCHASE PRICE

INSERT INTO devices
VALUES
(6, 'AST-LAP-006', 'SN-LAP-260006', 'Office Laptop',
'LAPTOP', 'HP', 'ProBook 450', '2026-05-10',
85550.75, '2029-05-09', '2026-11-10 10:30:00',
1200.50, 'AVAILABLE', '2026-11-19 10:15:00');


-- 8. INSERT MAINTENANCE COST 0.00

INSERT INTO devices
VALUES
(7, 'AST-TAB-007', 'SN-TAB-260007', 'Training Tablet',
'TABLET', 'Samsung', 'Galaxy Tab A9', '2026-06-15',
18000.00, '2028-06-14', '2026-11-15 11:00:00',
0.00, 'AVAILABLE', '2026-11-19 10:30:00');


-- 9. DEV-U1 UPDATE DESKTOP STATUS

UPDATE devices
SET device_status = 'ASSIGNED'
WHERE asset_tag = 'AST-DES-002';


-- 10. ADD ASSIGNED_TO COLUMN

ALTER TABLE devices
ADD COLUMN assigned_to VARCHAR(100);


-- 11. ASSIGN DESKTOP TO ROHAN DAS

UPDATE devices
SET assigned_to = 'Rohan Das',
    device_status = 'ASSIGNED'
WHERE asset_tag = 'AST-DES-002';


-- 12. DEV-U2 UPDATE ROUTER STATUS

UPDATE devices
SET device_status = 'AVAILABLE'
WHERE asset_tag = 'AST-RTR-004';


-- 13. DEV-U3 EXTEND LAPTOP WARRANTY

UPDATE devices
SET warranty_expiry = '2030-01-14'
WHERE asset_tag = 'AST-LAP-001';


-- 14. DEV-U4 INCREASE TABLET PRICE BY 3%

UPDATE devices
SET purchase_price = purchase_price * 1.03
WHERE device_type = 'TABLET';


-- 15. DEV-U5 UPDATE MAINTENANCE DATETIME

UPDATE devices
SET last_maintenance_at = '2026-11-19 15:30:00'
WHERE asset_tag = 'AST-TAB-003';


-- 16. DEV-U6 UPDATE MAINTENANCE COST

UPDATE devices
SET maintenance_cost = 1750.50
WHERE asset_tag = 'AST-RTR-004';


-- 17. DISPLAY ALL RECORDS

SELECT * FROM devices;


-- 18. DISPLAY LAPTOP DEVICES

SELECT * FROM devices
WHERE device_type = 'LAPTOP';


-- 19. DISPLAY AVAILABLE DEVICES

SELECT * FROM devices
WHERE device_status = 'AVAILABLE';


-- 20. DISPLAY ASSIGNED DEVICES

SELECT * FROM devices
WHERE device_status = 'ASSIGNED';


-- 21. DISPLAY REPAIR DEVICES

SELECT * FROM devices
WHERE device_status = 'REPAIR';


-- 22. DISPLAY LENOVO DEVICES

SELECT * FROM devices
WHERE manufacturer = 'Lenovo';


-- 23. PURCHASE PRICE GREATER THAN 50000

SELECT * FROM devices
WHERE purchase_price > 50000;


-- 24. MAINTENANCE COST 0

SELECT * FROM devices
WHERE maintenance_cost = 0.00;


-- 25. DESCENDING PURCHASE PRICE

SELECT * FROM devices
ORDER BY purchase_price DESC;


-- 26. ASCENDING PURCHASE DATE

SELECT * FROM devices
ORDER BY purchase_date ASC;


-- 27. TOTAL DEVICES

SELECT COUNT(*) FROM devices;


-- 28. TOTAL PURCHASE PRICE

SELECT SUM(purchase_price) FROM devices;


-- 29. AVERAGE PURCHASE PRICE

SELECT AVG(purchase_price) FROM devices;


-- 30. MAXIMUM PURCHASE PRICE

SELECT MAX(purchase_price) FROM devices;


-- 31. MINIMUM PURCHASE PRICE

SELECT MIN(purchase_price) FROM devices;


-- 32. COUNT DEVICES BY STATUS

SELECT device_status, COUNT(*)
FROM devices
GROUP BY device_status;


-- 33. MAINTENANCE COST BY MANUFACTURER

SELECT manufacturer, SUM(maintenance_cost)
FROM devices
GROUP BY manufacturer;
