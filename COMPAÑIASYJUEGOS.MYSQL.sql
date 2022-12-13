
CREATE DATABASE COMPAÑIASJUEGOS;
USE COMPAÑIASJUEGOS
,
CREATE TABLE Aplicacion
(
idAplicacion int primary key not null,
idSistema int null,
nombre varchar (50),
numero varchar (50),
estatus BIT DEFAULT 1 not null,
),
CREATE TABLE Area
(
idArea int primary key not null
idEmpleado int null,
nombre varchar (50),
codigo Varchar (50),
estatus BIT DEFAULT 1 not null
),
CREATE TABLE Bodega
(
idBodega int primary key not null,
numero varchar (50),
estatus BIT DEFAULT 1 not null
),
CREATE TABLE BodegaHerramienta
(
idBodegaHerramienta  int primary key not null,
idBodega int null,
idPiso int null
),

CREATE TABLE Comedor
(
idComedor  int primary key not null,
numero varchar (50) not null,
estatus BIT DEFAULT 1 not null,
)

CREATE TABLE Comic
(
idComic  int primary key not null,
nombre Varchar (50) not null,
volumen varchar(50) not null,
estatus BIT DEFAULT 1 not null,
)
CREATE TABLE Consola
(
idConsola  int primary key not null,
idSistema int null,
nombre varchar (50)not null,
modelo varchar (50)not null,
vercion varchar (50)not null,
procesador varchar (50)not null,
estatus BIT DEFAULT 1 not null,
)
CREATE TABLE Capital
(
idCapital  int primary key not null,
nombre varchar (50) not null,
socio varchar (50) not null,
estatus BIT DEFAULT 1 not null,
)
CREATE TABLE Compañia
(
idCompañia  int primary key not null,
idConsola int not null,
idEdificio int not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
matricula varchar (50)not null,
)
CREATE TABLE CompañiaCapital
(
idCompañiaCapital  int primary key not null,
idCompañia int not null,
idCapital int not null,
)
CREATE TABLE CompañiaConsola
(
idCompañiaConsola  int primary key not null,
idCompañia int not null,
idConsola int not null,
)
CREATE TABLE CompañiaDistribucion
(
idCompañiaDistribucion  int primary key not null,
idCompañia int not null,
idDistribucion int not null,
)
CREATE TABLE CompañiaJuego
(
idCompañiaJuego  int primary key not null,
idCompañia int not null,
idJuego int not null,
);
CREATE TABLE CompañiaProveedor
(
idCompañiaProveedor  int primary key not null,
idCompañia int not null,
idProveedor int not null
);
CREATE TABLE CompañiaPresentacion
(
idCompañiaPrecentacion  int primary key not null,
idCompañia int not null,
idPrecentacion int not null
);
CREATE TABLE CompañiaTorneo
(
idCompañiaTorneo  int primary key not null,
idCompañia int not null,
idTorneo int not null
);
CREATE TABLE Contrato
(
idContrato  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Desarrolladora
(
idDesarrolladora  int primary key not null,
nombre varchar (50),
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Distribucion
(
idDistribucion  int primary key not null,
tipo varchar(50) not null,
estatus BIT DEFAULT 1 not null,
destino varchar (50) not null
);
CREATE TABLE Dificultad
(
idDificultad  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE DLC
(
idDLC   int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
matricula varchar (50) not null
);
CREATE TABLE Edificio
(
idEdificio  int primary key not null,
ubicacion varchar (50) not null,
ciudad varchar (50) not null,
calle varchar (50) not null,
colonia varchar(50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Equipo
(
idEquipo  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE EdificioEmpleado
(
idEdeficioEmpleado  int primary key not null,
idEmpleado int null,
idEdificio int null
);
CREATE TABLE Empleado
(
idEmpleado  int primary key not null,
idSindicato int null,
nombre varchar (50) not null,
calle varchar (50) not null,
colonia varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE EmpleadoContrato
(
idEmpleadoContrato  int primary key not null,
idEmpleado int null,
idContrato int null
);
CREATE TABLE Ecenario
(
idEcenario  int primary key not null,
nombre varchar (50) not null,
tipo varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE EcenarioDificultad
(
idEcenarioDificultad  int primary key not null,
idEcenario int null,
idDificultad int null,
);
CREATE TABLE Evento
(
idEvento  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
);
CREATE TABLE Equipamento
(
idEquipamento  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
); 
CREATE TABLE Faccion
(
idFaccion  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE FaccionVehiculo
(
idFaccionVehiculo  int primary key not null,
idFaccion int null,
idVehiculo int null
);
CREATE TABLE FaccionEquipamento
(
idFaccionEquipamento  int primary key not null,
idFaccion int null,
idEquipamento int null
);
CREATE TABLE Herramienta
(
idHerramienta  int primary key not null,
idBodega int null,
nombre varchar (50)  not null,
numBodega varchar (50)  not null,
estatus BIT DEFAULT 1 not null
);
Create TABLE Interfaz
(
idInterfaz  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Juego
(
idJuego  int primary key not null,
idSerie int null,
idPelicula int null,
nombre varchar (50) not null,
codigo varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE JuegoTargeta
(
idJuegoTarjeta  int primary key not null,
idJuego int null,
idTaejeta int null
);
CREATE TABLE JuegoInterfaz
(
idJuegoInterfaz  int primary key not null,
idJuego int null,
idInterfaz int null
);
CREATE TABLE JuegoMusica
(
idJuegoMusica  int primary key not null,
idJuego int null,
idMusica int null
);

CREATE TABLE jugador
(
idJugador  int primary key not null,
idSuscripcion int null,
idMembresia int null,
nombre varchar (50) not null,
correo varchar (50) not null,
estatus BIT DEFAULT 1 not null
);

CREATE TABLE JuegoJugador
(
idJuegoJugador  int primary key not null,
idJuego int null,
idJugador int null
);
CREATE TABLE JuegoTarjeta
(
idJuegoTarjeta  int primary key not null,
idJuego int null,
idTarjeta int null
);
CREATE TABLE JuegoLogro
(
idJuegoLogro  int primary key not null,
idJuego int null,
idLogro int null
);
CREATE TABLE JuegoObjeto
(
idJuegoObjeto int primary key not null,
idJuego int null,
idObjeto int null
);
CREATE TABLE JuegoPersonaje
(
idJuegoPersonaje  int primary key not null,
idJuego int null,
idPersonaje int null
);
CREATE TABLE JuegoTienda
(
idJuegoTienda  int primary key not null,
idJuego int null,
idTienda int null
);
CREATE TABLE JuegoPublicidad
(
idJuegoPublicdad  int primary key not null,
idJuego int null,
idPublicidad int null
);
CREATE TABLE JuegoEcenario
(
idJuegoEcenario  int primary key not null,
idJuego int null,
idEcenario int null
);
CREATE TABLE JuegoDLC
(
idJuegoDLC  int primary key not null,
idJuego int null,
idDLC int null
);
CREATE TABLE JuegoRecompensa
(
idJuegoRecompensa  int primary key not null,
idJuego int null,
idRecompensa int null
);
CREATE TABLE JuegoModalidad
(
idJuegoModalidad  int primary key not null,
idJuego int null,
idTienda int null,
);
CREATE TABLE JuegoPLataforma
(
idJuegoPlataforma  int primary key not null,
idJuego int null,
idPlataforma int null
);
CREATE TABLE JuegoEvento
(
idJuegoEvento  int primary key not null,
idJuego int null,
idEvento int null
);
CREATE TABLE Logro
(
idLogro  int primary key not null,
nombre varchar (50) not null,
juego varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Mapa
(
idMapa  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Membresia
(
idMembresia  int primary key not null,
cantidad varchar (50) not null,
estatus BIT DEFAULT 1 not null,
jugador varchar (50) not null
);
CREATE TABLE Modalidad
(
idModalidad  int primary key not null,
nombre varchar (50) not null,
desctrpcion varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Musica
(
idMusica  int primary key not null,
nombre varchar (50) not null,
genero varchar (50) not null,
estatus BIT DEFAULT 1 not null
);

CREATE TABLE Objeto
(
idObjeto  int primary key not null,
nombre varchar (50) not null,
disponivilidad varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Oficina
(
idOficina  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Partida
(
idPartida  int primary key not null,
nombre Varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE PartidaTorneo
(
idPartidaTorneo  int primary key not null,
idPartida int null,
idTorneo int null
);
CREATE TABLE Piso
(
idPiso  int primary key not null,
numero varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE PisoComedor
(
idPisoComedor  int primary key not null,
idPiso int null,
idComedor int null
);
CREATE TABLE PisoSala
(
idPisoSala  int primary key not null,
idPiso int null,
idSala int null
);
CREATE TABLE PisoBodega
(
idPisoBodega  int primary key not null,
idPiso int null,
idBodega int null
);
CREATE TABLE Proveedor
(
idProveedor int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
marca varchar (50),
);
CREATE TABLE Pelicula
(
idPelicula int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Personaje
(
idPersonaje  int primary key not null,
idSkin int null,
nombre Varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE PersonajeFaccion
(
idPersonajeFaccion  int primary key not null,
idPersonaje int null,
idFaccion int null,
);
CREATE TABLE PersonajeSkin
(
idPersonajeSkin  int primary key not null,
idPersonaje int null,
idSkin int null
);
CREATE TABLE Plataforma
(
idPlataforma  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Promocion
(
idPromocion  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Publicidad
(
idPublicidad  int primary key not null,
nombre varchar (50),
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Recompensa
(
idRecompensa  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Sala 
(
idSala  int primary key not null,
nombre varchar (50) not null,
numero varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Suscripcion
(
idSuscripcion  int primary key not null,
marca varchar (50) not null,
estatus BIT DEFAULT 1 not null,
Servicio varchar (50) not null
);
CREATE TABLE Servidor
(
idServidor  int primary key not null,
marca varchar (50) not null,
estatus BIT DEFAULT 1 not null,
modelo varchar (50) not null
); 
CREATE TABLE Sistema
(
idSistema  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null,
codigo varchar (50) not null
);
CREATE TABLE Sindicato
(
idSindicato  int primary key not null,
Calle varchar (50) not null,
Colonia varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Skin
(
idSkin  int primary key not null,
nombre varchar (50) not null,
estatus Varchar (50) not null
);
CREATE TABLE Serie
(
idSerie  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Torneo
(
idTorneo  int primary key not null,
numjugadores varchar (50) not null, 
temajuego varchar (50) not null,
estatus BIT DEFAULT 1 not null
);

CREATE TABLE Tienda
(
idTienda  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE TiendaPromocion
(
idTiendaPromocion  int primary key not null,
idTienda int null,
idPromocion int null
);
CREATE TABLE Transporte
(
idTransporte  int primary key not null,
nombre varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Tarjeta
(
idTarjeta  int primary key not null,
Cantidad varchar (50) not null,
estatus BIT DEFAULT 1 not null
);
CREATE TABLE Vehiculo
(
idVehiculo  int primary key not null,
nombre varchar (50) not null,
faccion varchar (50) not null,
estatus BIT DEFAULT 1 not null
);


CREATE INDEX IX_Aplicacion ON Aplicacion(idAplicacion);
CREATE INDEX IX_Area ON Area(idArea);
CREATE INDEX IX_Bodega ON Bodega(idBodega);
CREATE INDEX IX_Capital ON Capital(idCapital);
CREATE INDEX IX_Comedor ON Comedor(idComedor);
CREATE INDEX IX_Comic ON Comic(idComic);
CREATE INDEX IX_Compañia ON Compañia(idCompañia);
CREATE INDEX IX_Consola ON Consola(idConsola);
CREATE INDEX IX_Contrato ON Contrato(idContrato);
CREATE INDEX IX_Desarrolladora ON Desarrolladora(idDesarrolladora);
CREATE INDEX IX_Distribucion ON Distribucion(idDistribucion);
CREATE INDEX IX_Dificultad ON Dificultad(idDificultad);
CREATE INDEX IX_DLC ON DLC(idDLC);
CREATE INDEX IX_Ecenario ON Ecenario(idEcenario);
CREATE INDEX IX_Edificio ON Edificio(idEdificio);
CREATE INDEX IX_Empleado ON Empleado(idEmpleado);
CREATE INDEX IX_Equipo ON Equipo(idEquipo);
CREATE INDEX IX_Evento ON Evento(idEvento);
CREATE INDEX IX_Faccion ON Faccion(idFaccion);
CREATE INDEX IX_Herramienta ON Herramienta(idHerramienta);
CREATE INDEX IX_Interfaz ON Interfaz(idInterfaz);
CREATE INDEX IX_Juego ON Juego(idJuego);
CREATE INDEX IX_Jugador ON Jugador(idJugador);
CREATE INDEX IX_Logro ON Logro(idLogro);
CREATE INDEX IX_Membresia ON Membresia(idMembresia);
CREATE INDEX IX_Modalidad ON Modalidad(idModalidad);
CREATE INDEX IX_Musica ON Musica(idMusica);
CREATE INDEX IX_Objeto ON Objeto(idObjeto);
CREATE INDEX IX_Oficina ON Oficina(idOficina);
CREATE INDEX IX_Partida ON Partida(idPartida);
CREATE INDEX IX_Pelicula ON Pelicula(idPelicula);
CREATE INDEX IX_Personaje ON Personaje(idPersonaje);
CREATE INDEX IX_Publicacion ON Publicidad(idPublicidad);
CREATE INDEX IX_Piso ON Piso(idPiso);
CREATE INDEX IX_Plataforma ON Plataforma(idPlataforma);
CREATE INDEX IX_Promocion ON Promocion(idPromocion);
CREATE INDEX IX_Proveedor ON Proveedor(idProveedor);
CREATE INDEX IX_Recompensa ON Recompensa(idRecompensa);
CREATE INDEX IX_Sala ON Sala(idSala);
CREATE INDEX IX_Serie ON Serie(idSerie);
CREATE INDEX IX_Sindicato ON Sindicato(idSindicato);
CREATE INDEX IX_Servidor ON Servidor(idServidor);
CREATE INDEX IX_Sistema ON Sistema(idSistema);
CREATE INDEX IX_Skin ON Skin(idSkin);
CREATE INDEX IX_Suscripcion ON Suscripcion(idSuscripcion);
CREATE INDEX IX_Tarjeta ON Tarjeta(idTarjeta);
CREATE INDEX IX_Tienda ON Tienda(idTienda);
CREATE INDEX IX_Torneo ON Torneo(idTorneo);
CREATE INDEX IX_Transporte ON Transporte(idTransporte);
CREATE INDEX IX_Vehiculo ON Vehiculo(idVehiculo);
ALTER TABLE Area ADD CONSTRAINT PK_Area PRIMARY KEY (idArea);
ALTER TABLE Aplicacion ADD CONSTRAINT PK_Alumno PRIMARY KEY (idAplicacion);
ALTER TABLE Bodega ADD CONSTRAINT PK_Bodega PRIMARY KEY (idBodega);
ALTER TABLE Capital ADD CONSTRAINT PK_Capital PRIMARY KEY (idCapital);
ALTER TABLE Comedor ADD CONSTRAINT PK_Comedor PRIMARY KEY (idComedor);
ALTER TABLE Comic ADD CONSTRAINT PK_Comic PRIMARY KEY (idComic);
ALTER TABLE Compañia ADD CONSTRAINT PK_Compañia PRIMARY KEY (idCompañia);
ALTER TABLE Consola ADD CONSTRAINT PK_Consola PRIMARY KEY (idConsola);
ALTER TABLE Contrato ADD CONSTRAINT PK_Contrato PRIMARY KEY (idContrato);
ALTER TABLE Desarrolladora ADD CONSTRAINT PK_Desarrolladora PRIMARY KEY (idDesarrolladora);
ALTER TABLE Dificultad ADD CONSTRAINT PK_Dificultad PRIMARY KEY (idDificultad);
ALTER TABLE Distribucion ADD CONSTRAINT PK_Distribucion PRIMARY KEY (idDistribucion);
ALTER TABLE DLC ADD CONSTRAINT PK_DLC PRIMARY KEY (idDLC);
ALTER TABLE Ecenario ADD CONSTRAINT PK_Ecenario PRIMARY KEY (idEcenario);
ALTER TABLE Edificio ADD CONSTRAINT PK_Edificio PRIMARY KEY (idEdificio);
ALTER TABLE Empleado ADD CONSTRAINT PK_Empleado PRIMARY KEY (idEmpleado);
ALTER TABLE Equipo ADD CONSTRAINT PK_Equipo PRIMARY KEY (idEquipo);
ALTER TABLE Evento ADD CONSTRAINT PK_Evento PRIMARY KEY (idEvento);
ALTER TABLE Faccion ADD CONSTRAINT PK_Faccion PRIMARY KEY (idFaccion);
ALTER TABLE Herramienta ADD CONSTRAINT PK_Herramienta PRIMARY KEY (idHerramienta);
ALTER TABLE Interfaz ADD CONSTRAINT PK_Interfaz PRIMARY KEY (idInterfaz);
ALTER TABLE Juego ADD CONSTRAINT PK_Juego PRIMARY KEY (idJuego);
ALTER TABLE Jugador ADD CONSTRAINT PK_Jugador PRIMARY KEY (idJugador);
ALTER TABLE Logro ADD CONSTRAINT PK_Logro PRIMARY KEY (idLogro);
ALTER TABLE Mapa ADD CONSTRAINT PK_Mapa PRIMARY KEY (idMapa);
ALTER TABLE Membresia ADD CONSTRAINT PK_Membresia PRIMARY KEY (idMembresia);
ALTER TABLE Modalidad ADD CONSTRAINT PK_Modalidad PRIMARY KEY (idModalidad);
ALTER TABLE Musica ADD CONSTRAINT PK_Musica PRIMARY KEY (idMusica);
ALTER TABLE Objeto ADD CONSTRAINT PK_Objeto PRIMARY KEY (idObjeto);
ALTER TABLE Oficina ADD CONSTRAINT PK_Oficina PRIMARY KEY (idOficina);
ALTER TABLE Partida ADD CONSTRAINT PK_Partida PRIMARY KEY (idPartida);
ALTER TABLE Pelicula ADD CONSTRAINT PK_Pelicula PRIMARY KEY (idPelicula);
ALTER TABLE Personaje ADD CONSTRAINT PK_Personaje PRIMARY KEY (idPersonaje);
ALTER TABLE Piso ADD CONSTRAINT PK_Piso PRIMARY KEY (idPiso);
ALTER TABLE Plataforma ADD CONSTRAINT PK_Plataforma PRIMARY KEY (idPlataforma);
ALTER TABLE Promocion ADD CONSTRAINT PK_Promcion PRIMARY KEY (idPromocion);
ALTER TABLE Proveedor ADD CONSTRAINT PK_Proveedor PRIMARY KEY (idProveedor);
ALTER TABLE Publicidad ADD CONSTRAINT PK_Publicidad PRIMARY KEY (idPublicidad);
ALTER TABLE Recompensa ADD CONSTRAINT PK_Recompensa PRIMARY KEY (idRecompensa);
ALTER TABLE Sala ADD CONSTRAINT PK_Sala PRIMARY KEY (idSala);
ALTER TABLE Serie ADD CONSTRAINT PK_Serie PRIMARY KEY (idSerie);
ALTER TABLE Servidor ADD CONSTRAINT PK_Servidor PRIMARY KEY (idServidor);
ALTER TABLE Sindicato ADD CONSTRAINT PK_Sindicato PRIMARY KEY (idSindicato);
ALTER TABLE Sistema ADD CONSTRAINT PK_Sistema PRIMARY KEY (idSistema);
ALTER TABLE Skin ADD CONSTRAINT PK_Skin PRIMARY KEY (idSkin);
ALTER TABLE Suscripcion ADD CONSTRAINT PK_Suscripcion PRIMARY KEY (idSuscripcion);
ALTER TABLE Tarjeta ADD CONSTRAINT PK_Tarjeta PRIMARY KEY (idTarjeta);
ALTER TABLE Tienda ADD CONSTRAINT PK_Tienda PRIMARY KEY (idTienda);
ALTER TABLE Torneo ADD CONSTRAINT PK_Torneo PRIMARY KEY (idTorneo);
ALTER TABLE Transporte ADD CONSTRAINT PK_Transporte PRIMARY KEY (idTransporte);
ALTER TABLE Vehiculo ADD CONSTRAINT PK_Vehiculo PRIMARY KEY (idVehiculo);

ALTER TABLE CompañiaCapital 
ADD CONSTRAINT FK_CompañiaCapitalCompañia 
FOREIGN KEY (idCompañia) REFERENCES Compañia (idCompañia)
;
ALTER TABLE CompañiaCapital 
ADD CONSTRAINT FK_CompañiaCapitalCapital 
FOREIGN KEY (idCapital) REFERENCES Capital (idCapital)
;
ALTER TABLE CompañiaConsola 
ADD CONSTRAINT FK_CompañiaConsolaCompañia
FOREIGN KEY (idCompañia) REFERENCES Compañia (idCompañia)
;
ALTER TABLE CompañiaConsola 
ADD CONSTRAINT FK_CompañiaConsolaConsola
FOREIGN KEY (idConsola) REFERENCES Consola (idConsola)
;
ALTER TABLE CompañiaDistribucion 
ADD CONSTRAINT FK_CompañiaDistribucionCompañia 
FOREIGN KEY (idCompañia) REFERENCES Compañia (idCompañia)
;
ALTER TABLE CompañiaDistribucion 
ADD CONSTRAINT FK_CompañiaDistribucionDistribucion 
FOREIGN KEY (idDistribucion) REFERENCES Distribucion (idDistribucion)
;
ALTER TABLE CompañiaJuego 
ADD CONSTRAINT FK_CompañiaJuegoCompañia 
FOREIGN KEY (idCompañia) REFERENCES Compañia (idCompañia)
;
ALTER TABLE CompañiaJuego 
ADD CONSTRAINT FK_CompañiaJuegoJuego
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE CompañiaPresentacion 
ADD CONSTRAINT FK_CompañiaPresentacionCompañia 
FOREIGN KEY (idCompañia) REFERENCES Compañia (idCompañia)
;
ALTER TABLE CompañiaPresentacion 
ADD CONSTRAINT FK_CompañiaPresentacionPresentacion 
FOREIGN KEY (idPresentacion) REFERENCES Presentacion (idPresentacion)
;
ALTER TABLE CompañiaProveedor 
ADD CONSTRAINT FK_CompañiaProveedorCompañia 
FOREIGN KEY (idCompañia) REFERENCES Compañia (idCompañia)
;
ALTER TABLE CompañiaProveedor 
ADD CONSTRAINT FK_CompañiaProveedorProveedor 
FOREIGN KEY (idProveedor) REFERENCES Proveedor (idProveedor)
;
ALTER TABLE CompañiaTorneo 
ADD CONSTRAINT FK_CompañiaTorneoCompañia 
FOREIGN KEY (idTorneo) REFERENCES Torneo (idTorneo)
;
ALTER TABLE CompañiaTorneo 
ADD CONSTRAINT FK_CompañiaTorneoTorneo
FOREIGN KEY (idTorneo) REFERENCES Torneo (idTorneo)
;

ALTER TABLE EcenarioDificultad 
ADD CONSTRAINT FK_EcenarioDificultadEcenario 
FOREIGN KEY (idEcenario) REFERENCES Ecenario (idEcenario)
;
ALTER TABLE EcenarioDificultad 
ADD CONSTRAINT FK_EcenarioDificultadDificultad
FOREIGN KEY (idDificultad) REFERENCES Dificultad (idDificultad)
;
ALTER TABLE EdificioEmpleado
ADD CONSTRAINT FK_EdificioEmpleadoEdificio 
FOREIGN KEY (idEdificio) REFERENCES Edificio (idEdificio)
;
ALTER TABLE EdificioEmpleado
ADD CONSTRAINT FK_EdificioEmpleadoEmpleado 
FOREIGN KEY (idEmpleado) REFERENCES Empleado (idEmpleado)
;
ALTER TABLE EmpleadoContrato
ADD CONSTRAINT FK_EmpleadoContratoEmpleado 
FOREIGN KEY (idEmpleado) REFERENCES Empleado (idEmpleado)
;
ALTER TABLE EmpleadoContrato
ADD CONSTRAINT FK_EmpleadoContratoContrato
FOREIGN KEY (idContrato) REFERENCES Contrato (idContrato)
;
ALTER TABLE FaccionEquipamento 
ADD CONSTRAINT FK_FaccionEquipamentoFaccion
FOREIGN KEY (idFaccion) REFERENCES Faccion (idFaccion)
;
ALTER TABLE FaccionEquipamento 
ADD CONSTRAINT FK_FaccionEquipamentoEquipamento
FOREIGN KEY (idEquipamento) REFERENCES Equipamento (idEquipamento)
;
ALTER TABLE FaccionVehiculo 
ADD CONSTRAINT FK_FaccionVehiculoFaccion 
FOREIGN KEY (idFaccion) REFERENCES Faccion (idFaccion)
;
ALTER TABLE FaccionVehiculo 
ADD CONSTRAINT FK_FaccionVehiculoVehiculo
FOREIGN KEY (idVehiculo) REFERENCES Vehiculo (idVehiculo)
;
ALTER TABLE JuegoDLC
ADD CONSTRAINT FK_JuegoDLCJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE JuegoDLC
ADD CONSTRAINT FK_JuegoDLCDLC 
FOREIGN KEY (idDLC) REFERENCES DLC (idDLC)
;
ALTER TABLE JuegoEcenario
ADD CONSTRAINT FK_JuegoEcenarioJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE JuegoEcenario
ADD CONSTRAINT FK_JuegoEcenarioEcenario 
FOREIGN KEY (idEcenario) REFERENCES Ecenario (idEcenario)
;
ALTER TABLE JuegoEvento
ADD CONSTRAINT FK_JuegoEventoJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE JuegoEvento
ADD CONSTRAINT FK_JuegoEventoEvento 
FOREIGN KEY (idEvento) REFERENCES Evento (idEvento)
;
ALTER TABLE JuegoInterfaz
ADD CONSTRAINT FK_JuegoInterfazJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE JuegoInterfaz
ADD CONSTRAINT FK_JuegoInterfazInterfaz
FOREIGN KEY (idInterfaz) REFERENCES Interfaz (idInterfaz)
;
ALTER TABLE JuegoLogro
ADD CONSTRAINT FK_JuegoLogroJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE JuegoLogro
ADD CONSTRAINT FK_JuegoLogroLogro 
FOREIGN KEY (idLogro) REFERENCES Logro (idLogro)
;
ALTER TABLE JuegoModalidad
ADD CONSTRAINT FK_JuegoModalidadJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE JuegoModalidad
ADD CONSTRAINT FK_JuegoModalidadModalidad 
FOREIGN KEY (idModalidad) REFERENCES Modalidad (idModalidad)
;
ALTER TABLE JuegoMusica
ADD CONSTRAINT FK_JuegoMusicaJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE JuegoMusica
ADD CONSTRAINT FK_JuegoMusicaMusica 
FOREIGN KEY (idMusica) REFERENCES Musica (idMusica)
;
ALTER TABLE JuegoObjeto
ADD CONSTRAINT FK_JuegoObjetoJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE JuegoObjeto
ADD CONSTRAINT FK_JuegoObjetoObjeto 
FOREIGN KEY (idObjeto) REFERENCES Objeto (idObjeto)
;
ALTER TABLE JuegoPersonaje
ADD CONSTRAINT FK_JuegoPersonajeJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE JuegoPersonaje
ADD CONSTRAINT FK_JuegoPersonajePersonaje 
FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
;
ALTER TABLE JuegoPlataforma
ADD CONSTRAINT FK_JuegoPlataformaJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE JuegoPlataforma
ADD CONSTRAINT FK_JuegoPlataformaPlatofarma 
FOREIGN KEY (idPlatofarma) REFERENCES Plataforma (idPlataforma)
;
ALTER TABLE JuegoPublicidad
ADD CONSTRAINT FK_JuegoPublicidadJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE JuegoPublicidad
ADD CONSTRAINT FK_JuegoPublicidadPublicidad 
FOREIGN KEY (idPublicidad) REFERENCES Publicidad (idPublicidad)
;
ALTER TABLE JuegoRecompensa
ADD CONSTRAINT FK_JuegoRecompensaJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE JuegoRecompensa
ADD CONSTRAINT FK_JuegoRecompensaRecompensa
FOREIGN KEY (idRecompensa) REFERENCES Recompensa (idRecompensa)
;
ALTER TABLE JuegoTarjeta
ADD CONSTRAINT FK_JuegoTargetaJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE JuegoTarjeta
ADD CONSTRAINT FK_JuegoTarjetaTarjeta 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE JuegoTienda
ADD CONSTRAINT FK_JuegoTiendaJuego 
FOREIGN KEY (idJuego) REFERENCES Juego (idJuego)
;
ALTER TABLE JuegoTienda
ADD CONSTRAINT FK_JuegoTiendaTienda 
FOREIGN KEY (idTienda) REFERENCES Tienda (idTienda)
;
ALTER TABLE PartidaTorneo
ADD CONSTRAINT FK_PartidaTorneoPartida 
FOREIGN KEY (idPartida) REFERENCES Partida (idPartida)
;
ALTER TABLE PartidaTorneo
ADD CONSTRAINT FK_PartidaTorneoTorneo 
FOREIGN KEY (idTorneo) REFERENCES Torneo (idTorneo)
;
ALTER TABLE PersonajeFaccion
ADD CONSTRAINT FK_PersonajeFaccionPersonaje 
FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
;
ALTER TABLE PersonajeFaccion
ADD CONSTRAINT FK_PersonajeFaccionFaccion
FOREIGN KEY (idFaccion) REFERENCES Faccion (idFaccion)
;
ALTER TABLE PersonajeSkin
ADD CONSTRAINT FK_PersonajeSkinPersonaje
FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
;
ALTER TABLE PersonajeSkin
ADD CONSTRAINT FK_PersonajeSkinSkin
FOREIGN KEY (idSkin) REFERENCES Skin (idSkin)
;
ALTER TABLE PisoBodega
ADD CONSTRAINT FK_PisoBodegaPiso
FOREIGN KEY (idPiso) REFERENCES Piso (idPiso)
;
ALTER TABLE PisoBodega
ADD CONSTRAINT FK_PisoBodegaBodega
FOREIGN KEY (idBodega) REFERENCES Bodega (idBodega)
;
ALTER TABLE PisoComedor
ADD CONSTRAINT FK_PisoComedorPiso
FOREIGN KEY (idPiso) REFERENCES Piso (idPiso)
;
ALTER TABLE PisoComedor
ADD CONSTRAINT FK_PisoComedorComedor
FOREIGN KEY (idComedor) REFERENCES Comedor (idComedor)
;
ALTER TABLE PisoSala
ADD CONSTRAINT FK_PisoSalaPiso
FOREIGN KEY (idPiso) REFERENCES Piso (idPiso)
;
ALTER TABLE PisoSala
ADD CONSTRAINT FK_PisoSalaSala
FOREIGN KEY (idSala) REFERENCES Sala (idSala)
;
ALTER TABLE TiendaPromocion
ADD CONSTRAINT FK_TiendaPromocionTienda
FOREIGN KEY (idTienda) REFERENCES Tienda (idTienda)
;
ALTER TABLE TiendaPromocion
ADD CONSTRAINT FK_TiendaPromocionPromocion
FOREIGN KEY (idPromocion) REFERENCES Promocion (idPromocion)
;

INSERT INTO Bodega(numero)
VALUES ('1', '2', '3','4','5')

INSERT INTO Edificio(ubicacion, ciudad, calle, colonia)
VALUES ('45', 'monclova', 'rosario', 'santabarbara', 'lalo', 'santiago', 'revolucion', 'rogelio', 'vegas', 'siempreviva', 'salvador', 'ramos arispe')

INSERT INTO Equipamento(nombre)
VALUES('ULTRA', 'NORMAL', 'BASICO', 'PREDETERMINADO')

INSERT INTO Sindicato(Calle, Colonia)
VALUES ('SIN','DIC', 'ATE')

INSERT INTO Serie(nombre)
VALUES ('HALO SPARTANS', 'GERS OF WAR', 'CIBER PUNK', 'MARIO')

INSERT INTO Suscripcion(marca, Servicio)
VALUES ('XBOX', 'VISUALES DE EVENTOS', 'play', 'descuentos en productos sony', 'nintendo', 'skins gratuitas' )

INSERT INTO Mapa(nombre)
VALUES ('mapaplaya', 'mapaCampo', 'mapaciudad', 'mapaarena', 'mapaparaiso', 'mapaentrenamiento')

INSERT INTO Membresia(cantidad, jugador)
VALUES ('100', 'paceful', '1000', 'teoso')

INSERT INTO Oficina(nombre)
VALUES ('oficina1 Xbox', 'Oficina1 PLAY', 'Oficina1 nintendo',  'oficina2 Xbox', 'Oficina2 PLAY','Oficina2nintendo')

INSERT INTO Pelicula(nombre)
Values ('gers of war', 'mario bros', 'halo','ninja gaiden')

INSERT INTO Aplicacion(nombre, numero)
VALUES ('youtube','12312','crunchiroll','32424','google','23445','netflix', '98798')

INSERT INTO Area(nombre, codigo)
VALUES ('programacion', '434dsa','animacion', 'loja98798', 'mantenimiento', 'jd3425', 'administracion', 'adasda22')

INSERT INTO Capital(nombre, socio)
VALUES ('dispositivos', 'Raul', 'juegos', 'Salazar')

INSERT INTO Comedor(numero)
VALUES ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10')

INSERT INTO Comic(nombre, volumen)
VALUES ('aventura', '2', 'comunicacion', '3', 'badBlood', '4')

INSERT INTO Compañia (nombre, matricula)
VALUES ('Xbox', '1E3ED', 'NINTENDO', 'EDWRFV42', 'PLAYSTATION', '3E2DF')

INSERT INTO Consola(nombre, modelo, vercion)
VALUES ('360', 'slim', '2', '360', 'var', '1', 'play3', 'kiq', '3', 'play4', 'kan', '4', 'switch', 'V4', '5')

INSERT INTO Contrato(nombre)
VALUES ('trato de acenso', 'trato de mobiliario', 'aprobacion de programas', 'contrato de aumento de nomina')

INSERT INTO Desarrolladora(nombre)
VALUES ('PIXONIC', 'EA', 'MICROSOFT STUDIOS', 'SONY')

INSERT INTO Dificultad (nombre)
VALUES ('ultimate', 'super Dificil', 'definitiva', 'insuperable')

INSERT INTO DLC(nombre)
VALUES ('caida', 'llegada', 'antiguos regresados', 'retorno legendario')

INSERT INTO Ecenario(nombre, tipo)
VALUES ('playa', 'Campo', 'ciudad', 'arena', 'paraiso', 'entrenamiento')

INSERT INTO Empleado(nombre, calle, colonia)
VALUES('raul Perez', 'rosalba', 'colonial', 'ramos duran', 'diaz', 'bart', 'alejandro max', 'castaños', 'arispe')

INSERT INTO Equipo(nombre)
VALUES ('Valorants', 'los normales', 'los reales', 'unicos', 'diferente')

INSERT INTO Evento(nombre)
VALUES ('de novatos', 'profesional', 'de reliquias', 'sagrado')

INSERT INTO Faccion(nombre)
VALUES ('humanos', 'Orco', 'armadas', 'forsas')

INSERT INTO Herramienta(nombre, numBodega)
VALUES ('Cable', '2', 'pantallas', '3', 'desarmadores', '3, 4, 1', 'pinzas', '1, 2,3')

INSERT INTO Interfaz(nombre)
VALUES ('pc', 'movil', 'consola')

INSERT INTO Juego(nombre)
VALUES ('halo', 'mario bros', 'Last of us')

INSERT INTO Jugador(nombre, correo)
VALUES ('paceful', 'asdasda@gmail.com', 'teoso', 'teoso@feel.com', 'deel', 'deli@gmail,com')

INSERT INTO Logro(nombre)
VALUES ('Valor', 'monumento', 'union', 'tesoro')

INSERT INTO Modalidad(nombre)
VALUES ('guerra sin fin', 'cruzada epica', 'aventura sin fin', 'supervivencia')

INSERT INTO Musica( nombre, genero)
VALUES ('FEEL THE FALL','ROCK', 'THE ONLY THING ONE FOR REAL','ROCK', 'MAGIC WORLD','CLASIC', 'THE MOST WANTED','POP', 'ONLY YOU','CLASIC')

INSERT INTO Objeto(nombre)
VALUES ('GORRA', 'TAREA VIEJA', 'MINIESTATUA', 'JUGUETE', 'AMULETO', 'PINZAS')

INSERT INTO Partida(nombre)
VALUES ('Partida de entrenamiento','Partida de tutorial','Partida de multijugador', 'Partidad de evento especial')

INSERT INTO Personaje(nombre)
VALUES ('mario','peach','bowser','luigi', 'toad', 'marcus', 'doom','cole','B carmain', 'soni', 'nukles','tails')

INSERT INTO Piso(numero)
VALUES ('1', '2','3','4','6')

INSERT INTO Plataforma(nombre)
VALUES ('PC', 'PLAY','XBOX','STEAM')

INSERT INTO Promocion (nombre)
VALUES ('OFERTA DE ARMAS ', 'PROMOCION DE HONGOS', 'OFERTA LANCER', 'PROMOCION DE GUARDADITO')

INSERT INTO Proveedor (nombre)
VALUES ('MICROSOFT', 'SONY', 'GOOGLE','STEAM')

INSERT INTO Publicidad (nombre)
VALUES ('XBOX GAME JUEGA AHORA', 'NINTENDO SWITCH', 'PROMOCION DE HONGOS GIGANTES', 'CARRERA DE CHAMPIÑONES')

INSERT INTO Recompensa(nombre)
VALUES ('COFRE DE DIAMANTE', 'COFRE DE MADERA', 'COFRE DE METAL', 'COFRE PROMOCIONAL', 'COFRE DE EVENTOS')

INSERT INTO Sala(nombre)
VALUES ('desarrollo de codigo', 'diseño de animacion', 'compocision de musica', 'sala de conferencias')

INSERT INTO Servidor(marca, modelo)
VALUES ('DELL', '35', 'HP','DD3ER4', 'LENOVO', 'ZT32S','ACER', 'OIP3OE')

INSERT INTO Sistema(nombre, codigo)
VALUES ('xboxSistem', 'de3jiqwu', 'playmax','dv3ddq' , 'nintendo switch', 'dasdwd333')

INSERT INTO Skin(nombre)
VALUES ('EVA','GUGNIR','MIONLIR','MARK', 'PLOMERO','ZORRO', 'RANA')

INSERT INTO Suscripcion(marca, Servicio)
VALUES ('XBOX', 'VISUALES DE EVENTOS', 'play', 'descuentos en productos sony', 'nintendo', 'skins gratuitas' )

INSERT INTO Tarjeta(Cantidad)
VALUES ('100', '200','300','400','500','1000')

INSERT INTO Tienda(nombre)
VALUES ('MERCADO NEGRO','MERCADO REGULAR','ARSENAL', 'MERCADER')

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
;