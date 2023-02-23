CREATE TABLE AllAnimals (id INT NOT NULL AUTO_INCREMENT , name TEXT NOT NULL , birthDay DATE NOT NULL , PRIMARY KEY (id));
 
INSERT INTO AllAnimals(name, birthDay)
SELECT DISTINCT animals.name, animals.birthDay
FROM 
(SELECT ca.name, ca.birthDay
FROM CasualAnimal AS ca
LEFT JOIN Pet AS p ON ca.id = p.CasualAnimal_id
LEFT JOIN Dog AS d ON p.id = d.Pet_id
LEFT JOIN Cat AS c ON p.id = c.Pet_id
LEFT JOIN Hamster AS h ON p.id = h.Pet_id

UNION

SELECT ca.name, ca.birthDay
FROM CasualAnimal AS ca
LEFT JOIN BurdenAnimal AS b ON ca.id = b.CasualAnimal_id
LEFT JOIN Horse AS ho ON b.id = ho.BurdenAnimal_id
LEFT JOIN Donkey AS don ON b.id = don.BurdenAnimal_id
LEFT JOIN Camel AS cam ON b.id = cam.BurdenAnimal_id) AS animals