INSERT INTO db_functions.dealership
(id, name, location, date_established)
VALUES(0, "CocoMelon", "Edmonton", "2013-05-15"),
(0, "PawPatrol", "Airdrie", "2000-10-01"),
(0, "Kyle", "Beaumount", "2010-12-12");

INSERT INTO db_functions.for_sale_cars
(id, dealership_id, make, model, `year`)
VALUES(0, 1, "Toyota", "Highlander", "2012"),
(0, 2, "Mazda", "CX5", "2019"),
(0, 3, "Nissan", "Rouge", "2020"),
(0, 2, "Lexuz", "RX450", "2023"),
(0, 1, "Mazda", "CX90", "2024"),
(0, 3, "Toyota", "Rav4", "2015"),
(0, 1, "Mazda", "CX50", "2023"),
(0, 2, "Nissan", "Juke", "2020"),
(0, 3, "Mazda", "CX9", "2014"),
(0, 1, "Mazda", "CX5", "2019");

SELECT make, model, `year`
FROM for_sale_cars fsc 
ORDER BY `year` DESC

SELECT name, location
FROM dealership d  
ORDER BY date_established asc 
limit 1;

select d.name, d.location, fsc.make, fsc.model, fsc.`year` 
from dealership d 
inner join for_sale_cars fsc 
on d.id = fsc.dealership_id
where fsc.`year` > 2020
order by fsc.`year` asc;

select COUNT(fsc.`year`) 
from for_sale_cars fsc  
where fsc.`year` > 2019;

select COUNT(fsc.id) 
from dealership d 
inner join for_sale_cars fsc 
on d.id = fsc.dealership_id
where d.id = 1;