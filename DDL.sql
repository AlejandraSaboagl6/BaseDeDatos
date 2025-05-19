DROP DATABASE IF EXISTS PROYECTO;
CREATE DATABASE PROYECTO;
USE PROYECTO;

CREATE TABLE TIP_DOC (
   Id_TipDoc INT 	 PRIMARY KEY AUTO_INCREMENT,
   Nom_TipDoc VARCHAR(30)
);

CREATE TABLE CATEGORIAS (
    ID_Categoria tinyint PRIMARY KEY auto_increment,
    Nombre_categoria VARCHAR(255)
);

CREATE TABLE PRODUCTOS (
    ID_Producto INT PRIMARY KEY auto_increment,
    Nombre VARCHAR(255),
    Precio TINYINT,
    Descripcion VARCHAR(255),
    Categoria tinyint,
    Provedor VARCHAR(255),
    FOREIGN KEY (Categoria) REFERENCES CATEGORIAS(ID_Categoria)
);

CREATE TABLE USUARIOS (
    ID_Usuario INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Apellido VARCHAR(255),
    Tip_Doc INT,
    Telefono INT,
    Direccion VARCHAR(255),
    Rol VARCHAR(50),
    FOREIGN KEY (Tip_Doc) REFERENCES TIP_DOC(Id_TipDoc)
);

CREATE TABLE VENTAS (
    ID_Venta TINYINT PRIMARY KEY,
    Fecha TIMESTAMP,
    ID_Cliente INT,
    Total DECIMAL(15, 2),
    FOREIGN KEY (ID_Cliente) REFERENCES USUARIOS(ID_Usuario)
);

CREATE TABLE VENTAS_PRODUCTOS (
    VENTASID_Venta TINYINT,
    PRODUCTOSID_Producto INT,
    Cantidad INT,
    Valor DECIMAL(15, 2),
    FOREIGN KEY (VENTASID_Venta) REFERENCES VENTAS(ID_Venta),
    FOREIGN KEY (PRODUCTOSID_Producto) REFERENCES PRODUCTOS(ID_Producto),
    PRIMARY KEY (VENTASID_Venta, PRODUCTOSID_Producto)
);

/*prueba*/

<<<<<<< HEAD
cosita
=======
cosito
>>>>>>> 0bc6c9344a4542ee0bbf084d188a52b8880145bf
