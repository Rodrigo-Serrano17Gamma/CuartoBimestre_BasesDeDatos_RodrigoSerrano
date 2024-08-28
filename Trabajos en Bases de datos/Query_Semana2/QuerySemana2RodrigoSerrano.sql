-- Crear nuestra base de datos (para comentarios, poner dos menos y dejar un espacio)
-- ejecuta en el rayito
CREATE DATABASE IF NOT EXISTS db_Usuario; -- db significa database y esto se usa oara verificar si eciste o no 

-- Usar la base de datos ya creada
USE db_Usuario;

-- Crear una tabla que nos permitirá registrar usuarios
CREATE TABLE IF NOT EXISTS tb_Usuario(
-- Añadiremos nuestro primer campo.
id_Usuario int auto_increment primary key, 
-- Este es el que identidica al usuario.

-- Añadiremos el campo del nombre.
nombreUsuario varchar(25) NOT NULL, 
-- Este tipo de variable almacena letras, símbolos y números Y el not null es que no permite vacios.

-- añadimos el campo del dpi
dpi varchar(13) NOT NULL,

-- Campo de la dirección
direccion varchar(30) NOT NULL,

-- Capo teléfono
telefono varchar(8) NOT NULL,

-- Campo de e-mail
correo_electronico varchar(50) NOT NULL UNIQUE, 
-- El "UNIQUE" se usa para que este dato sea único y no se repita con nada ni nadie

-- NOTA: Se usa la coma, porque  se agregan más parámetros dentro de la función
-- NOTA: Entre los parentesís se pone el máximo de caracteres

-- añadimos el campo del usuario
usuario varchar(15) NOT NULL UNIQUE,

-- añadimos el campo de la contraseña
pass varchar(20) NOT NULL,

-- Añadimos el campo de la fecha de registro
fecha_registro timestamp default current_timestamp -- EN EL ULTIMO CAMPO YA NO SE PONE NADA
);

-- Seleccionar todos los campos de la tabla
Select * From tb_Usuario; -- El * es usado para seleccionar todos los campos 

-- Registro de info
insert into tb_Usuario(nombreUsuario,dpi,direccion,telefono,correo_electronico,usuario,pass)
values('Rodrigo','12345678','Coban','12345678','rserranog06@gmail.com','rotser1736','1234'); -- Todos los campos que se van a insertar, tienen que ir dentro de apostrofes simples

select * from tb_Usuario;

insert into tb_Usuario(nombreUsuario,dpi,direccion,telefono,correo_electronico,usuario,pass)
values('Wilfredo','12345678','Coban','12345678','wilfac06@gmail.com','wilfac22','1234'); -- Todos los campos que se van a insertar, tienen que ir dentro de apostrofes simples

insert into tb_Usuario(nombreUsuario,dpi,direccion,telefono,correo_electronico,usuario,pass)
values('Mateo','12345678','Coban','12345678','mtt06@gmail.com','Mtt1779','1234'); -- Todos los campos que se van a insertar, tienen que ir dentro de apostrofes simples

select * from tb_Usuario;

-- Seleccionar solo el campo del id = 2
select * from tb_Usuario where id_Usuario = 2;

-- Seleccionar solo el campo del id = 3
select * from tb_Usuario where id_Usuario = 3;

-- Seleccionar solo el campo del id 2
select usuario,pass from tb_Usuario where id_Usuario =2;

-- Consulta para validar un usuario
select id_Usuario from tb_Usuario where usuario = 'wilfac22' and pass ='1234';

