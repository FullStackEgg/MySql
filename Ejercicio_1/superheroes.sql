DROP DATABASE IF EXISTS superheroes;
CREATE DATABASE superheroes CHARACTER SET UTF8MB4;
USE superheroes;

CREATE TABLE creador (
id_creador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  nombre VARCHAR(20) NOT NULL
);


CREATE TABLE personajes (
  id_personaje INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_real VARCHAR(20) NOT NULL,
  personaje VARCHAR(20) NOT NULL,
  inteligencia INT(10) NOT NULL,
  fuerza VARCHAR(10) NOT NULL,
  velocidad INT(11) NOT NULL,
  poder INT(11) NOT NULL,
  aparicion INT(11) NOT NULL,
  ocupacion VARCHAR(30) NULL,
  id_creador INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_creador) REFERENCES creador(id_creador)
  );

# Usamos la bd superheroes
USE superheroes;

# Insertamos valores a la tabla creador
INSERT INTO creador (id_creador,nombre) VALUES(1, 'Marvel');
INSERT INTO creador (id_creador,nombre) VALUES(2, 'DC Comics');

SELECT * FROM creador; # Mostramos los valores de la tabla creador

# --------------------------------------------------------------
# Insertamos valores a la tabla personajes
INSERT INTO personajes (id_personaje, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador) VALUES
(1, 'Bruce Banner', 'Hulk', 160, '600mil', 75, 98, 1962, 'Fisico Nuclear', 1),
(2, 'Tony Stark', 'Iron Man', 170, '200mil', 70, 123, 1963, 'Inventor Industrial', 1),
(3, 'Thor Odinson', 'Thor', 145, 'infinta', 100, 235, 1962, 'Rey de Asgard', 1),
(4, 'Wanda Maximoff', 'Bruja Escarlata', 170, '100mil', 90, 345, 1964, 'Bruja', 1),
(5, 'Carol Danvers', 'Capitana Marvel', 157, '250mil', 85, 128, 1968, 'Oficial de Inteligencia', 1),
(6, 'Thanos', 'Thanos', 170, 'infinita', 40, 306, 1973, 'Titan Loco', 1),
(7, 'Peter Parker', 'Spiderman', 165, '25mil', 80, 74, 1962, 'Fotografo', 1),
(8, 'Steve Rogers', 'Capitan America', 145, '600', 45, 60, 1941, 'Oficial Federal', 1),
(9, 'Bobby Drake', 'Iceman', 140, '2mil', 64, 122, 1963, 'Contador', 1),
(10, 'Barry Allen', 'Flash', 160, '10mil', 120, 168, 1956, 'Forense', 2),
(11, 'Bruce Wayne', 'Batman', 170, '500', 32, 47, 1939, 'Hombre de negocios', 2),
(12, 'Clark Kent', 'Superman', 165, 'infinta', 120, 182, 1950, 'Reportero', 2),
(13, 'Diana Prince', 'Mujer Maravilla', 160, 'infinta', 95, 127, 1949, 'Princesa Guerrera', 2);

SELECT * FROM personajes; # Mostramos los valores de la Tabla personajes

# ----------------------------------------------------------------------------------------------------
# B) Modificamos en la tabla personajes el a??o de aparici??n del personaje Superman a 1938.
UPDATE Personajes 
	SET aparicion = 1938
	WHERE personaje = 'superman';
    
SELECT * FROM Personajes; # Mostramos los valores de la Tabla personajes  

#------------------------------------------------------------------------------------------------------
# C) Eliminamos el registro que contiene al personaje Flash
DELETE FROM personajes
	WHERE personaje= 'Flash';
    
SELECT * FROM Personajes; # Mostramos los valores de la Tabla personajes  

#------------------------------------------------------------------------------------------------------
# D) Eliminar la Base De Datos
DROP DATABASE superheroes;