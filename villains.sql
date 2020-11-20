CREATE DATABASE disney;

CREATE USER 'villains'@'localhost' IDENTIFIED WITH mysql_native_password BY '123';

GRANT ALL ON disney.* TO 'villains'@'localhost';

USE disney;

CREATE TABLE villains (id INT auto_increment,
    name VARCHAR(255),
    movie VARCHAR(255),
    slug VARCHAR(255),
    createdAt DATETIME DEFAULT NOW(),
    updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
    deletedAt DATETIME,
    primary key(id)
);

INSERT INTO villains(name, movie, slug) Values('Captain Hook', 'Peter Pan', 'captain-hook');
INSERT INTO villains(name, movie, slug) Values('Cruella de Vil', 'One Hundred and One Dalmatians', 'cruella-de-vil');
INSERT INTO villains(name, movie, slug) Values('Gaston', 'Beauty and the Beast', 'gaston');
INSERT INTO villains(name, movie, slug) Values('Hades', 'Hercules', 'hades');
INSERT INTO villains(name, movie, slug) Values('Horned King', 'The Black Cauldron', 'horned-king');
INSERT INTO villains(name, movie, slug) Values('Jafar', 'Aladdin', 'jafar');
INSERT INTO villains(name, movie, slug) Values('Lady Tremaine', 'Cinderella', 'lady-tremaine');
INSERT INTO villains(name, movie, slug) Values('Madame Medusa', 'The Rescuers', 'madame-medusa');
INSERT INTO villains(name, movie, slug) Values('Madam Mim', 'The Sword in the Stone', 'madam-mim');
INSERT INTO villains(name, movie, slug) Values('Maleficent', 'Sleeping Beauty', 'maleficent');
INSERT INTO villains(name, movie, slug) Values('Prince John', 'Robin Hood', 'prince-john');
INSERT INTO villains(name, movie, slug) Values('Sir Hiss', 'Robin Hood', 'sir-hiss');
INSERT INTO villains(name, movie, slug) Values('Queen Grimhilde', 'Snow White and the Seven Dwarfs', 'queen-grimhilde');
INSERT INTO villains(name, movie, slug) Values('Queen of Hearts', 'Alice in Wonderland', 'queen-of-hearts');
INSERT INTO villains(name, movie, slug) Values('Scar', 'The Lion King', 'scar');
INSERT INTO villains(name, movie, slug) Values('Shan Yu', 'Mulan', 'shan-yu');
INSERT INTO villains(name, movie, slug) Values('Shere Khan', 'The Jungle Book', 'shere-khan');
INSERT INTO villains(name, movie, slug) Values('Ursula', 'The Little Mermaid', 'ursula');