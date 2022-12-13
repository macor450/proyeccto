USE master;
GO
IF DB_ID ('COMPAÑIASYJUEGOS') IS NOT NULL
DROP DATABASE COMPAÑIASYJUEGOS;
GO
CREATE DATABASE COMPAÑIASYJUEGOS
ON 
(NAME = CompañiasVideojuego_dat,
FILENAME = 'C:\Bases de Datos\COMPAÑIASYJUEGOS.mdf',
SIZE = 10,
MAXSIZE = 50,
FILEGROWTH = 5)
LOG ON 
(NAME = COMPAÑIASYJUEGOS_log,
FILENAME = 'C:\Bases de Datos\COMPAÑIASYJUEGOS.ldf',
SIZE = 5MB,
MAXSIZE = 25MB,
FILEGROWTH = 5MB);
GO
USE COMPAÑIASYJUEGOS
GO
CREATE TABLE Aplicacion
(
idAplicacion INT IDENTITY (1,1),
idSistema int null,
nombre varchar (50),
numero varchar (50),
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Area 
(
idArea INT IDENTITY (1,1),
idEmpleado int null,
nombre varchar (50),
codigo Varchar (50),
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Bodega
(
idBodega INT IDENTITY (1,1),
numero varchar (50),
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE BodegaHerramienta
(
idBodegaHerramienta INT IDENTITY (1,1),
idBodega int null,
idPiso int null,
);

CREATE TABLE Comedor
(
idComedor INT IDENTITY(1,1),
numero varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Comic
(
idComic INT IDENTITY(1,1),
nombre Varchar (50) not null,
volumen varchar(50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Consola
(
idConsola INT IDENTITY(1,1),
idSistema int null,
nombre varchar (50)not null,
modelo varchar (50)not null,
vercion varchar (50)not null,
procesador varchar (50)not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Capital
(
idCapital INT IDENTITY (1,1),
nombre varchar (50) not null,
socio varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Compañia
(
idCompañia int IDENTITY(1,1),
idConsola int not null,
idEdificio int not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
matricula varchar (50)not null,
);
CREATE TABLE CompañiaCapital
(
idCompañiaCapital int IDENTITY(1,1),
idCompañia int not null,
idCapital int not null,
);
CREATE TABLE CompañiaConsola
(
idCompañiaConsola int IDENTITY(1,1),
idCompañia int not null,
idConsola int not null,
);
CREATE TABLE CompañiaDistribucion
(
idCompañiaDistribucion int IDENTITY(1,1),
idCompañia int not null,
idDistribucion int not null,
);
CREATE TABLE CompañiaJuego
(
idCompañiaJuego int IDENTITY(1,1),
idCompañia int not null,
idJuego int not null,
);
CREATE TABLE CompañiaProveedor
(
idCompañiaProveedor int IDENTITY(1,1),
idCompañia int not null,
idProveedor int not null,
);
CREATE TABLE CompañiaPresentacion
(
idCompañiaPrecentacion int IDENTITY(1,1),
idCompañia int not null,
idPrecentacion int not null,
);
CREATE TABLE CompañiaTorneo
(
idCompañiaTorneo int IDENTITY(1,1),
idCompañia int not null,
idTorneo int not null,
);
CREATE TABLE Contrato
(
idContrato INT IDENTITY (1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Desarrolladora
(
idDesarrolladora INT IDENTITY(1,1),
nombre varchar (50),
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Distribucion
(
idDistribucion int IDENTITY(1,1),
tipo varchar(50) not null,
estatus BIT DEFAULT 1 not null,
destino varchar (50) not null,
);
CREATE TABLE Dificultad
(
idDificultad int IDENTITY(1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE DLC
(
idDLC INT IDENTITY (1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
matricula varchar (50) not null,
);
CREATE TABLE Edificio
(
idEdificio INT IDENTITY (1,1),
ubicacion varchar (50) not null,
ciudad varchar (50) not null,
calle varchar (50) not null,
colonia varchar(50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Equipo
(
idEquipo INT IDENTITY (1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE EdificioEmpleado
(
idEdeficioEmpleado INT IDENTITY(1,1),
idEmpleado int null,
idEdificio int null,
);
CREATE TABLE Empleado
(
idEmpleado INT IDENTITY (1,1),
idSindicato int null,
nombre varchar (50) not null,
calle varchar (50) not null,
colonia varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE EmpleadoContrato
(
idEmpleadoContrato INT IDENTITY (1,1),
idEmpleado int null,
idContrato int null,
);
CREATE TABLE Ecenario
(
idEcenario INT IDENTITY(1,1),
nombre varchar (50) not null,
tipo varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE EcenarioDificultad
(
idEcenarioDificultad INT IDENTITY(1,1),
idEcenario int null,
idDificultad int null,
);
CREATE TABLE Evento
(
idEvento INT IDENTITY (1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Equipamento
(
idEquipamento INT IDENTITY(1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
); 
CREATE TABLE Faccion
(
idFaccion INT IDENTITY(1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE FaccionVehiculo
(
idFaccionVehiculo INT IDENTITY(1,1),
idFaccion int null,
idVehiculo int null,
);
CREATE TABLE FaccionEquipamento
(
idFaccionEquipamento INT IDENTITY(1,1),
idFaccion int null,
idEquipamento int null,
);
CREATE TABLE Herramienta
(
idHerramienta INT IDENTITY (1,1),
idBodega int null,
nombre varchar (50)  not null,
numBodega varchar (50)  not null,
estatus BIT DEFAULT 1 not null,
);
Create TABLE Interfaz
(
idInterfaz INT IDENTITY (1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Juego
(
idJuego INT IDENTITY (1,1),
idSerie int null,
idPelicula int null,
nombre varchar (50) not null,
codigo varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE JuegoTargeta
(
idJuegoTarjeta INT IDENTITY (1,1),
idJuego int null,
idTaejeta int null,
);
CREATE TABLE JuegoInterfaz
(
idJuegoInterfaz INT IDENTITY (1,1),
idJuego int null,
idInterfaz int null,
);
CREATE TABLE JuegoMusica
(
idJuegoMusica INT IDENTITY(1,1),
idJuego int null,
idMusica int null,
);

CREATE TABLE jugador
(
idJugador INT IDENTITY(1,1),
idSuscripcion int null,
idMembresia int null,
nombre varchar (50) not null,
correo varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);

CREATE TABLE JuegoJugador
(
idJuegoJugador INT IDENTITY(1,1),
idJuego int null,
idJugador int null,
);
CREATE TABLE JuegoTarjeta
(
idJuegoTarjeta INT IDENTITY(1,1),
idJuego int null,
idTarjeta int null,
);
CREATE TABLE JuegoLogro
(
idJuegoLogro INT IDENTITY(1,1),
idJuego int null,
idLogro int null,
);
CREATE TABLE JuegoObjeto
(
idJuegoObjeto INT IDENTITY(1,1),
idJuego int null,
idObjeto int null,
);
CREATE TABLE JuegoPersonaje
(
idJuegoPersonaje INT IDENTITY(1,1),
idJuego int null,
idPersonaje int null,
);
CREATE TABLE JuegoTienda
(
idJuegoTienda INT IDENTITY(1,1),
idJuego int null,
idTienda int null,
);
CREATE TABLE JuegoPublicidad
(
idJuegoPublicdad INT IDENTITY(1,1),
idJuego int null,
idPublicidad int null,
);
CREATE TABLE JuegoEcenario
(
idJuegoEcenario INT IDENTITY(1,1),
idJuego int null,
idEcenario int null,
);
CREATE TABLE JuegoDLC
(
idJuegoDLC INT IDENTITY(1,1),
idJuego int null,
idDLC int null,
);
CREATE TABLE JuegoRecompensa
(
idJuegoRecompensa INT IDENTITY(1,1),
idJuego int null,
idRecompensa int null,
);
CREATE TABLE JuegoModalidad
(
idJuegoModalidad INT IDENTITY(1,1),
idJuego int null,
idTienda int null,
);
CREATE TABLE JuegoPLataforma
(
idJuegoPlataforma INT IDENTITY(1,1),
idJuego int null,
idPlataforma int null,
);
CREATE TABLE JuegoEvento
(
idJuegoEvento INT IDENTITY(1,1),
idJuego int null,
idEvento int null,
);
CREATE TABLE Logro
(
idLogro INT IDENTITY (1,1),
nombre varchar (50) not null,
juego varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Mapa
(
idMapa varchar (50) not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Membresia
(
idMembresia INT IDENTITY(1,1),
cantidad varchar (50) not null,
estatus BIT DEFAULT 1 not null,
jugador varchar (50) not null,
);
CREATE TABLE Modalidad
(
idModalidad INT IDENTITY(1,1),
nombre varchar (50) not null,
desctrpcion varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Musica
(
idMusica INT IDENTITY (1,1),
nombre varchar (50) not null,
genero varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);

CREATE TABLE Objeto
(
idObjeto INT IDENTITY (1,1),
nombre varchar (50) not null,
disponivilidad varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Oficina
(
idOficina INT IDENTITY (1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Partida
(
idPartida INT IDENTITY (1,1),
nombre Varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE PartidaTorneo
(
idPartidaTorneo INT IDENTITY (1,1),
idPartida int null,
idTorneo int null,
);
CREATE TABLE Piso
(
idPiso INT IDENTITY (1,1),
numero varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE PisoComedor
(
idPisoComedor INT IDENTITY (1,1),
idPiso int null,
idComedor int null
);
CREATE TABLE PisoSala
(
idPisoSala INT IDENTITY (1,1),
idPiso int null,
idSala int null
);
CREATE TABLE PisoBodega
(
idPisoBodega INT IDENTITY(1,1),
idPiso int null,
idBodega int null,
);
CREATE TABLE Proveedor
(
idProveedor int IDENTITY(1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
marca varchar (50) not null,
);
CREATE TABLE Pelicula
(
idPelicula INT IDENTITY(1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Personaje
(
idPersonaje INT IDENTITY(1,1),
idSkin int null,
nombre Varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE PersonajeFaccion
(
idPersonajeFaccion INT IDENTITY(1,1),
idPersonaje int null,
idFaccion int null,
);
CREATE TABLE PersonajeSkin
(
idPersonajeSkin INT IDENTITY(1,1),
idPersonaje int null,
idSkin int null,
);
CREATE TABLE Plataforma
(
idPlataforma INT IDENTITY(1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Promocion
(
idPromocion INT IDENTITY (1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Publicidad
(
idPublicidad INT IDENTITY (1,1),
nombre varchar (50),
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Recompensa
(
idRecompensa INT IDENTITY(1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Sala 
(
idSala INT IDENTITY (1,1),
nombre varchar (50) not null,
numero varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Suscripcion
(
idSuscripcion INT IDENTITY(1,1),
marca varchar (50) not null,
estatus BIT DEFAULT 1 not null,
Servicio varchar (50) not null,
);
CREATE TABLE Servidor
(
idServidor int IDENTITY(1,1),
marca varchar (50) not null,
estatus BIT DEFAULT 1 not null,
modelo varchar (50) not null,
) 
CREATE TABLE Sistema
(
idSistema INT IDENTITY (1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
codigo varchar (50) not null,
);
CREATE TABLE Sindicato
(
idSindicato INT IDENTITY (1,1),
Calle varchar (50) not null,
Colonia varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Skin
(
idSkin INT IDENTITY(1,1),
nombre varchar (50) not null,
estatus Varchar (50) not null,
);
CREATE TABLE Serie
(
idSerie INT IDENTITY(1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Torneo
(
idTorneo INT IDENTITY (1,1),
numjugadores varchar (50) not null, 
temajuego varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);

CREATE TABLE Tienda
(
idTienda INT IDENTITY (1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE TiendaPromocion
(
idTiendaPromocion INT IDENTITY(1,1),
idTienda int null,
idPromocion int null,
);
CREATE TABLE Transporte
(
idTransporte INT IDENTITY(1,1),
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Tarjeta
(
idTarjeta INT IDENTITY (1,1),
Cantidad varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Vehiculo
(
idVehiculo INT IDENTITY(1,1),
nombre varchar (50) not null,
faccion varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
GO
-----------index---------------------------------------------
CREATE INDEX IX_Aplicacion ON Aplicacion(idAplicacion);
GO
CREATE INDEX IX_Area ON Area(idArea);
GO
CREATE INDEX IX_Bodega ON Bodega(idBodega);
GO
CREATE INDEX IX_Capital ON Capital(idCapital);
GO
CREATE INDEX IX_Comedor ON Comedor(idComedor);
GO
CREATE INDEX IX_Comic ON Comic(idComic);
GO
CREATE INDEX IX_Compañia ON Compañia(idCompañia);
GO
CREATE INDEX IX_Consola ON Consola(idConsola);
GO
CREATE INDEX IX_Contrato ON Contrato(idContrato);
GO
CREATE INDEX IX_Desarrolladora ON Desarrolladora(idDesarrolladora);
GO
CREATE INDEX IX_Distribucion ON Distribucion(idDistribucion);
GO
CREATE INDEX IX_Dificultad ON Dificultad(idDificultad);
GO
CREATE INDEX IX_DLC ON DLC(idDLC);
GO
CREATE INDEX IX_Ecenario ON Ecenario(idEcenario);
GO
CREATE INDEX IX_Edificio ON Edificio(idEdificio);
GO
CREATE INDEX IX_Empleado ON Empleado(idEmpleado);
GO
CREATE INDEX IX_Equipo ON Equipo(idEquipo);
GO
CREATE INDEX IX_Evento ON Evento(idEvento);
GO
CREATE INDEX IX_Faccion ON Faccion(idFaccion);
GO
CREATE INDEX IX_Herramienta ON Herramienta(idHerramienta);
GO
CREATE INDEX IX_Interfaz ON Interfaz(idInterfaz);
GO
CREATE INDEX IX_Juego ON Juego(idJuego);
GO
CREATE INDEX IX_Jugador ON Jugador(idJugador);
GO
CREATE INDEX IX_Logro ON Logro(idLogro);
GO
CREATE INDEX IX_Membresia ON Membresia(idMembresia);
GO
CREATE INDEX IX_Modalidad ON Modalidad(idModalidad);
GO
CREATE INDEX IX_Musica ON Musica(idMusica);
GO
CREATE INDEX IX_Objeto ON Objeto(idObjeto);
GO
CREATE INDEX IX_Oficina ON Oficina(idOficina);
GO
CREATE INDEX IX_Partida ON Partida(idPartida);
GO
CREATE INDEX IX_Pelicula ON Pelicula(idPelicula);
GO
CREATE INDEX IX_Personaje ON Personaje(idPersonaje);
GO
CREATE INDEX IX_Publicacion ON Publicidad(idPublicidad);
GO
CREATE INDEX IX_Piso ON Piso(idPiso);
GO
CREATE INDEX IX_Plataforma ON Plataforma(idPlataforma);
GO
CREATE INDEX IX_Promocion ON Promocion(idPromocion);
GO
CREATE INDEX IX_Proveedor ON Proveedor(idProveedor);
GO
CREATE INDEX IX_Recompensa ON Recompensa(idRecompensa);
GO
CREATE INDEX IX_Sala ON Sala(idSala);
GO
CREATE INDEX IX_Serie ON Serie(idSerie);
GO
CREATE INDEX IX_Sindicato ON Sindicato(idSindicato);
GO
CREATE INDEX IX_Servidor ON Servidor(idServidor);
GO
CREATE INDEX IX_Sistema ON Sistema(idSistema);
GO
CREATE INDEX IX_Skin ON Skin(idSkin);
GO
CREATE INDEX IX_Suscripcion ON Suscripcion(idSuscripcion);
GO
CREATE INDEX IX_Tarjeta ON Tarjeta(idTarjeta);
GO
CREATE INDEX IX_Tienda ON Tienda(idTienda);
GO
CREATE INDEX IX_Torneo ON Torneo(idTorneo);
GO
CREATE INDEX IX_Transporte ON Transporte(idTransporte);
GO
CREATE INDEX IX_Vehiculo ON Vehiculo(idVehiculo);
GO
---------LLAVES PRIMARIAS---------
ALTER TABLE Area ADD CONSTRAINT PK_Area PRIMARY KEY (idArea)
ALTER TABLE Aplicacion ADD CONSTRAINT PK_Alumno PRIMARY KEY (idAplicacion)
ALTER TABLE Bodega ADD CONSTRAINT PK_Bodega PRIMARY KEY (idBodega)
ALTER TABLE Capital ADD CONSTRAINT PK_Capital PRIMARY KEY (idCapital)
ALTER TABLE Comedor ADD CONSTRAINT PK_Comedor PRIMARY KEY (idComedor)
ALTER TABLE Comic ADD CONSTRAINT PK_Comic PRIMARY KEY (idComic)
ALTER TABLE Compañia ADD CONSTRAINT PK_Compañia PRIMARY KEY (idCompañia)
ALTER TABLE Consola ADD CONSTRAINT PK_Consola PRIMARY KEY (idConsola)
ALTER TABLE Contrato ADD CONSTRAINT PK_Contrato PRIMARY KEY (idContrato)
ALTER TABLE Desarrolladora ADD CONSTRAINT PK_Desarrolladora PRIMARY KEY (idDesarrolladora)
ALTER TABLE Dificultad ADD CONSTRAINT PK_Dificultad PRIMARY KEY (idDificultad)
ALTER TABLE Distribucion ADD CONSTRAINT PK_Distribucion PRIMARY KEY (idDistribucion)
ALTER TABLE DLC ADD CONSTRAINT PK_DLC PRIMARY KEY (idDLC)
ALTER TABLE Ecenario ADD CONSTRAINT PK_Ecenario PRIMARY KEY (idEcenario)
ALTER TABLE Edificio ADD CONSTRAINT PK_Edificio PRIMARY KEY (idEdificio)
ALTER TABLE Empleado ADD CONSTRAINT PK_Empleado PRIMARY KEY (idEmpleado)
ALTER TABLE Equipo ADD CONSTRAINT PK_Equipo PRIMARY KEY (idEquipo)
ALTER TABLE Evento ADD CONSTRAINT PK_Evento PRIMARY KEY (idEvento)
ALTER TABLE Faccion ADD CONSTRAINT PK_Faccion PRIMARY KEY (idFaccion)
ALTER TABLE Herramienta ADD CONSTRAINT PK_Herramienta PRIMARY KEY (idHerramienta)
ALTER TABLE Interfaz ADD CONSTRAINT PK_Interfaz PRIMARY KEY (idInterfaz)
ALTER TABLE Juego ADD CONSTRAINT PK_Juego PRIMARY KEY (idJuego)
ALTER TABLE Jugador ADD CONSTRAINT PK_Jugador PRIMARY KEY (idJugador)
ALTER TABLE Logro ADD CONSTRAINT PK_Logro PRIMARY KEY (idLogro)
ALTER TABLE Mapa ADD CONSTRAINT PK_Mapa PRIMARY KEY (idMapa)
ALTER TABLE Membresia ADD CONSTRAINT PK_Membresia PRIMARY KEY (idMembresia)
ALTER TABLE Modalidad ADD CONSTRAINT PK_Modalidad PRIMARY KEY (idModalidad)
ALTER TABLE Musica ADD CONSTRAINT PK_Musica PRIMARY KEY (idMusica)
ALTER TABLE Objeto ADD CONSTRAINT PK_Objeto PRIMARY KEY (idObjeto)
ALTER TABLE Oficina ADD CONSTRAINT PK_Oficina PRIMARY KEY (idOficina)
ALTER TABLE Partida ADD CONSTRAINT PK_Partida PRIMARY KEY (idPartida)
ALTER TABLE Pelicula ADD CONSTRAINT PK_Pelicula PRIMARY KEY (idPelicula)
ALTER TABLE Personaje ADD CONSTRAINT PK_Personaje PRIMARY KEY (idPersonaje)
ALTER TABLE Piso ADD CONSTRAINT PK_Piso PRIMARY KEY (idPiso)
ALTER TABLE Plataforma ADD CONSTRAINT PK_Plataforma PRIMARY KEY (idPlataforma)
ALTER TABLE Promocion ADD CONSTRAINT PK_Promcion PRIMARY KEY (idPromocion)
ALTER TABLE Proveedor ADD CONSTRAINT PK_Proveedor PRIMARY KEY (idProveedor)
ALTER TABLE Publicidad ADD CONSTRAINT PK_Publicidad PRIMARY KEY (idPublicidad)
ALTER TABLE Recompensa ADD CONSTRAINT PK_Recompensa PRIMARY KEY (idRecompensa)
ALTER TABLE Sala ADD CONSTRAINT PK_Sala PRIMARY KEY (idSala)
ALTER TABLE Serie ADD CONSTRAINT PK_Serie PRIMARY KEY (idSerie)
ALTER TABLE Servidor ADD CONSTRAINT PK_Servidor PRIMARY KEY (idServidor)
ALTER TABLE Sindicato ADD CONSTRAINT PK_Sindicato PRIMARY KEY (idSindicato)
ALTER TABLE Sistema ADD CONSTRAINT PK_Sistema PRIMARY KEY (idSistema)
ALTER TABLE Skin ADD CONSTRAINT PK_Skin PRIMARY KEY (idSkin)
ALTER TABLE Suscripcion ADD CONSTRAINT PK_Suscripcion PRIMARY KEY (idSuscripcion)
ALTER TABLE Tarjeta ADD CONSTRAINT PK_Tarjeta PRIMARY KEY (idTarjeta)
ALTER TABLE Tienda ADD CONSTRAINT PK_Tienda PRIMARY KEY (idTienda)
ALTER TABLE Torneo ADD CONSTRAINT PK_Torneo PRIMARY KEY (idTorneo)
ALTER TABLE Transporte ADD CONSTRAINT PK_Transporte PRIMARY KEY (idTransporte)
ALTER TABLE Vehiculo ADD CONSTRAINT PK_Vehiculo PRIMARY KEY (idVehiculo)
---------------------RELACIONES----------------------------------------------------------
ALTER TABLE CompañiaCapital 
ADD CONSTRINT FK_CompañiaCapitalCompañia 
FOREIGN KEY (idCompañia) REFERENCES Compañia (idCompañia)
GO
ALTER TABLE CompañiaCapital 
ADD CONSTRAINT FK_CompañiaCapitalCapital 
FOREIGN KEY (idCapital) REFERENCES Capital (idCapital)
GO
ALTER TABLE CompañiaConsola 
ADD CONSTRAINT FK_CompañiaConsolaCompañia
FOREIGN KEY (idCompañia) REFERENCES Compañia (idCompañia)
GO
ALTER TABLE CompañiaConsola 
ADD CONSTRAINT FK_CompañiaConsolaConsola
FOREIGN KEY (idConsola) REFERENCES Consola (idConsola)
GO
ALTER TABLE CompañiaDistribucion 
ADD CONSTRAINT FK_CompañiaDistribucionCompañia 
FOREIGN KEY (idCompañia) REFERENCES Compañia (idCompañia)
GO
ALTER TABLE CompañiaDistribucion 
ADD CONSTRAINT FK_CompañiaDistribucionDistribucion 
FOREIGN KEY (idDistribucion) REFERENCES Distribucion (idDistribucion)
GO
ALTER TABLE CompañiaJuego 
ADD CONSTRAINT FK_CompañiaJuegoCompañia 
FOREIGN KEY (idCompañia) REFERENCES Compañia (idCompañia)
GO
ALTER TABLE CompañiaJuego 
ADD CONSTRAINT FK_CompañiaJuegoJuego
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO
ALTER TABLE CompañiaProveedor 
ADD CONSTRAINT FK_CompañiaProveedorCompañia 
FOREIGN KEY (idCompañia) REFERENCES Compañia (idCompañia)
GO
ALTER TABLE CompañiaProveedor 
ADD CONSTRAINT FK_CompañiaProveedorProveedor 
FOREIGN KEY (idProveedor) REFERENCES Proveedor (idProveedor)
GO
ALTER TABLE CompañiaTorneo 
ADD CONSTRAINT FK_CompañiaTorneoCompañia 
FOREIGN KEY (idTorneo) REFERENCES Torneo (idTorneo)
GO
ALTER TABLE CompañiaTorneo 
ADD CONSTRAINT FK_CompañiaTorneoTorneo
FOREIGN KEY (idTorneo) REFERENCES Torneo (idTorneo)
GO

ALTER TABLE EcenarioDificultad 
ADD CONSTRAINT FK_EcenarioDificultadEcenario 
FOREIGN KEY (idEcenario) REFERENCES Ecenario (idEcenario)
GO
ALTER TABLE EcenarioDificultad 
ADD CONSTRAINT FK_EcenarioDificultadDificultad
FOREIGN KEY (idDificultad) REFERENCES Dificultad (idDificultad)
GO
ALTER TABLE EdificioEmpleado
ADD CONSTRAINT FK_EdificioEmpleadoEdificio 
FOREIGN KEY (idEdificio) REFERENCES Edificio (idEdificio)
GO
ALTER TABLE EdificioEmpleado
ADD CONSTRAINT FK_EdificioEmpleadoEmpleado 
FOREIGN KEY (idEmpleado) REFERENCES Empleado (idEmpleado)
GO
ALTER TABLE EmpleadoContrato
ADD CONSTRAINT FK_EmpleadoContratoEmpleado 
FOREIGN KEY (idEmpleado) REFERENCES Empleado (idEmpleado)
GO
ALTER TABLE EmpleadoContrato
ADD CONSTRAINT FK_EmpleadoContratoContrato
FOREIGN KEY (idContrato) REFERENCES Contrato (idContrato)
GO
ALTER TABLE FaccionEquipamento 
ADD CONSTRAINT FK_FaccionEquipamentoFaccion
FOREIGN KEY (idFaccion) REFERENCES Faccion (idFaccion)
GO
ALTER TABLE FaccionEquipamento 
ADD CONSTRAINT FK_FaccionEquipamentoEquipamento
FOREIGN KEY (idEquipamento) REFERENCES Equipamento (idEquipamento)
GO
ALTER TABLE FaccionVehiculo 
ADD CONSTRAINT FK_FaccionVehiculoFaccion 
FOREIGN KEY (idFaccion) REFERENCES Faccion (idFaccion)
GO
ALTER TABLE FaccionVehiculo 
ADD CONSTRAINT FK_FaccionVehiculoVehiculo
FOREIGN KEY (idVehiculo) REFERENCES Vehiculo (idVehiculo)
GO
ALTER TABLE JuegoDLC
ADD CONSTRAINT FK_JuegoDLCJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO
ALTER TABLE JuegoDLC
ADD CONSTRAINT FK_JuegoDLCDLC 
FOREIGN KEY (idDLC) REFERENCES DLC (idDLC)
GO
ALTER TABLE JuegoEcenario
ADD CONSTRAINT FK_JuegoEcenarioJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO
ALTER TABLE JuegoEcenario
ADD CONSTRAINT FK_JuegoEcenarioEcenario 
FOREIGN KEY (idEcenario) REFERENCES Ecenario (idEcenario)
GO
ALTER TABLE JuegoEvento
ADD CONSTRAINT FK_JuegoEventoJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO
ALTER TABLE JuegoEvento
ADD CONSTRAINT FK_JuegoEventoEvento 
FOREIGN KEY (idEvento) REFERENCES Evento (idEvento)
GO
ALTER TABLE JuegoInterfaz
ADD CONSTRAINT FK_JuegoInterfazJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO
ALTER TABLE JuegoInterfaz
ADD CONSTRAINT FK_JuegoInterfazInterfaz
FOREIGN KEY (idInterfaz) REFERENCES Interfaz (idInterfaz)
GO
ALTER TABLE JuegoLogro
ADD CONSTRAINT FK_JuegoLogroJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO
ALTER TABLE JuegoLogro
ADD CONSTRAINT FK_JuegoLogroLogro 
FOREIGN KEY (idLogro) REFERENCES Logro (idLogro)
GO
ALTER TABLE JuegoModalidad
ADD CONSTRAINT FK_JuegoModalidadJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO

ALTER TABLE JuegoModalidad
ADD CONSTRAINT FK_JuegoModalidadModalidad 
FOREIGN KEY (idModalidad) REFERENCES Modalidad (idModalidad)
GO

ALTER TABLE JuegoMusica
ADD CONSTRAINT FK_JuegoMusicaJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO
ALTER TABLE JuegoMusica
ADD CONSTRAINT FK_JuegoMusicaMusica 
FOREIGN KEY (idMusica) REFERENCES Musica (idMusica)
GO
ALTER TABLE JuegoObjeto
ADD CONSTRAINT FK_JuegoObjetoJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO
ALTER TABLE JuegoObjeto
ADD CONSTRAINT FK_JuegoObjetoObjeto 
FOREIGN KEY (idObjeto) REFERENCES Objeto (idObjeto)
GO
ALTER TABLE JuegoPersonaje
ADD CONSTRAINT FK_JuegoPersonajeJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO
ALTER TABLE JuegoPersonaje
ADD CONSTRAINT FK_JuegoPersonajePersonaje 
FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
GO
ALTER TABLE JuegoPlataforma
ADD CONSTRAINT FK_JuegoPlataformaJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO

ALTER TABLE JuegoPlataforma
ADD CONSTRAINT FK_JuegoPlataformaPlatofarma 
FOREIGN KEY (idPlatofarma) REFERENCES Plataforma (idPlataforma)

GO
ALTER TABLE JuegoPublicidad
ADD CONSTRAINT FK_JuegoPublicidadJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO
ALTER TABLE JuegoPublicidad
ADD CONSTRAINT FK_JuegoPublicidadPublicidad 
FOREIGN KEY (idPublicidad) REFERENCES Publicidad (idPublicidad)
GO
ALTER TABLE JuegoRecompensa
ADD CONSTRAINT FK_JuegoRecompensaJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO
ALTER TABLE JuegoRecompensa
ADD CONSTRAINT FK_JuegoRecompensaRecompensa
FOREIGN KEY (idRecompensa) REFERENCES Recompensa (idRecompensa)
GO
ALTER TABLE JuegoTarjeta
ADD CONSTRAINT FK_JuegoTargetaJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO
ALTER TABLE JuegoTarjeta
ADD CONSTRAINT FK_JuegoTarjetaTarjeta 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO
ALTER TABLE JuegoTienda
ADD CONSTRAINT FK_JuegoTiendaJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
GO
ALTER TABLE JuegoTienda
ADD CONSTRAINT FK_JuegoTiendaTienda 
FOREIGN KEY (idTienda) REFERENCES Tienda (idTienda)
GO
ALTER TABLE PartidaTorneo
ADD CONSTRAINT FK_PartidaTorneoPartida 
FOREIGN KEY (idPartida) REFERENCES Partida (idPartida)
GO
ALTER TABLE PartidaTorneo
ADD CONSTRAINT FK_PartidaTorneoTorneo 
FOREIGN KEY (idTorneo) REFERENCES Torneo (idTorneo)
GO
ALTER TABLE PersonajeFaccion
ADD CONSTRAINT FK_PersonajeFaccionPersonaje 
FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
GO
ALTER TABLE PersonajeFaccion
ADD CONSTRAINT FK_PersonajeFaccionFaccion
FOREIGN KEY (idFaccion) REFERENCES Faccion (idFaccion)
GO
ALTER TABLE PersonajeSkin
ADD CONSTRAINT FK_PersonajeSkinPersonaje
FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
GO
ALTER TABLE PersonajeSkin
ADD CONSTRAINT FK_PersonajeSkinSkin
FOREIGN KEY (idSkin) REFERENCES Skin (idSkin)
GO
ALTER TABLE PisoBodega
ADD CONSTRAINT FK_PisoBodegaPiso
FOREIGN KEY (idPiso) REFERENCES Piso (idPiso)
GO
ALTER TABLE PisoBodega
ADD CONSTRAINT FK_PisoBodegaBodega
FOREIGN KEY (idBodega) REFERENCES Bodega (idBodega)
GO
ALTER TABLE PisoComedor
ADD CONSTRAINT FK_PisoComedorPiso
FOREIGN KEY (idPiso) REFERENCES Piso (idPiso)
GO
ALTER TABLE PisoComedor
ADD CONSTRAINT FK_PisoComedorComedor
FOREIGN KEY (idComedor) REFERENCES Comedor (idComedor)
GO
ALTER TABLE PisoSala
ADD CONSTRAINT FK_PisoSalaPiso
FOREIGN KEY (idPiso) REFERENCES Piso (idPiso)
GO
ALTER TABLE PisoSala
ADD CONSTRAINT FK_PisoSalaSala
FOREIGN KEY (idSala) REFERENCES Sala (idSala)
GO
ALTER TABLE TiendaPromocion
ADD CONSTRAINT FK_TiendaPromocionTienda
FOREIGN KEY (idTienda) REFERENCES Tienda (idTienda)
GO
ALTER TABLE TiendaPromocion
ADD CONSTRAINT FK_TiendaPromocionPromocion
FOREIGN KEY (idPromocion) REFERENCES Promocion (idPromocion)
GO

INSERT INTO Bodega(numero)
VALUES ('1'), ('2'), ('3'),('4'),('5')

INSERT INTO Edificio(ubicacion, ciudad, calle, colonia)
VALUES ('45'), ('monclova'), ('rosario'), ('santabarbara'), ('lalo'), ('santiago'), ('revolucion'), ('rogelio'), ('vegas'), ('siempreviva'), ('salvador'), ('ramos arispe')

INSERT INTO Equipamento(nombre)
VALUES('ULTRA'), ('NORMAL'), ('BASICO'), ('PREDETERMINADO')
GO
INSERT INTO Sindicato(Calle, Colonia)
VALUES ('SIN'),('DIC'),('ATE')
GO
INSERT INTO Serie(nombre)
VALUES ('HALO SPARTANS'),('GERS OF WAR'),('CIBER PUNK'),('MARIO')
GO

INSERT INTO Suscripcion(marca, Servicio)
VALUES ('XBOX'),('VISUALES DE EVENTOS'),('play'),('descuentos en productos sony'),('nintendo'),('skins gratuitas' )
GO

INSERT INTO Mapa(nombre)
VALUES ('mapaplaya'),('mapaCampo'),('mapaciudad'),('mapaarena'),('mapaparaiso'),('mapaentrenamiento')
GO
INSERT INTO Membresia(cantidad, jugador)
VALUES ('100'), ('paceful'), ('1000'), ('teoso')
GO
INSERT INTO Oficina(nombre)
VALUES ('oficina1 Xbox'), ('Oficina1 PLAY'), ('Oficina1 nintendo'),  ('oficina2 Xbox'), ('Oficina2 PLAY'),('Oficina2nintendo')

INSERT INTO Pelicula(nombre)
Values ('gers of war'), ('mario bros'), ('halo'),('ninja gaiden')

INSERT INTO Aplicacion(nombre, numero)
VALUES ('youtube'),('12312'),('crunchiroll'),('32424'),('google'),('23445'),('netflix'), ('98798')
GO
INSERT INTO Area(nombre, codigo)
VALUES ('programacion'), ('434dsa'),('animacion'), ('loja98798'), ('mantenimiento'), ('jd3425'), ('administracion'),('adasda22')
GO
INSERT INTO Capital(nombre, socio)
VALUES ('dispositivos'), ('Raul'), ('juegos'), ('Salazar')
GO
INSERT INTO Comedor(numero)
VALUES ('1'), ('2'), ('3'), ('4'), ('5'), ('6'), ('7'), ('8'), ('9'), ('10')
GO
INSERT INTO Comic(nombre, volumen)
VALUES ('aventura'), ('2'), ('comunicacion'), ('3'), ('badBlood'), ('4')
GO
INSERT INTO Compañia (nombre, matricula)
VALUES ('Xbox'), ('1E3ED'), ('NINTENDO'), ('EDWRFV42'), ('PLAYSTATION'), ('3E2DF')
GO
INSERT INTO Consola(nombre, modelo, vercion)
VALUES ('360'), ('slim'), ('2'), ('360'), ('var'), ('1'), ('play3'), ('kiq'), ('3'), ('play4'), ('kan'), ('4'), ('switch'), ('V4'), ('5')
GO
INSERT INTO Contrato(nombre)
VALUES ('trato de acenso'), ('trato de mobiliario'), ('aprobacion de programas'), ('contrato de aumento de nomina')
GO
INSERT INTO Desarrolladora(nombre)
VALUES ('PIXONIC'), ('EA'), ('MICROSOFT STUDIOS'), ('SONY')

INSERT INTO Dificultad (nombre)
VALUES ('ultimate'), ('super Dificil'), ('definitiva'), ('insuperable')

INSERT INTO DLC(nombre)
VALUES ('caida'), ('llegada'), ('antiguos regresados'), ('retorno legendario')

INSERT INTO Ecenario(nombre, tipo)
VALUES ('playa'), ('Campo'), ('ciudad'), ('arena'), ('paraiso'), ('entrenamiento')

INSERT INTO Empleado(nombre, calle, colonia)
VALUES('raul Perez'), ('rosalba'), ('colonial'), ('ramos duran'), ('diaz'), ('bart'), ('alejandro max'), ('castaños'), ('arispe')

INSERT INTO Equipo(nombre)
VALUES ('Valorants'), ('los normales'), ('los reales'), ('unicos'), ('diferente')

INSERT INTO Evento(nombre)
VALUES ('de novatos'), ('profesional'), ('de reliquias'), ('sagrado')

INSERT INTO Faccion(nombre)
VALUES ('humanos'), ('Orco'), ('armadas'), ('forsas')

INSERT INTO Herramienta(nombre, numBodega)
VALUES ('Cable'), ('2'), ('pantallas'), ('3'), ('desarmadores'), ('3, 4, 1'), ('pinzas'),('1, 2,3')

INSERT INTO Interfaz(nombre)
VALUES ('pc'), ('movil'), ('consola')

INSERT INTO Juego(nombre)
VALUES ('halo'), ('mario bros'), ('Last of us')


INSERT INTO Jugador(nombre, correo)
VALUES ('paceful'), ('asdasda@gmail.com'), ('teoso'), ('teoso@feel.com'), ('deel'), ('deli@gmail,com')


INSERT INTO Logro(nombre)
VALUES ('Valor'), ('monumento'), ('union'), ('tesoro')

INSERT INTO Modalidad(nombre)
VALUES ('guerra sin fin'), ('cruzada epica'), ('aventura sin fin'), ('supervivencia')



INSERT INTO Musica( nombre, genero)
VALUES ('FEEL THE FALL'),('ROCK'), ('THE ONLY THING ONE FOR REAL'),('ROCK'), ('MAGIC WORLD'),('CLASIC'), ('THE MOST WANTED'),('POP'), ('ONLY YOU'),('CLASIC')



INSERT INTO Objeto(nombre)
VALUES ('GORRA'),('TAREA VIEJA'), ('MINIESTATUA'), ('JUGUETE'), ('AMULETO'), ('PINZAS')



INSERT INTO Partida(nombre)
VALUES ('Partida de entrenamiento'),('Partida de tutorial'),('Partida de multijugador'), ('Partidad de evento especial')

INSERT INTO Personaje(nombre)
VALUES ('mario'),('peach'),('bowser'),('luigi'), ('toad'), ('marcus'), ('doom'),('cole'),('B carmain'), ('soni'), ('nukles'),('tails')

INSERT INTO Piso(numero)
VALUES ('1'), ('2'),('3'),('4'),('6')

INSERT INTO Plataforma(nombre)
VALUES ('PC'), ('PLAY'),('XBOX'),('STEAM')

INSERT INTO Promocion (nombre)
VALUES ('OFERTA DE ARMAS '), ('PROMOCION DE HONGOS'), ('OFERTA LANCER'), ('PROMOCION DE GUARDADITO')

INSERT INTO Proveedor (nombre)
VALUES ('MICROSOFT'), ('SONY'), ('GOOGLE'),('STEAM')


INSERT INTO Publicidad (nombre)
VALUES ('XBOX GAME JUEGA AHORA'), ('NINTENDO SWITCH'), ('PROMOCION DE HONGOS GIGANTES'), ('CARRERA DE CHAMPIÑONES')

INSERT INTO Recompensa(nombre)
VALUES ('COFRE DE DIAMANTE'), ('COFRE DE MADERA'), ('COFRE DE METAL'), ('COFRE PROMOCIONAL'), ('COFRE DE EVENTOS')

INSERT INTO Sala(nombre)
VALUES ('desarrollo de codigo'), ('diseño de animacion'), ('compocision de musica'), ('sala de conferencias')


INSERT INTO Servidor(marca, modelo)
VALUES ('DELL'), ('35'), ('HP'),('DD3ER4'), ('LENOVO'), ('ZT32S'),('ACER'), ('OIP3OE')

INSERT INTO Sistema(nombre, codigo)
VALUES ('xboxSistem'), ('de3jiqwu'), ('playmax'),('dv3ddq') , ('nintendo switch'), ('dasdwd333')

INSERT INTO Skin(nombre)
VALUES ('EVA'),('GUGNIR'),('MIONLIR'),('MARK'), ('PLOMERO'),('ZORRO'), ('RANA')

INSERT INTO Suscripcion(marca, Servicio)
VALUES ('XBOX', 'VISUALES DE EVENTOS', 'play', 'descuentos en productos sony', 'nintendo', 'skins gratuitas')

INSERT INTO Tarjeta(Cantidad)
VALUES ('100'),('200'),('300'),('400'),('500'),('1000')

INSERT INTO Tienda(nombre)
VALUES ('MERCADO NEGRO'),('MERCADO REGULAR'),('ARSENAL'), ('MERCADER')

INSERT INTO Torneo(numjugadores,temajuego)
VALUES ('20', 'HALO',  '40', 'MARIO', '8','gers of war')

INSERT INTO CompañiaCapital(idCompañia, idCapital)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO CompañiaConsola(idCompañia,idConsola)
VALUES (1,2),(1,2),(1,2),(1,2),(1,2)

INSERT INTO CompañiaDistribucion(idCompañia,idDistribucion)
VALUES(1,2),(1,2),(1,2),(1,2)

INSERT INTO CompañiaJuego(idCompañia,idJuego)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO CompañiaPresentacion(idCompañia,idPrecentacion)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO CompañiaProveedor(idCompañia,idProveedor)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO Compañiajuego(idCompañia,idJuego)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO CompañiaTorneo(idCompañia,idTorneo)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO EcenarioDificultad(idEcenario,idDificultad)
VALUES (1,2),(1,2),(1,2),(1,2),(1,2),(1,2)

INSERT INTO EdificioEmpleado(idEdificio,idEmpleado)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO EdificioEmpleado(idEmpleado,idEmpleado)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO EmpleadoContrato(idEmpleado,idContrato)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO FaccionEquipamento(idFaccion,idEquipamento)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO FaccionVehiculo(idFaccion,idVehiculo)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO JuegoDLC(idJuego,idDLC)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO JuegoEcenario(idJuego,idEcenario)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO JuegoEvento(idJuego,idEvento)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO JuegoInterfaz(idJuego,idInterfaz)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO JuegoJugador(idJuego,idJugador)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO JuegoLogro(idJuego,idJuegoLogro)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO JuegoModalidad(idJuego,idJuegoModalidad)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO JuegoMusica(idJuego,idMusica)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO JuegoObjeto(idJuego,idObjeto)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO JuegoPersonaje(idJuego,idPersonaje)
VALUES (1,2),(1,2),(1,2),(1,2),(1,2),(1,2)

INSERT INTO  JuegoPLataforma(idJuego,idPlataforma)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO JuegoPublicidad(idJuego,idPublicidad)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO JuegoRecompensa(idJuego,idRecompensa)
VALUES (1,2),(1,2),(1,2),(1,2),(1,2)

INSERT INTO JuegoTarjeta(idJuego,idJuegoTarjeta)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO JuegoTienda(idJuego,idTienda)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO PartidaTorneo(idPartida, idTorneo)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO PersonajeFaccion(idPersonaje,idFaccion)
VALUES (1,2),(1,2),(1,2)

INSERT INTO PersonajeSkin(idPersonaje,idSkin)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO PisoBodega(idPiso,idBodega)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO PisoComedor(idPiso,idPisoComedor)
VALUES (1,2),(1,2),(1,2),(1,2)

INSERT INTO TiendaPromocion(idTienda,idPromocion)
VALUES (1,2),(1,2),(1,2),(1,2)
