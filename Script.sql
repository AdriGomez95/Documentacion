--Creamos la base de datos
CREATE DATABASE WarlockSoft
--indicamos la base de datos a usuar
USE WarlockSoft
--Creamos las tablas
  CREATE TABLE karma(
    idKarma INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    promedio DECIMAL(5,2) NOT NULL
  );

  CREATE TABLE habilidad(
    idHabilidad INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    punteo INT NOT NULL,
    idKarma INT NOT NULL,
    CONSTRAINT FK_Habilidad_idKarma FOREIGN KEY (idKarma) REFERENCES karma(idKarma)
  );

  CREATE TABLE rol(
    idRol INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    descripcion VARCHAR(100) NOT NULL
  );

  CREATE TABLE usuario(
    idUsuario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    correo VARCHAR(45) NOT NULL,
    fechaNacimiento DATE NOT NULL,
    contraseña VARCHAR(45) NOT NULL,
    nickname VARCHAR(45) NOT NULL,
    idRol INT NOT NULL,
    idKarma INT NOT NULL,
    CONSTRAINT FK_Usuario_idRol FOREIGN KEY (idRol) REFERENCES rol(idRol),
    CONSTRAINT FK_Usuario_idKarma FOREIGN KEY (idKarma) REFERENCES karma(idKarma)
  );

  CREATE TABLE estado(
    idEstado INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(280) NOT NULL,
    idUsuario INT NOT NULL,
    CONSTRAINT FK_Estado_idUsuario FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
  );

  CREATE TABLE comentario(
    idComentario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fecha DATE NOT NULL,
    descripcion VARCHAR(280) NOT NULL,
    idEstado INT NOT NULL,
    CONSTRAINT FK_Comentario_idEstado FOREIGN KEY (idEstado) REFERENCES estado(idEstado)
  );

  CREATE TABLE contacto(
    idContacto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idUsuario INT NOT NULL,
    idContactoU INT NOT NULL,
    CONSTRAINT FK_Contacto_idUsuario FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
    CONSTRAINT FK_Contacto_idContacto FOREIGN KEY (idContacto) REFERENCES usuario(idUsuario)
  );

  CREATE TABLE mensaje(
    idMensaje INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(280) NOT NULL,
    fecha DATE NOT NULL,
    idContacto INT NOT NULL,
    CONSTRAINT FK_Mensaje_idContacto FOREIGN KEY (idContacto) REFERENCES contacto(idContacto)
  );

  CREATE TABLE asociacion(
    idAsociacion INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(280) NOT NULL,
    logo VARCHAR(500)
  );

  CREATE TABLE usuarioAsociacion(
    idUsuarioAsociacion INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idUsuario INT NOT NULL,
    idAsociacion INT NOT NULL,
    CONSTRAINT FK_usuarioAsociacion_idUsuario FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
    CONSTRAINT FK_usuarioAsociacion_idAsociacion FOREIGN KEY (idAsociacion) REFERENCES asociacion(idAsociacion)
  );

  CREATE TABLE administrador(
    idAdministrador INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idAsociacion INT NOT NULL,
    idUsuario INT NOT NULL,
    CONSTRAINT FK_administrador_idAsociacion FOREIGN KEY (idAsociacion) REFERENCES asociacion(idAsociacion),
    CONSTRAINT FK_administrador_idUsuario FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
  );

  CREATE TABLE proyecto(
    idProyecto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) INT NOT NULL,
    fechaInicio DATE NOT NULL,
    idUsuario INT NOT NULL,
    CONSTRAINT FK_proyecto_idUsuario FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
  );

  CREATE TABLE grupoTabajo(
    idGrupoTabajo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idUsuario INT NOT NULL,
    idProyecto INT NOT NULL,
    CONSTRAINT FK_grupoTrabajo_idUsuario FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
    CONSTRAINT FK_grupoTrabajo_idProyecto FOREIGN KEY (idProyecto) REFERENCES proyecto(idProyecto)
  );

  CREATE TABLE tarea(
    idTarea INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    descripcion VARCHAR(280),
    fechaInicio DATE NOT NULL,
    estado INT NOT NULL,
    idProyecto INT,
    CONSTRAINT FK_tarea_idProyecto FOREIGN KEY (idProyecto) REFERENCES proyecto(idProyecto)
  );

  CREATE TABLE conocimiento(
    idConocimiento INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    descripcion VARCHAR(280),
    idTarea INT NOT NULL,
    CONSTRAINT FK_conocimiento_idTarea FOREIGN KEY (idTarea) REFERENCES tarea(idTarea)
  );
