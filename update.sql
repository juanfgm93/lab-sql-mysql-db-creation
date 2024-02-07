SELECT * FROM lab1_db.customers;

# first we add the new column "emails":
ALTER TABLE lab1_db.customers 
ADD COLUMN email VARCHAR(60);

# now, we enter the new values:
SET SQL_SAFE_UPDATES = 0;

UPDATE lab1_db.customers
SET email = 
	CASE
		WHEN id = 1 THEN 'ppicasso@gmail.com'
        WHEN id = 2 THEN 'lincoln@us.gov'
		WHEN id = 3 THEN '	hello@napoleon.me'
	END;

# delete duplicated row in cars table:
SELECT * FROM lab1_db.cars;

DELETE FROM lab1_db.cars
WHERE vin = 'DAM41UDN3CHU2WVF6' and id = 5;