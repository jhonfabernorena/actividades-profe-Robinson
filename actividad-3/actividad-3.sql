show DATABASES;
use bsauq8cqhq4gsg5ra7xd

SELECT nombres,apellidos,edad,genero from users where genero = "M" AND edad > 20 AND edad <30

/* como saber cual es la persona con menor edad */

SELECT nombres,edad FROM users ORDER BY edad ASC  LIMIT 1

SELECT nombres,MIN(edad) from users

/* averiguar cuantos usuarios hay */

SELECT COUNT(id) FROM users

/* traer los 5 primeros usuarios */

SELECT * FROM users ORDER BY id ASC LIMIT 5

/* traer los 10 ultimos usuarios */

SELECT * FROM users ORDER BY id DESC LIMIT 10

/* listar los usuarios con un correo que termine en .net */

SELECT * FROM users WHERE correo LIKE '%.net'

/* listar usuarios que no vivan en colombia */

SELECT * FROM users WHERE pais NOT LIKE "colombia"



/* listar usuarios que no vivan en ecuador y panama */ 

select * from users where pais not LIKE "ecuador" and pais NOT like "panama"

/* cuantos (numeros) usuarios son de colombia y les gusta el rock */

select COUNT(*) from users where pais like "colombia" and musica like "%rock%"

/* cambiar el genero musical de todos los usaurios de metal a carranga*/

update users set musica = "carranga" where musica like "%metal%"

/* listar los hombres qeu sean colombianos que les guste la carranga y sean de colombia y tengan entre 10 y 20 años */

select * from users where genero = "H" and pais like "colombia" and musica like "%carranga%" and edad between 10 and 20

/* actualizar los usuarios que su edad sea 99 que su nuevo genero musical sea la carranga */

update users set musica = "carranga" WHERE edad = 99

/* listar todos los usuarios que su nombre inicie con a o A con lower*/

select * from users where lower(nombres) like "a%" 

/* listar todos los usuarios que su apellido finalice con z o Z con lower */

select * from users where lower(apellidos) like "%z" 

/* actualizar usuarios que tengan 50 años de edad su nuevo genero musical sea NULL */

update users set musica = "NULL" where edad = 50

/* listar todos los usuarios que se genero musical sea NULL */

ALTER TABLE users MODIFY musica VARCHAR(50) NULL

SELECT * FROM users WHERE edad = 50


/*  cual es el resultado de la suma de todas las edades de la base de datos */

SELECT SUM(edad) FROM users

/* cuantos usuarios tenemos registrados de ecuador */

select count(*) FROM users WHERE pais LIKE "ecuador"

/* cuantos usuarios son de colombia y les gusta el vallenato */

SELECT count(*) from users where pais like "colombia" AND musica like "vallenato%"

/* traer la base de datos actualizada */

SELECT * FROM users









