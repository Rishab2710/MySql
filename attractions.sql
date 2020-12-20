INSERT INTO attractions(id,name,type,description,opr_hours,admission_fee,location_id)
VALUES(1,'Museum of Natural History','Museum',
'This museum has the biggest mammals speciment collection bla bla bla...The end',
'Mon-Friday 10AM - 10PM   SAT 10AM-7PM   SUN 12PM - 6PM',23,1);

INSERT INTO attractions(type)
VALUES('Gallery'),('Shopping'),('Arenas');

SELECT * FROM attractions;