CREATE TABLE ROL (_ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT NOT NULL);
CREATE TABLE SERVICIO (_ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT NOT NULL, DESCRIPCION TEXT NOT NULL, OBSERVACIONES TEXT, PRECIO INTEGER NOT NULL, PUNTAJE INTEGER NOT NULL, ID_TIPO INTEGER NOT NULL);
CREATE TABLE TIPO_SERVICIO (_ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT NOT NULL);
CREATE TABLE UBICACION (_ID INTEGER PRIMARY KEY AUTOINCREMENT, LATITUD TEXT NOT NULL, LONGITUD TEXT NOT NULL, DIRECCION TEXT NOT NULL);
CREATE TABLE USUARIO (_ID INTEGER PRIMARY KEY AUTOINCREMENT, USERNAME TEXT NOT NULL, PASS TEXT NOT NULL, NOMBRE TEXT NOT NULL, CELULAR TEXT NOT NULL, DNI TEXT NOT NULL, IMAGEN TEXT, ID_ROL INTEGER NOT NULL, ID_SERVICIO INTEGER, ID_UBICACION INTEGER);
CREATE TABLE PEDIDO (_ID INTEGER PRIMARY KEY AUTOINCREMENT, ID_USUARIO INTEGER NOT NULL, ID_PRESTADOR INTEGER NOT NULL, FECHA TEXT NOT NULL, ID_SERVICIO INTEGER NOT NULL, ID_UBICACION INTEGER NOT NULL);
INSERT INTO ROL (_ID,NOMBRE) VALUES (0,'Admin');
INSERT INTO ROL (_ID,NOMBRE) VALUES (1,'Usuario');
INSERT INTO ROL (_ID,NOMBRE) VALUES (2,'Prestador');
INSERT INTO TIPO_SERVICIO (_ID,NOMBRE) VALUES (1,'Emergencias Médicas');
INSERT INTO TIPO_SERVICIO (_ID,NOMBRE) VALUES (2,'Servicio de Grúa');
INSERT INTO SERVICIO (_ID,NOMBRE,DESCRIPCION,OBSERVACIONES,PRECIO,PUNTAJE,ID_TIPO) VALUES (3,'Grúa para Autos','Autos, Camionetas...','Muchas observaciones.','600','8',2);
INSERT INTO SERVICIO (_ID,NOMBRE,DESCRIPCION,OBSERVACIONES,PRECIO,PUNTAJE,ID_TIPO) VALUES (4,'Médico a domicilio','Inyecciones, presión sanguínea','Atendemos por obra social ...','250','7',1);
INSERT INTO SERVICIO (_ID,NOMBRE,DESCRIPCION,OBSERVACIONES,PRECIO,PUNTAJE,ID_TIPO) VALUES (5,'Grúa para Motos','Sólo para motos...','Ninguna.','300','9',2);
INSERT INTO SERVICIO (_ID,NOMBRE,DESCRIPCION,OBSERVACIONES,PRECIO,PUNTAJE,ID_TIPO) VALUES (6,'Grúas y Auxilios','Autos, Camionetas...','Servicio autorizado por la Municipalidad de Santa Fe (?).','500','9',2);
INSERT INTO SERVICIO (_ID,NOMBRE,DESCRIPCION,OBSERVACIONES,PRECIO,PUNTAJE,ID_TIPO) VALUES (7,'Grúa para Autos','Autos...','Muchas observaciones.','700','7',2);
INSERT INTO SERVICIO (_ID,NOMBRE,DESCRIPCION,OBSERVACIONES,PRECIO,PUNTAJE,ID_TIPO) VALUES (8,'Médico a domicilio','Médicos a domicilio (presión, inyecciones, revisión médica, etc.)','Atendemos con todas las obras sociales...','350','8',1);
INSERT INTO UBICACION (_ID,LATITUD,LONGITUD,DIRECCION) VALUES (0,'-31.63','-60.7','Rivadavia 500, Santa Fe');
INSERT INTO UBICACION (_ID,LATITUD,LONGITUD,DIRECCION) VALUES (1,'-31.6426','-60.7068','Rivadavia 600, Santa Fe');
INSERT INTO UBICACION (_ID,LATITUD,LONGITUD,DIRECCION) VALUES (2,'-31.6424','-60.688','Rivadavia 700, Santa Fe');
INSERT INTO UBICACION (_ID,LATITUD,LONGITUD,DIRECCION) VALUES (3,'-31.6247','-60.691','Rivadavia 800, Santa Fe');
INSERT INTO UBICACION (_ID,LATITUD,LONGITUD,DIRECCION) VALUES (4,'-31.6214','-60.6814','Rivadavia 900, Santa Fe');
INSERT INTO UBICACION (_ID,LATITUD,LONGITUD,DIRECCION) VALUES (5,'-31.6167','-60.6757','Belgrano 500, Santa Fe');
INSERT INTO UBICACION (_ID,LATITUD,LONGITUD,DIRECCION) VALUES (6,'-31.6267','-60.6857','Belgrano 700, Santa Fe');
INSERT INTO UBICACION (_ID,LATITUD,LONGITUD,DIRECCION) VALUES (7,'-31.6197','-60.6797','Belgrano 900, Santa Fe');
INSERT INTO UBICACION (_ID,LATITUD,LONGITUD,DIRECCION) VALUES (8,'-31.6367','-60.7','Belgrano 100, Santa Fe');
INSERT INTO USUARIO (_ID,USERNAME,PASS,NOMBRE,CELULAR,DNI,IMAGEN,ID_ROL,ID_UBICACION) VALUES (0,'sacamedelapuroo@gmail.com','figuelucho','Figueroa - Gambino','-','-','-',0,0);
INSERT INTO USUARIO (_ID,USERNAME,PASS,NOMBRE,CELULAR,DNI,IMAGEN,ID_ROL,ID_UBICACION) VALUES (1,'lucho@gmail.com','lucho','Luciano Gambino','+543434657957','36000000','-',1,1);
INSERT INTO USUARIO (_ID,USERNAME,PASS,NOMBRE,CELULAR,DNI,IMAGEN,ID_ROL,ID_UBICACION) VALUES (2,'figue@gmail.com','figue','Martín Figueroa','+543454430409','38000000','-',1,2);
INSERT INTO USUARIO (_ID,USERNAME,PASS,NOMBRE,CELULAR,DNI,IMAGEN,ID_ROL,ID_SERVICIO,ID_UBICACION) VALUES (3,'prestador1@gmail.com','prestador1','Grúa Express Paraná','+543421535565','30000000','imagen',2,3,3);
INSERT INTO USUARIO (_ID,USERNAME,PASS,NOMBRE,CELULAR,DNI,IMAGEN,ID_ROL,ID_SERVICIO,ID_UBICACION) VALUES (4,'prestador2@gmail.com','prestador2','Emergencias Médicas Santa Fe','+543424533','25000000','imagen',2,4,4);
INSERT INTO USUARIO (_ID,USERNAME,PASS,NOMBRE,CELULAR,DNI,IMAGEN,ID_ROL,ID_SERVICIO,ID_UBICACION) VALUES (5,'prestador3@gmail.com','prestador3','Grúa Express Paraná','+543421407325','30000000','imagen',2,5,5);
INSERT INTO USUARIO (_ID,USERNAME,PASS,NOMBRE,CELULAR,DNI,IMAGEN,ID_ROL,ID_SERVICIO,ID_UBICACION) VALUES (6,'prestador4@gmail.com','prestador4','Grúas Santa Fe','+543429876513','32000000','imagen',2,6,6);
INSERT INTO USUARIO (_ID,USERNAME,PASS,NOMBRE,CELULAR,DNI,IMAGEN,ID_ROL,ID_SERVICIO,ID_UBICACION) VALUES (7,'prestador5@gmail.com','prestador5','RapiGrúa','+543424653561','34000000','imagen',2,7,7);
INSERT INTO USUARIO (_ID,USERNAME,PASS,NOMBRE,CELULAR,DNI,IMAGEN,ID_ROL,ID_SERVICIO,ID_UBICACION) VALUES (8,'prestador5@gmail.com','prestador5','Doctor YA','+543421557751','28000000','imagen',2,8,8);