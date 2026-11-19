CREATE TABLE shipments (
    shipment_id INT,
    tracking_number VARCHAR(20),
    sender_name VARCHAR(120),
    recipient_name VARCHAR(120),
    destination_city VARCHAR(80),
    package_weight_kg DECIMAL(8,3),
    shipping_cost DECIMAL(10,2),
    shipped_date DATE,
    shipped_time TIME,
    expected_delivery_date DATE,
    delivered_at DATETIME,
    shipment_status VARCHAR(20),
    priority VARCHAR(10),
    created_at DATETIME
);
INSERT INTO shipments
(shipment_id, tracking_number, sender_name, recipient_name,
destination_city, package_weight_kg, shipping_cost,
shipped_date, shipped_time, expected_delivery_date,
delivered_at, shipment_status, priority, created_at)
VALUES
(1, 'TRK26000001', 'Asha Stores', 'Nitin Rao', 'Chennai',
2.500, 180.50, '2026-11-10', '09:30:00', '2026-11-14',
NULL, 'IN_TRANSIT', 'NORMAL', '2026-11-19 09:00:00'),

(2, 'TRK26000002', 'Nova Tech', 'Isha Sen', 'Bengaluru',
0.800, 250.75, '2026-11-11', '11:15:00', '2026-11-13',
'2026-11-13 15:30:00', 'DELIVERED', 'EXPRESS', '2026-11-19 09:15:00'),

(3, 'TRK26000003', 'Book Nest', 'Omar Ali', 'Kochi',
4.200, 220.00, '2026-11-12', '14:00:00', '2026-11-17',
NULL, 'CREATED', 'NORMAL', '2026-11-19 09:30:00'),

(4, 'TRK26000004', 'Green Foods', 'Meera Das', 'Hyderabad',
12.000, 550.50, '2026-11-12', '08:45:00', '2026-11-15',
NULL, 'IN_TRANSIT', 'EXPRESS', '2026-11-19 09:45:00'),

(5, 'TRK26000005', 'Test Sender', 'Test Receiver', 'Pune',
1.000, 100.25, '2026-11-13', '16:30:00', '2026-11-16',
NULL, 'CANCELLED', 'NORMAL', '2026-11-19 10:00:00');
SELECT * FROM shipments;

SELECT * FROM shipments;

SELECT shipment_id, tracking_number, sender_name, recipient_name
FROM shipments;

SELECT * FROM shipments
WHERE shipment_status = 'DELIVERED';

SELECT * FROM shipments
WHERE shipment_status = 'IN_TRANSIT';
SELECT * FROM shipments
WHERE shipment_status = 'CANCELLED';

SELECT * FROM shipments
WHERE shipment_id = 1;
SELECT * FROM shipments
WHERE destination_city = 'Hyderabad';
SELECT * FROM shipments
WHERE priority = 'EXPRESS';
SELECT * FROM shipments
WHERE shipping_cost > 200;
UPDATE shipments
SET recipient_name = 'Ravi Kumar'
WHERE shipment_id = 1;
UPDATE shipments
SET shipping_cost = 300
WHERE shipment_id = 2;
UPDATE shipments
SET shipment_status = 'DELIVERED'
WHERE shipment_id = 1;
DELETE FROM shipments
WHERE shipment_id = 5;
DELETE FROM shipments
WHERE shipment_status = 'CANCELLED';



