INSERT INTO address(id,address,city_id,last_update)
VALUES(1,'235 Dynosaur Road',1,CURDATE());

INSERT INTO address(id,address,city_id,last_update)
VALUES(2,'231 my street',1,CURDATE());

INSERT INTO address(address,city_id,last_update)
VALUES('231 Bathurst Street',1,CURDATE());


SELECT * FROM address;