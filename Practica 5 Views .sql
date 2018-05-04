USE [practica2]
GO
/****** Object:  View [dbo].[View_1 normal]    Script Date: 5/3/2018 6:58:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------------------------------------------------------SELECT * FROM

SELECT NOMBRE AS [nombre de cliente], APELLIDOS AS [Apellidos del cliente], COD_CLI AS [Codigo del cliente], MUNICIPIO AS [municipio de vivienda], COD_EMPLEADO AS empleado
FROM     dbo.CLIENTE

----------------------------------------------------------------------------ORDER BY

SELECT TOP (100) PERCENT COD_EMPLEADO, NOMBRE, APELLIDOS
FROM     dbo.EMPLEADO
ORDER BY APELLIDOS

-----------------------------------------------------------------------------GROUP BY

SELECT * FROM TRATAMIENTO

SELECT PRECIO, COUNT(PRECIO) AS [COSTO DEL TRATAMIENTO]
FROM TRATAMIENTO
GROUP BY PRECIO

-----------------------------------------------------------------------------WHERE

SELECT * FROM EMPLEADO
WHERE NOMBRE LIKE 'A%'

------------------------------------------------------------------------------HAVING

SELECT * FROM [PROVEEDOR]

SELECT COD_PROVEEDOR, COUNT(COD_PROVEEDOR) AS PROVEEDORES
FROM [PROVEEDOR]
GROUP BY COD_PROVEEDOR
HAVING COUNT(*)>0

------------------------------------------------------------------------- SUB CONSULTAS 
SELECT * FROM CLIENTE
SELECT * FROM EMPLEADO
SELECT * FROM PROVEEDOR
SELECT * FROM TRATAMIENTO

SELECT COD_CLI, NOMBRE, COD_EMPLEADO, 
	(SELECT APELLIDOS FROM EMPLEADO
	WHERE COD_EMPLEADO=CLIENTE.COD_EMPLEADO) AS EMPLEADO,

FROM CLIENTE
ORDER BY COD_CLI
