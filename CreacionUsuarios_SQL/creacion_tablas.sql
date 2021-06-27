------------------------------------------------------------------------ELIMINACION PREVIA DE TABLAS SI ESQUE YA ESTABAN CREADAS--------------------------------------------------------------------------

drop table habitacion;
drop table cliente;
drop table menu;

------------------------------------------------------------------------TABLAS NECESARIAS EN LA BASE DE DATOS----------------------------------------------------------------------------------------------

create table habitacion(
titulo varchar2(200),
descripcion varchar2 (400),
id_habitacion varchar2(3),
num_habitacion number,
piso varchar2(2),
num_camas number,
num_cuartos number,
valor_noche number,
capacidad_pasajeros number,
disponibilidad char
);

alter table habitacion
add constraint id_habitacion_pk primary key (id_habitacion);

create table cliente(
nombre varchar(15) not null,
apellido varchar(20) not null,
usuario_pasajero varchar(20)not null,
contrasena varchar(20)not null,
correo_electronico varchar(50)not null,
direccion_1 varchar(30) not null,
direccion_2 varchar(30)
);

alter table cliente 
add constraint usuario_pasajero_pk primary key(usuario_pasajero);

create table menu (
    id_plato number(3) not null,
    nombre_plato varchar2(40) not null,
    precio_plato number(6) not null,
    descripcion_plato varchar2(100) not null
);
alter table menu 
add constraint id_plato_pk primary key (id_plato);

-------------------------------------INSERT TABLAS MENU Y HABITACIONES CLIENTES SE POBLARA ATRAVEZ DEL REGISTRO EN LA PAGINA WEB-----------------------------------------------------------

INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('habitacion vip','La habitacion tiene 4 estrellas, presenta una decoración que mezcla lo clásico y lo contemporáneo y está ubicado en el exclusivo sector de la piscina','1',101,'1',2,1,70000,5,'t');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('habitacion vip','La habitacion tiene 4 estrellas y ademas de estar justo al lado de la estación de autobuses principal de la ciudad, ofrece restaurante, bar y habitaciones con conexión WiFi gratuita y TV ','2',102,'1',2,1,70000,5,'f');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('suite junior','Alojamiento lujoso y confortable para 2 personas con jacuzzi circular, baño de hidromasaje y ducha con cascada emocional','3',103,'1',3,2,90000,6,'f');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('suite junior premium','Alojamiento lujoso y confortable para 2 personas con jacuzzi circular, baño de hidromasaje y ducha con cascada emocional y a diferencia de la suite junior normal la version premium tiene acceso a la piscina nocturna.','4',104,'1',3,2,150000,6,'t');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('suite familiar','Suite de 30 m² para un alojamiento élegante y confortable para 4 personas con jacuzzi circular, baño de hidromasaje y ducha con cascada emocional, ideal para familias','5',105,'1',4,3,120000,8,'f');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('suite familiar premium','Suite de 30 m² para un alojamiento élegante y confortable para 4 personas con jacuzzi circular, baño de hidromasaje y ducha con cascada emocional, ideal para familias y a diferencia de la suite familiar la version premium trae tv satelital para los niños sin costos','6',201,'2',4,3,200000,8,'t');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('Suite Elegante','Ambiente inolvidable y romántica, decorado con estilo y gusto, baño con ducha de cromoterapia, y jacuzzi.','7',202,'2',1,1,120000,8,'f');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('Suite Elegant vip','Ambiente inolvidable y romántica, decorado con estilo y gusto, baño con ducha de cromoterapia, y jacuzzi y a diferencia de la suite elegante la version vip permite traer un acompañante y tener la barra libre','8',203,'2',1,2,220000,8,'t');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('habitacion ejecutiva ','nuestras habitaciones se encuentran equipadas con piso de madera, televisor LCD, TV por cable, caja de seguridad apta para notebook, té y café de cortesía, calefacción central, aire acondicionado, Wi-fi, secador de pelo, servicio de lavandería y servicio a la habitación. Incluye desayuno buffet.','9',204,'2',4,3,140000,8,'f');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('habitacion ejecutiva vip ','nuestras habitaciones se encuentran equipadas con piso de madera, televisor LCD, TV por cable, caja de seguridad apta para notebook, té y café de cortesía, calefacción central, aire acondicionado, Wi-fi, secador de pelo, servicio de lavandería y servicio a la habitación. Incluye desayuno buffet y ademas podra solicitar un trago de su eleccion al cuarto','10',205,'2',4,3,200000,8,'t');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('habitacion economica','Cómoda habitación con una cama matrimonial, escritorio y baño. Especialmente diseñada para tus viajes de negocio. Wifi liberado. No fumador.','11',301,'3',1,1,40000,2,'f');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('habitacion economica','Cómoda habitación con una cama matrimonial, escritorio y baño. Especialmente diseñada para tus viajes de negocio. Wifi liberado. No fumador.','12',302,'3',1,1,40000,2,'t');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('Suite Presidencial','Clásica Suite, ubicada en el piso 16, compuesta de un recibidor, primer ambiente con dormitorio y sala de estar, baño con Jacuzzi y escritorio privado.','13',303,'3',6,4,160000,10,'f');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('Suite Presidencial vip','Clásica Suite, ubicada en el piso 16, compuesta de un recibidor, primer ambiente con dormitorio y sala de estar, baño con Jacuzzi y escritorio privado. Segundo ambiente, sala de estar, comedor, cocina y baño para visitas. Wifi liberado. No fumador.','14',304,'3',6,4,160000,10,'t');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('habitacion doble','Habitación doble Superior con camas gemelas. El baño, de 4 piezas, dispone bañera con mampara transparente. También cuenta con secador de pelo, papelera, apliques, toalleros, enchufe y set de amenities.','15',305,'3',6,4,130000,10,'f');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('habitacion Veranum','la ventaja que tiene la habitacion Veranum es su ambiente familiar, tiene acceso a parrilla , una pequeña piscina y juegos para los niños. ','16',401,'4',6,4,120000,2,'t');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('habitacion especial','la habitacion especial esta ubicada en las areas verdes de Veranum y tienen la posibilidad de traer mascotas al hotel. Por sus preparadas caracteristicas las areas verdes estan adaptadas para todo tipos de mascotas.','17',402,'4',6,4,120000,2,'f');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('habitacion gamer ','la habitacion gamer tiene un acceso directo a la fibra optica del hotel para una mejor conexión y ademas de tener servicio al cuarto.','18',403,'4',6,4,110000,2,'t');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('habitacion estudiantil','La habitacion estudiantil esta excluida en el sector izquierdo del hotel donde los estudiantes ademas de poder disfrutar sus vacaciones podran tener la tranquilidad que desean para estudiar.','19',404,'4',6,4,110000,2,'f');
INSERT INTO habitacion (titulo,descripcion,id_habitacion,num_habitacion,piso,num_camas,num_cuartos,valor_noche,capacidad_pasajeros,disponibilidad)
VALUES ('habitacion real','la habitacion real es la habitacion con mas caracteristicas de nuestro hotel, esta habitacion cuenta con las mejores opciones del hotel, menus personalizados, tragos exportados, piscina privada y ademas acceso total al wifi y tv ','20',405,'4',4,2,350000,5,'t');

insert into menu values (1,'Risoto de camarones', 7500,'risoto de autentico arroz arboreo con camarones ecuatorianos salteados');
insert into menu values (2,'Risoto de pollo al curry', 7500,'risoto de autentico arroz arboreo con pollo salteado en gee con especias indias');
insert into menu values (3,'Pasta tortellini', 6500,'Pasta al huevo fresca');
insert into menu values (4,'Ravioli Pesto', 6500,'Pasta al huevo fresca rellena con pesto auténtico de piñones');
insert into menu values (5,'Ravioli camembert', 6500,'Pasta al huevo fresca rellena con camembert ');
insert into menu values (6,'Ravioli entraña wayuu ', 12500,'Pasta al huevo fresca rellena finos cortes de carne calidad A5 ');
insert into menu values (7,'Ravioli procciuto ', 12500,'Pasta al huevo fresca rellena de procciuto español ');
insert into menu values (8,'Niooqui ', 6500,'Pasta de papa chilota ');
insert into menu values (9,'Salsa boloñesa ', 5500,'Salsa de tomates roma acompañada de carne wayuu clase A5 ');
insert into menu values (10,'Salsa Alfredo', 5500,'Bechamel con de prociuto de cerdo ');
insert into menu values (11,'Salsa de setas', 5500,'Bechamel infusionada con setas y un toque de aceite de trufa ');
insert into menu values (12,'Salsa de setas', 5500,'Bechamel infusionada con setas y un toque de aceite de trufa ');
insert into menu values (13,'Bebida 355 cc', 3500,'Coca-Cola / Fanta / Sprite ');
insert into menu values (14,'Bebida 355 cc', 3500,'Bilz / Pap / Kem / Limón soda / 7up / ');
