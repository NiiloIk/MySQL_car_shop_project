use carshop;

-- Työntekijät kaupoittain
SELECT CONCAT(henkilo.first_name, " ", henkilo.last_name) AS "nimi",
    CONCAT(osoite.city, ", ", osoite.street )as "työpaikan osoite",
    henkilo.employee_id,
    henkilo.shop_id
FROM carshop.shop AS kauppa
	INNER JOIN carshop.employee AS henkilo ON kauppa.shop_id = henkilo.shop_id
    INNER JOIN carshop.address AS osoite ON kauppa.address_id = osoite.address_id
ORDER BY city, employee_id;


-- Haetaan autot, jotka ovat myynnissä sekä auton hinta ja kaupunki, jossa autot sijaitsevat.
SELECT 
    auto.car_id,
	CONCAT(auto.manufacturer, " ", auto.model) AS "auto",
    auto.list_price AS "price",
    sijainti.city
FROM carshop.car AS auto
	INNER JOIN carshop.shop AS kauppa ON auto.shop_id = kauppa.shop_id
    INNER JOIN carshop.address AS sijainti ON kauppa.address_id = sijainti.address_id
    WHERE auto.is_sold = 0
ORDER BY sijainti.city, auto, auto.list_price;


-- Haetaan myydyt autot. Niiden osto, ja myyntihinta sekä myyjä ja asiakas.
SELECT auto.car_id, CONCAT(auto.manufacturer, " ", auto.model) AS "auto", CONCAT(tyontekija.first_name, " ", tyontekija.last_name) AS "Myyjä",
	CONCAT(asiakas.first_name, " ", asiakas.last_name) AS "Asiakas", auto.buy_price, myynti.price_sold
FROM carshop.sales AS myynti
	INNER JOIN carshop.employee AS tyontekija ON tyontekija.employee_id = myynti.employee_id
    INNER JOIN carshop.car AS auto ON auto.car_id = myynti.car_id
    INNER JOIN carshop.customer AS asiakas ON asiakas.customer_id = myynti.customer_id
ORDER BY CONCAT(tyontekija.first_name, ", ", tyontekija.last_name), CONCAT(auto.manufacturer, " ", auto.model), price_sold;


-- Lasketaan työntekijöiden palkka. Näköjään osa työntekijöistä tekee ihan järkyttävän isoa palkkaa.
-- Haetaan samalla työntekijöiden provisiotaso, myytyjen autojen määrä sekä hinta.
SELECT CONCAT(tyontekija.first_name, " ", tyontekija.last_name) AS Myyjä, 
	(CASE 
		WHEN SUM(myynti.price_sold) IS NULL THEN tyontekija.base_salary_month
		ELSE (SUM(myynti.price_sold) * tyontekija.provision_rate * 0.01 + tyontekija.base_salary_month)
	END) AS palkka,
	tyontekija.provision_rate AS "provisio taso (%)", 
	COUNT(myynti.employee_id) AS "autoja myyty", 
	(CASE
		WHEN SUM(myynti.price_sold) IS NULL THEN 0
        ELSE SUM(myynti.price_sold)
	END) AS "myytyjen autojen hinta", 
    osoite.city
FROM carshop.employee AS tyontekija
	LEFT JOIN carshop.sales AS myynti ON tyontekija.employee_id = myynti.employee_id
    LEFT JOIN carshop.car AS auto ON auto.car_id = myynti.car_id
    LEFT JOIN carshop.customer AS asiakas ON asiakas.customer_id = myynti.customer_id
    INNER JOIN carshop.address AS osoite ON tyontekija.address_id = osoite.address_id
WHERE DATEDIFF(myynti.date, CURDATE()) < 30 -- tarkisetetaan viimeisen kuukauden ajalta.
GROUP BY tyontekija.employee_id
ORDER BY osoite.city, palkka DESC;


-- Haetaan liikevoitto kaupoittain. Huomaan, että autoja pitäisi myydä kalliimmalla eteenpäin, jotta yritys tuottaisi selvästi voittoa.
SELECT SUM(buy_price) FROM carshop.car;
SELECT 
    osoite.city as "Kaupunki",
	SUM(myynti.price_sold) - SUM(auto.buy_price) - SUM(
    CASE 
		WHEN myynti.price_sold IS NULL THEN tyontekija.base_salary_month
		ELSE (myynti.price_sold * tyontekija.provision_rate * 0.01 + tyontekija.base_salary_month)
	END) AS liikevoitto,
    SUM(auto.is_sold) AS "Autoja myyty",
    SUM(auto.is_sold = 0) AS "Autoja myynnissä",
    SUM(myynti.price_sold) AS "rahaa tehty autojen myynnillä",
    SUM(CASE 
		WHEN (myynti.price_sold) IS NULL THEN tyontekija.base_salary_month
		ELSE (myynti.price_sold * tyontekija.provision_rate * 0.01 + tyontekija.base_salary_month)
	END) AS "Työntekijöiden palkka (yht.)",
    SUM(auto.buy_price) AS "autojen ostohinta"
FROM carshop.car AS auto
	LEFT JOIN carshop.sales AS myynti ON myynti.car_id = auto.car_id
    LEFT JOIN carshop.employee AS tyontekija ON tyontekija.employee_id = myynti.employee_id
    INNER JOIN carshop.shop AS kauppa ON auto.shop_id = kauppa.shop_id
    INNER JOIN carshop.address AS osoite ON kauppa.address_id = osoite.address_id
GROUP BY osoite.address_id
ORDER BY liikevoitto DESC;


-- Uuden auton ostaminen. Sisältää uuden asiakkaan lisäämisen ja uuden auton lisäämisen
-- listätään osoite ja asiakas
INSERT INTO carshop.address (city, street) VALUES ('Turku', 'Katajatie 93');
SET @address_id = (SELECT address_id FROM carshop.address WHERE street = "Katajatie 93" AND city = "Turku" LIMIT 1);
INSERT INTO carshop.customer (first_name, last_name,  address_id)
        VALUES ("Timo", "Toivonen", @address_id);

-- lisätään auto
INSERT INTO carshop.car (manufacturer, model, manufacturing_year, distance_traveled, buy_price, list_price, is_sold, shop_id, description)
        VALUES ('Mercedes-Benz', 'S-Class', 2016, 138423, 26625, 36322, 0, 3, 'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.');

-- haetaan asiakkaan ja auton id ostoa varten
SET @customer_id = (SELECT customer_id FROM carshop.customer
        WHERE address_id = @address_id AND first_name = "Timo" AND last_name = "Toivonen" LIMIT 1);
SET @car_id = (SELECT car_id FROM carshop.car
        WHERE manufacturer = "Mercedes-Benz" AND model = "S-Class" AND buy_price = 26625 AND distance_traveled = 138423 AND shop_id = 3);
SET @price = (SELECT list_price FROM carshop.car WHERE car_id = @car_id LIMIT 1);

-- ostetaan auto
INSERT INTO carshop.sales (car_id, employee_id, customer_id, price_sold) VALUES (@car_id, 13, @customer_id, @price);
UPDATE carshop.car SET is_sold = 1 WHERE car_id = @car_id;