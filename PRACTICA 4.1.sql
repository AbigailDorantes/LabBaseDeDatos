-----------------------------------------------------------------------empleado

INSERT INTO EMPLEADO
VALUES (
-- COD_EMPLEADO, NOMBRE, APELLIDOS, DIRECCION, TELEFONO
			1,
			'Abigail',
			'Dorantes',
			'Diego de montemayor',
			'8116036544'
			
)

INSERT INTO EMPLEADO
VALUES (
-- COD_EMPLEADO, NOMBRE, APELLIDOS, DIRECCION, TELEFONO
			2,
			'Fernanda',
			'Dorantes',
			'Diego ibarra',
			'8105256245'
			
)

INSERT INTO EMPLEADO
VALUES (
-- COD_EMPLEADO, NOMBRE, APELLIDOS, DIRECCION, TELEFONO
			3,
			'monserrat',
			'Dorantes',
			'parras 223',
			'8525625454'
			
)

INSERT INTO EMPLEADO
VALUES (
-- COD_EMPLEADO, NOMBRE, APELLIDOS, DIRECCION, TELEFONO
			4,
			'Alondra',
			'Dorantes',
			'doblado y carvajal',
			'8351656543'
			
)

INSERT INTO EMPLEADO
VALUES (
-- COD_EMPLEADO, NOMBRE, APELLIDOS, DIRECCION, TELEFONO
			5,
			'marina',
			'Dorantes',
			'mezquital',
			'8654651346'
			
)

INSERT INTO EMPLEADO
VALUES (
-- COD_EMPLEADO, NOMBRE, APELLIDOS, DIRECCION, TELEFONO
			6,
			'Fernanda',
			'Dorantes',
			'edison 1245',
			'56513246541'
			
)

INSERT INTO EMPLEADO
VALUES (
-- COD_EMPLEADO, NOMBRE, APELLIDOS, DIRECCION, TELEFONO
			7,
			'Alondra',
			'Dorantes',
			'fresnos 456',
			'16465165465'
			
)

INSERT INTO EMPLEADO
VALUES (
-- COD_EMPLEADO, NOMBRE, APELLIDOS, DIRECCION, TELEFONO
			8,
			'alberto',
			'Dorantes',
			'portillo 458',
			'81465465433'
			
)

INSERT INTO EMPLEADO
VALUES (
-- COD_EMPLEADO, NOMBRE, APELLIDOS, DIRECCION, TELEFONO
			9,
			'Laura',
			'Dorantes',
			'coutla de san lucas 165',
			'85465465154'
			
)

INSERT INTO EMPLEADO
VALUES (
-- COD_EMPLEADO, NOMBRE, APELLIDOS, DIRECCION, TELEFONO
			10,
			'carlos',
			'Dorantes',
			'tunas de san luis 476',
			'64323543546'
			
)

------------------------------------------------------------------------------cliente

INSERT INTO CLIENTE
VALUES (
-- COD_CLI, NOMBRE, APELLIDOS, MUNICIPIO, COD_EMPLEADO
			1,
			'Aljendra',
			'Lopez',
			'monterrey',
			'3'
)

insert into CLIENTE
values ( 2, 'Mariana', 'Contreras', 'Guadalupe', '4')

insert into CLIENTE
values (45, 'Luis', 'canales', 'Monterrey', 10)

insert into CLIENTE
values (21, 'ana', 'fernandez', 'Apodaca', 2)

insert into CLIENTE
values (4, 'angeles', 'tuty', 'monterrey', 3)

insert into CLIENTE
values (12, 'gaby', 'flores', 'monterrey', 8)

insert into CLIENTE
values (6, 'fer', 'bustamante', 'apodaca', 9)

insert into CLIENTE
values (8, 'casandra', 'miraflores', 'juarez', 7)

insert into CLIENTE
values (9, 'blanca', 'dorantes', 'monterrey', 5)

insert into CLIENTE
values (5, 'maribel', 'dorantes', 'monterrey', 1)

---------------------------------------------------------------proveedor

insert into PROVEEDOR
VALUES (
-- COD_PROVEEDOR, DENOMINACION, DIRECCION, TELEFONO
			1,
			'Shampoo',
			'monterrey',
			'36465465'
)

insert into PROVEEDOR
values (5, 'crema', 'monterrey', 146454655)

insert into PROVEEDOR
values (8, 'toalla de baño', 'monterrey', 6545464655)

insert into PROVEEDOR
values (12, 'exfoliante coco', 'monterrey', '6454216546')

insert into PROVEEDOR
values (13, 'exfoliante mango', 'monterrey', '645546')

insert into PROVEEDOR
values (14, 'exfoliante de fresa', 'monterrey', '645546546')

insert into PROVEEDOR
values (15, 'exfoliante savila', 'monterrey', '815469558')

insert into PROVEEDOR
values (16, 'jabon de manos', 'monterrey', '681246858')

insert into PROVEEDOR
values (17, 'algodon', 'monterrey', '8165497988')

insert into PROVEEDOR
values (18, 'crema de manos', 'monterrey', '16546546846')

----------------------------------------------------------------tratamientos

insert into TRATAMIENTO
VALUES (
-- COD_TRATA, DENOMINACION, PRECIO, FECHA_TRATAMIENTO, COD_PROVEEDOR
			30,
			'lavado de cabello',
			'1200',
			'20180426',
			1
)

insert into TRATAMIENTO
values (31, 'Masaje de manos', '200', '20180621', 18)

insert into TRATAMIENTO
values (32, 'exfoliante', '400', '20180621', 12)

insert into TRATAMIENTO
values (33, 'exfoliante de cuerpo completo', '800', '20180621', 13)

insert into TRATAMIENTO
values (34, 'exfoliante de cuerpo completo', '800', '20180411', 14)

insert into TRATAMIENTO
values (35, 'exfoliante de cuerpo completo', '800', '20180415', 15)

insert into TRATAMIENTO
values (36, 'labado de manos', '150', '20180621', 16)

insert into TRATAMIENTO
values (37, 'facial', '300', '20180619', 17)

insert into TRATAMIENTO
values (38, 'exfoliante de manos', '150', '20180415', 18)

insert into TRATAMIENTO
values (39, 'jacuzzi', '500', '20180518', 8)

-----------------------------------------------------------------------pedidos

insert into PEDIDOS
VALUES (
-- COD_PEDIDO, COD_CLI, COD_TRATA
			41,
			'1',
			'30'
			
)

insert into PEDIDOS
values (42, 45, 31)

insert into PEDIDOS
values (43, 2, 33 )

insert into PEDIDOS
values (44, 9, 35)

insert into PEDIDOS
values (45, 21, 37)

insert into PEDIDOS
values (46, 4, 39)

insert into PEDIDOS
values (47, 12, 32)

insert into PEDIDOS
values (48, 6, 34)

insert into PEDIDOS
values (49, 8, 36)

insert into PEDIDOS
values (50, 5, 38)
