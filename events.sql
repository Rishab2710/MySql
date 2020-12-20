INSERT INTO events(id,name,type,description,opr_hours,start_date,end_date,admission_fee,location_id)
VALUES( '1',"Dinosaur Exhibition",'Science',
'This exhibition is coming from the museum of Natural History in Lomdon,
UK and it has the most recent discovery of the oldest dinosaur speciment'
,"MONDAY-FRIDAY 10AM-10PM",'2013-09-01','2013-11-30','13',1);

INSERT INTO events(type)
VALUES('Art');

INSERT INTO events(type)
VALUES('Sport');

INSERT INTO events(type)
VALUES('Family');

SELECT * FROM events;
