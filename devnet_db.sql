CREATE DATABASE devnet_acad;

USE devnet_acad;


CREATE TABLE category(
	category_id INT(5) PRIMARY KEY AUTO_INCREMENT,
	category_name varchar(100)
);


CREATE TABLE provider(
    provider_id INT(7) AUTO_INCREMENT PRIMARY KEY,
    provider_name VARCHAR(20)
);



CREATE TABLE product(
	product_id INT(6) PRIMARY KEY AUTO_INCREMENT,
	product_name VARCHAR(100) NOT NULL,
	price DOUBLE(7,2),
	quantity INT(4) DEFAULT 1,
	start_date DATE,
	category_id INT(5),
	provider_id INT(7),
	CONSTRAINT fk_prod_cat FOREIGN KEY (category_id) REFERENCES category(category_id),
	// FOREIGN KEY (provider_id) REFERENCES provider(provider_id)
);


CREATE TABLE client(
	client_id int(5) AUTO_INCREMENT PRIMARY KEY,
	first_name varchar(50),
	last_name varchar(50),
	county varchar(100),
	phone_number varchar(10)
);


CREATE TABLE orders(
	order_id int(7) AUTO_INCREMENT PRIMARY KEY,
	client_id int(5),
	order_date date,
	FOREIGN KEY (client_id) REFERENCES client(client_id)
);


CREATE TABLE invoice(
    id_prod_order INT(7) AUTO_INCREMENT PRIMARY KEY,
    order_id INT(7),
    product_id INT(6),
    quantity INT(8),
    FOREIGN KEY (product_id) REFERENCES product (product_id),
    FOREIGN KEY (order_id) REFERENCES orders (order_id)
);


INSERT INTO provider SET provider_name = 'Cisco';
INSERT INTO provider SET provider_name = 'Juniper';
INSERT INTO provider SET provider_name = 'Python Institute';


INSERT INTO category SET category_name = 'Networking';
INSERT INTO category SET category_name = 'Programming';
INSERT INTO category SET category_name = 'Devnet';


INSERT INTO product VALUES
(null, 'CCNA 1', 400, 10,'2023-01-14',1, 1),
(null, 'CCNA 2', 400, 7,'2023-03-16',1, 1),
(null, 'PCAP 2', 500, 15,'2023-04-01',2, 3),
(null, 'PCAT', 600, 10,'2023-06-02',2, 3),
(null, 'CCNA 3', 500, 8,'2023-03-27',1, 1),
(null, 'DEVASC', 700, 14,'2023-04-01',3, 1),
(null, 'JavaScript', 499.99, 5,'2023-02-17',2, 3),
(null, 'DEVCORE', 800, 3,'2023-01-21',3, 1),
(null, 'CCNP ENCOR', 1000, 31,'2023-06-02',1, 1),
(null, 'CCNP ENARSI', 1200, 8,'2023-06-23',1, 1),
(null, 'PCPP 1', 1000, 9,'2023-04-01',2, 3),
(null, 'CCNP ENAUTO', 999.99, 21,'2023-05-12',3, 1),
(null, 'CCIE ENT', 2999.99, 2,'2023-06-02',1, 1),
(null, 'DEVNET Expert', 4000, 10,'2023-01-14',3, 1),
(null, 'JNCIA-Junos', 400, 7,'2023-03-16',1, 2),
(null, 'PCPP 2', 700, 15,'2023-04-01',2, 3),
(null, 'PCAT 2', 900, 10,'2023-06-02',2, 3),
(null, 'JNCIA-DC', 500, 8,'2023-03-27',1, 2),
(null, 'JNCIA-Devops', 700, 14,'2023-04-01',3, 2),
(null, 'JavaScript 2', 599.99, 5,'2023-02-17',2, 3),
(null, 'JNCIS-Devops', 800, 3,'2023-01-21',3, 2),
(null, 'JNCIS-ENT', 1000, 31,'2023-06-02',1, 2),
(null, 'JNCIP-ENT', 1200, 8,'2023-06-23',1, 2),
(null, 'PCPP 1', 1000, 9,'2023-04-01',2, 3),
(null, 'JNCIS-Cloud', 999.99, 21,'2023-05-12',3, 2),
(null, 'JNCIE-ENT', 2999.99, 2,'2023-06-02',1, 2),
(null, 'JNCIS-Devops', 800, 3,'2023-01-21',3, 2),
(null, 'JNCIS-SP', 1000, 31,'2023-06-02',1, 2),
(null, 'JNCIP-SP', 1200, 8,'2023-06-23',1, 2),
(null, 'JNCIP-Devops', 1000, 9,'2023-04-01',2, 2),
(null, 'JNCIS-Cloud', 999.99, 21,'2023-05-12',3, 2),
(null, 'JNCIE-SP', 2999.99, 2,'2023-06-02',1, 2);


INSERT INTO client (last_name, first_name, county, phone_number) VALUES
('Ionescu','Maria','Bucuresti','0721112233'),
('Costea','Ionut','Cluj','0745010203'),
('Aioanei','Adela','Iasi','0744115501'),
('Stefanescu','Mircea','Bucuresti','0731123456'),
('Georgescu','Adriana','Bucuresti','0722112311'),
('Stanescu','Maria','Bucuresti','0212331515'),
('Ionescu','Maria','Brasov','0745090908'),
('Stefan','Eduard','Brasov','0767987123'),
('Toma','Alina','Arad','0768919801'),
('Ciobotaru','Mircea','Sibiu','0768900123'),
('Constantinescu','Amalia','Bucuresti','0311234341'),
('Manolescu','Ioana','Cluj','0720110017'),
('Teodorescu','Maria','Sibiu','0751123321');


INSERT INTO orders VALUES
(null, 1, '2023-06-02'),
(null, 2, '2023-07-19'),
(null, 1, '2023-07-02'),
(null, 3, '2023-06-29'),
(null, 3, '2023-07-25'),
(null, 7, '2023-07-12'),
(null, 11, '2023-07-01'),
(null, 8, '2023-07-21'),
(null, 6, '2023-07-02'),
(null, 5, '2023-06-12'),
(null, 5, '2023-07-10'),
(null, 10, '2023-07-03'),
(null, 4, '2023-07-23'),
(null, 1, '2022-01-23'),
(null, 8, '2022-01-15'),
(null, 5, '2023-12-19'),
(null, 2, '2023-12-21'),
(null, 7, '2022-02-27'),
(null, 3, '2022-03-03'),
(null, 3, '2015-03-03'),
(null, 4, '2022-03-01'),
(null, 4, '2016-03-01'),
(null, 2, '2022-02-12');
select * from orders where month(order_date)=12;

select * from orders where month(order_date)=MONTH(NOW());


INSERT INTO invoice (order_id, product_id, quantity) VALUES
(1, 3, 3),
(1, 7, 1),
(2, 1, 1),
(3, 3, 1),
(4, 9, 4),
(5, 7, 1),
(5, 8, 1),
(5, 2, 2),
(6, 6, 1),
(7, 1, 2),
(7, 2, 1),
(8, 8, 2),
(9, 5, 3),
(10, 4, 2),
(10, 12, 1),
(11, 13, 1),
(12, 7, 5),
(13, 3, 2),
(13, 1, 1),
(13, 9, 1),
(13, 8, 1),
(14, 1, 1),
(15, 1, 1),
(16, 6, 2),
(17, 3, 8),
(18, 5, 3),
(18, 3, 2),
(19, 8, 1),
(20, 6, 2),
(20, 12, 2),
(21, 11, 1);


ALTER TABLE provider RENAME TO providers;
ALTER TABLE providers RENAME TO provider;

ALTER TABLE provider ADD provider_location VARCHAR(20) DEFAULT "Bucharest";
ALTER TABLE provider DROP provider_location;
ALTER TABLE provider ADD provider_location VARCHAR(20) DEFAULT "Cluj";
ALTER TABLE product MODIFY product_name VARCHAR(30) NOT NULL;
ALTER TABLE provider CHANGE provider_name provider_name VARCHAR(20) NOT NULL;
ALTER TABLE product ADD CONSTRAINT provider_id FOREIGN KEY (provider_id) REFERENCES provider(provider_id)


SELECT * from product WHERE provider_id = 1;
UPDATE product SET price = price + 0.1 * price WHERE provider_id = 1;
UPDATE provider SET provider_location = "Dublin" WHERE provider_name = "Python Institute";


DELETE from product WHERE provider_name = "PCAT 2";
DELETE from orders WHERE YEAR(order_date) < 2020;


/* SELECTS */
SELECT * from product WHERE category_id = 2;
SELECT * from client WHERE last_name LIKE "%escu";
SELECT * from product ORDER BY price DESC LIMIT 1;
SELECT * from product ORDER BY price ASC LIMIT 1;



/* FUNCTIONS */
SELECT MAX(price) from product;
SELECT MIN(price) from product;
SELECT * from product WHERE MONTH(start_date) in (6,7,8);
SELECT CONCAT(first_name, " ", last_name) as full_name from client;
SELECT AVG(price) from product;
select avg(price) from product where category_id=2;
select round(avg(price),2) from product where category_id=2;



/* JOINS */
/* get the client and order details */
SELECT c.last_name, c.county, c.phone_number, o.order_id
from client c
INNER JOIN orders o
WHERE c.client_id = o.client_id and YEAR(o.order_date) = 2022;

/* get the product and filter based on category_id */
SELECT cat.category_name, p.product_name
FROM product as p
JOIN category as cat
ON p.category_id = cat.category_id
WHERE cat.category_id = 2;

/* get the client order and based on it, the invoice */
SELECT c.last_name, c.county, c.phone_number, o.order_id, o.order_date, i.product_id
from client c
JOIN orders o USING(client_id)
JOIN invoice i USING(order_id);

/* from the invoice, get the product based on the product_id */
/* from the product, get the category and filter the ones from networking */
SELECT i.id_prod_order, p.product_name, i.quantity, c.category_name
from invoice i
JOIN product p
ON p.product_id = i.product_id
JOIN category c
ON p.category_id = c.category_id WHERE c.category_name = "Networking";

/* from the invoice, get the client and provider from the same county */
SELECT i.id_prod_order, c.last_name, c.county, p.provider_location from invoice i
JOIN orders o
ON i.order_id = o.order_id
JOIN client c
ON o.client_id = c.client_id
JOIN product prod
ON i.product_id = prod.product_id
JOIN provider p
ON prod.provider_id = p.provider_id
WHERE c.county = "Cluj";





/* SUB QUERIES */
/* most expensive product bought in the current month */
SELECT product_name, price from product
WHERE provider_id IN (
SELECT prod.product_id from orders o
JOIN invoice i
USING(order_id)
JOIN product prod
USING(product_id) WHERE MONTH(o.order_date) = 7) ORDER BY price DESC LIMIT 1; /* month(now())*/

/* provider of the products ordered in July */
SELECT provider_name from provider
WHERE provider_id IN (
SELECT prod.provider_id from orders o
JOIN invoice i
USING(order_id)
JOIN product prod
USING(product_id) WHERE YEAR(o.order_date) = 2022);

/* ordered products ordered DESC by price*/
SELECT * from product WHERE product_id IN(
SELECT product_id from invoice) ORDER BY price DESC;





/* VIEWS */
/* clients from bucharest */
SELECT * from client WHERE county = 'Bucuresti';
CREATE VIEW bucharest_clients AS SELECT * from client WHERE county = 'Bucuresti';

/* current month invoice */
/* SELECT * from orders WHERE MONTH(order_date) = MONTH(NOW()); */
SELECT order_id from orders WHERE MONTH(order_date) = 7;
CREATE VIEW monthly_invoice AS SELECT * from invoice WHERE order_id IN (SELECT order_id from orders WHERE MONTH(order_date) = MONTH(NOW()));

/* latest_five_invoices */
SELECT order_id from orders ORDER BY order_date DESC LIMIT 3;
CREATE VIEW latest_five_invoices AS SELECT * from invoice WHERE order_id IN (SELECT order_id from orders ORDER BY order_date DESC) LIMIT 3;


select * from client;
select * from bucharest_clients;
INSERT INTO bucharest_clients (last_name, first_name, county, phone_number) VALUES
('Mircea','Maria','Bucuresti','0721115555');

select * from client;
select * from bucharest_clients;

UPDATE client SET county = "Iasi" WHERE client_id = 1;
SELECT * from client WHERE client_id = 9;
DELETE from client WHERE client_id = 9;

select * from client;
select * from bucharest_clients;


/* INDEX AND UNIQUE INDEX */
CREATE INDEX course_name ON product(product_name);
CREATE INDEX client_county ON client(county);
CREATE UNIQUE INDEX unique_number ON client(phone_number);
DROP INDEX course_name ON product;


