DELETE FROM CasualAnimal WHERE name IN('Заблудший', 'Корабль');

CREATE TABLE HorseAndDonkey (id INT NOT NULL AUTO_INCREMENT , BurdenAnimal_id INT NOT NULL , PRIMARY KEY (id));
ALTER TABLE HorseAndDonkey ADD CONSTRAINT BurdenAnimal_HorseAndDonkey_FK_1 FOREIGN KEY (BurdenAnimal_id) REFERENCES BurdenAnimal(id);

INSERT INTO HorseAndDonkey(BurdenAnimal_id)
SELECT h.BurdenAnimal_id
FROM Horse AS h
UNION 
SELECT d.BurdenAnimal_id
FROM Donkey AS d;