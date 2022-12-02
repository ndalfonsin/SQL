/*
Que es una base de datos? 

Es cualquier cosa que agrupe informacion y que esta tenga sentido, por ej: 
-lista de super/tareas
-lista de alumnos
-lista de cuentas de ig

Lo importante es que esta informacion este relacionada, por ejemplo usuarios con tweets, nombres con numeros de telefono, etc

Para acceder a los datos dentro de una base de datos se necesita una "Relational dataBase Management system" software para gestionar nuestra base de datos
por ej: 
-MySQL
-Postgres
-MariaDB
-Oracle
-Intormix
Estos softwares se encargan de la seguridad, el import y export de datos, gestion de base de datos. 
Se conectan con los lenguajes de programacion

Para poder realizar operaciones con la base de datos:
CRUD---
    Create
    Read
    Update
    Delete

se realiza por medio de CONSULTAS ("PETICION")

Hay dos tipos de software para bases de datos:
1-los que implementan SQL: se guarda la informacion en tablas y columnas
2-los que no implementan NO-SQL: se pueden almacenar en un formato JASON, BSON, etc

Las TABLAS son similares a las hojas de calculo. 

            COLUMNA
 ____________________________
 |  ID  |  NOMBRE  |  EDAD  |
 |      |juan      |20      |   REGISTRO 
 |______|__________|________|

El ID es un identificador unico generado automaticamente para cada dato dentro de la base de datos y es autoincremental

Existen dos tipós de tablas, por ejemplo si quisieramos asignar productos y cantidades a una tabla pero existen mas de un administrador
esta tabla seria la 1---->n . De modo que cada administrador va a tener asignado un id y este se agregara en una columna de la base de datos
De este modo solo el administrador que creo el registro puede modificarlo o eliminarlo

 _____________________________________________
 |  id  |  PRODUCTO  |  CANTIDAD  | id_USER  |
 |   1  |Iphone      |500         |1         |
 |      |            |            |1         |
 |      |            |            |1         |
 | 150  |Ipad        |1000        |2         |
 |______|____________|____________|__________|

Ahora por ejemplo tenemos 2 tablas diferentes, una llamada deportes y otra alumnos; en donde un alumno puede estar inscripto en mas de un deporte. 
Lo que se hace es convinar estas dos tablas en una donde aparezcan los id de los alumnos y el id del deporte correspondiente. 

RELACION DE n----->n
  _____________________________________
  |  id  |  Alumno_id  |  Deporte_id  |
  |      |     1       |     1        |
  |      |     1       |     2        |
  |      |     2       |     1        |
  |______|_____________|______________|

Las columnas con el nombre id: "Primary key"
Pero si convinamos dos tablas el nombre del id: "Foreign key"

#######################################################################################################################################################
*/
--Crear base de datos
CREATE database holamundo2;
--Mostrar base de datos
SHOW databases;
--Usar base de datos
use holamundo2;

--Crear tabla
CREATE TABLE animales (
	id int,
    tipo varchar(255),
    estado varchar(255),
    primary key (id)
    
);

--Insertar valores en una tabla
INSERT INTO animales(tipo, estado) VALUES ('Chanchito', 'Feliz');
--Modificar valores en una tabla (SOLO SE PUEDE CON ID)
ALTER TABLE animales MODIFY COLUMN id int auto_increment;

INSERT INTO animales(tipo, estado) VALUES ('OVEJITA', 'triste');

--Mostrar como se creo la tabla
SHOW CREATE TABLE animales; 

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT, --not null para que no pueda ser nulo y AUTO_INCREMENT para que se incremente su valor 
  `tipo` varchar(255) DEFAULT NULL, --DEFAULT NULL para que el valor por defecto sea nulo y no sea necesario insertar un valor
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
/*soy un comentario*/);

SELECT * FROM animales; --Mostrar todas los registros de la tabla
SELECT * FROM animales WHERE id = 1; --mostrar solo los registros con id 1
SELECT * FROM animales WHERE estado = 'Feliz' AND tipo = 'Chanchito'; --Mostrar registro con multiples condiciones

INSERT INTO animales(tipo, estado) VALUES ('Nico' , 'triste');


UPDATE animales SET estado = 'feliz' WHERE id = 3;

--Eliminar registros (SOLO SE PUEDE CON ID)
DELETE from animales WHERE id = 1;

"""