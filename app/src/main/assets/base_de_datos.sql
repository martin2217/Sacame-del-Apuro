CREATE TABLE ROL (_ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT NOT NULL);
CREATE TABLE SERVICIO (_ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT NOT NULL, DESCRIPCION TEXT NOT NULL, OBSERVACIONES TEXT, PRECIO INTEGER NOT NULL, ID_TIPO INTEGER NOT NULL);
CREATE TABLE TIPO_SERVICIO (_ID INTEGER PRIMARY KEY AUTOINCREMENT, NOMBRE TEXT NOT NULL);
CREATE TABLE UBICACION (_ID INTEGER PRIMARY KEY AUTOINCREMENT, LATITUD TEXT NOT NULL, LONGITUD TEXT NOT NULL, DIRECCION TEXT NOT NULL);
CREATE TABLE USUARIO (_ID INTEGER PRIMARY KEY AUTOINCREMENT, USERNAME TEXT NOT NULL, PASS TEXT NOT NULL, NOMBRE TEXT NOT NULL, CELULAR TEXT NOT NULL, DNI TEXT NOT NULL, ID_ROL INTEGER NOT NULL, ID_SERVICIO INTEGER, ID_UBICACION INTEGER NULL);