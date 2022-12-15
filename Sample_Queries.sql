/* Select by name from table */
SELECT *
FROM PERSON
WHERE Full_name = 'Shreyash Wasnik';

/*Group by Full name and order by Full name in decending */
SELECT Full_name
FROM person
GROUP BY Full_name
ORDER BY Full_name DESC;

CREATE INDEX Count
ON PERSON (Full_name);

ALTER TABLE person
DROP INDEX Count;

/*Having Condition */
SELECT Full_name, Address
FROM person
GROUP BY Full_name, Address
HAVING (Full_name) = 'Shreyash Wasnik'
ORDER BY Full_name DESC;

/*Between*/
SELECT * FROM Participated
WHERE Damage_amount BETWEEN 5000 AND 20000;

/*Where IN*/
SELECT * FROM person
WHERE Address IN ('Jagrut Nagar, Nagpur', 'Jai Mata Nagar, Dighori', 'Itwari, Nagpur');

/* WHERE NOT IN */
SELECT * FROM person
WHERE Address NOT IN ('Jagrut Nagar, Nagpur', 'Jai Mata Nagar, Dighori', 'Itwari, Nagpur');

/*LIKE USer for finding name with starting letter*/
SELECT * FROM person
WHERE Full_name LIKE 's%';


/*NOT LIKE Used for ignoring name with the given starting letter*/
SELECT * FROM person
WHERE Full_name NOT Like 's%';

/*Alias*/
SELECT Full_name AS name, Driver_id AS ID
FROM person;


select Damage_amount
from participated
limit 5;

/*Case for Damage amount analysis*/
SELECT Report_no,Damage_amount,
CASE
    WHEN Damage_amount > 8000 THEN 'The damage amount is greater than 8000'
    WHEN Damage_amount = 8000 THEN 'The damage amount is 8000'
    ELSE 'The damage amount is under 8000'
END
FROM participated;

/*Update location and date*/
UPDATE accident
SET Location = 'Ambazari, Nagpur', Date= '02/12/22'
WHERE Report_no = 'A12536987';





/*Deletion of tata indica model from the table*/
DELETE FROM car WHERE Model='TATA Indica';
SELECT * FROM CAR




DROP TABLE car;



RENAME car To new_car;    


select * from car


TRUNCATE TABLE accident;
select * from car


RENAME car To new_car;    


ALTER TABLE car
RENAME TO new_car;



ALTER TABLE car
drop column year;
select * from car


/*to change coloum name*/
ALTER TABLE new_car


RENAME COLUMN Model TO New_Model;
select * from new_car

ALTER TABLE new_car


MODIFY COLUMN New_Model character(40);


SELECT COUNT(License)
FROM new_car
WHERE year > 2001;



SELECT MIN(year)
FROM ncar
WHERE year > 2009;


SELECT MAX(year)
FROM new_car
WHERE year < 2015;



SELECT AVG(Damage_amount)
FROM participated;



SELECT SUM(Damage_amount)
FROM participated;



/*inner joint*/
SELECT owns.Driver_id,owns.License,participated.Report_no
from owns
inner join participated
on owns.Driver_id = participated.Driver_id
where License = 'MH-49-P-8396';


/*outer joint*/
 

SELECT owns.Driver_id,owns.License,participated.Report_no
from owns
left join participated
on owns.Driver_id = participated.Driver_id;

SELECT owns.Driver_id,owns.License,participated.Report_no
from owns
right join participated
on owns.Driver_id = participated.Driver_id;

SELECT owns.Driver_id,owns.License,participated.Report_no
from owns
left outer join participated
on owns.Driver_id = participated.Driver_id;

SELECT owns.Driver_id,owns.License,participated.Report_no
from owns
right outer join participated
on owns.Driver_id = participated.Driver_id;

 select *
 from participated
 natural join owns;
 
 select *
 from person
 where Full_name = 'Shreyash Wasnik' or  Driver_id = 'G30921561';
 
  select *
 from person
 where address = '101 Meritline drive' and  Driver_id = 'G30921561';
 
 
SELECT *
FROM participated
WHERE Damage_amount > '8000';


Select * from participated
Where Damage_amount BETWEEN 5000 AND 10000;

SELECT * FROM car  
UNION  
SELECT * FROM accident;  


SELECT Driver_id FROM participated  
UNION  
SELECT Driver_id FROM owns;  

SELECT * FROM participated  
UNION  ALL
SELECT * FROM accident;  

  






