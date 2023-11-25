use emarket;

-- 1. Queremos tener un listado de todas las categorías
select *
from categorias;
-- devuelve 10 filas

-- 2. Cómo las categorías no tienen imágenes, solamente interesa obtener un
-- listado de CategoriaNombre y Descripcion.
select categoriaNombre, descripcion
from categorias;
-- devuelve 10 filas

-- 3. Obtener un listado de los productos.
select *
from productos;
-- devuelve 77 filas

-- 4. ¿Existen productos discontinuados? (Discontinuado = 1).
select *
from productos
where discontinuado=1;
-- devuelve 0 filas

-- 5. Para el viernes hay que reunirse con el Proveedor 8. ¿Qué productos son
-- los que nos provee?
select *
from productos
where ProveedorID=8;
-- devuelve 4 filas

-- 6. Queremos conocer todos los productos cuyo precio unitario se encuentre
-- entre 10 y 22.
select *
from productos
where PrecioUnitario between 10 and 22;
-- devuelve 35 filas

-- 7. Se define que un producto hay que solicitarlo al proveedor si sus unidades
-- en stock son menores al Nivel de Reorden. ¿Hay productos por solicitar?
select *
from productos
where UnidadesStock < NivelReorden;
-- devuelve 18 filas

-- 8. Se quiere conocer todos los productos del listado anterior, pero que
-- unidades pedidas sea igual a cero.
select *
from productos
where UnidadesStock < NivelReorden and UnidadesPedidas=0;
-- devuelve 1 fila

-- 1. Obtener un listado de todos los clientes con Contacto, Compania, Título,
-- País. Ordenar el listado por País.
select contacto, compania, titulo, pais
from clientes
order by pais;
-- devuelve 91 filas

-- 2. Queremos conocer a todos los clientes que tengan un título “Owner”.
select *
from clientes
where titulo = "Owner";
-- devuelve 17 filas

-- 3. El operador telefónico que atendió a un cliente no recuerda su nombre.
-- Solo sabe que comienza con “C”. ¿Lo ayudamos a obtener un listado con
-- todos los contactos que inician con la letra “C”?
select *
from clientes
where contacto like "C%";
-- devuelve 5 filas

-- 1. Obtener un listado de todas las facturas, ordenado por fecha de factura ascendente
select *
from facturas
order by fechaFactura;
-- devuelve 830 filas

-- 2. Ahora se requiere un listado de las facturas con el país de envío “USA” y que su correo (EnvioVia) 
-- sea distinto de 3.
select *
from facturas
where paisEnvio= "USA" and envioVia !=3;
-- devuelve 82 filas

-- 3. ¿El cliente 'GOURL' realizó algún pedido?
select *
from facturas
where clienteID='GOURL';
-- devuelve 9 filas

-- 4. Se quiere visualizar todas las facturas de los empleados 2, 3, 5, 8 y 9.
select *
from facturas
where empleadoID in (2, 3, 5, 8, 9);
-- devuelve 412 filas

-- 1. Obtener el listado de todos los productos ordenados descendentemente por precio unitario.
select *
from productos
order by precioUnitario desc;
-- devuelve 77 filas

-- 2. Obtener el listado de top 5 de productos cuyo precio unitario es el más caro.
select *
from productos
order by precioUnitario desc
limit 5;
-- devuelve 5 filas

-- 3. Obtener un top 10 de los productos con más unidades en stock.
select *
from productos
order by unidadesStock desc
limit 10;
-- devuelve 10 filas

-- 1. Obtener un listado de FacturaID, Producto, Cantidad.
select FacturaID, ProductoID, Cantidad
from facturadetalle;
-- devuelve 1000 filas

-- 2. Ordenar el listado anterior por cantidad descendentemente.
select FacturaID, ProductoID, Cantidad
from facturadetalle
order by Cantidad desc;
-- devuelve 1000 filas

-- 3. Filtrar el listado solo para aquellos productos donde la cantidad se encuentre entre 50 y 100.
select FacturaID, ProductoID, Cantidad
from facturadetalle
where cantidad between 50 and 100;
-- devuelve 221 filas

-- 4. En otro listado nuevo, obtener un listado con los siguientes nombres de columnas: NroFactura 
-- (FacturaID), Producto (ProductoID), Total (PrecioUnitario*Cantidad).
select FacturaID as NroFactura, ProductoID as producto, PrecioUnitario*Cantidad as total
from facturadetalle;
-- devuelve 1000 filas

-- 1. Obtener un listado de todos los clientes que viven en “Brazil" o “Mexico”,
-- o que tengan un título que empiece con “Sales”.
select *
from clientes
where pais in ("Brazil", "Mexico") or titulo like "Sales%";
-- devuelve 49 filas

-- 2. Obtener un listado de todos los clientes que pertenecen a una compañía que empiece con la letra "A".
select *
from clientes
where compania like "A%";
-- devuelve 4 filas

-- 3. Obtener un listado con los datos: Ciudad, Contacto y renombrarlo
-- como Apellido y Nombre, Titulo y renombrarlo como Puesto, de todos
-- los clientes que sean de la ciudad "Madrid".
select ciudad, Contacto as "Apellido y Nombre", Titulo as Puesto
from clientes
where ciudad = "Madrid";
-- devuelve 3 filas

-- 4. Obtener un listado de todas las facturas con ID entre 10000 y 10500
select *
from facturas
where FacturaID between 10000 and 10500;
-- devuelve 253 filas

-- 5. Obtener un listado de todas las facturas con ID entre 10000 y 10500 o de
-- los clientes con ID que empiecen con la letra “B”.
select *
from facturas
where ClienteID like "B%" or FacturaID between 10000 and 10500;
-- devuelve 310 filas

-- 6. ¿Existen facturas que la ciudad de envío sea “Vancouver” o que utilicen el correo 3?
select *
from facturas
where CiudadEnvio = "Vancouver" or EnvioVia =3;
-- devuelve 255 filas

-- 7. ¿Cuál es el ID de empleado de “Buchanan”?
select empleadoId
from empleados
where apellido = "Buchanan";
-- devuelve 1 fila

-- 8. ¿Existen facturas con EmpleadoID del empleado del ejercicio anterior?
-- (No relacionar, sino verificar que existan facturas)
select *
from facturas
where empleadoId=5;
-- devuelve 42 filas

-- Clientes
-- 1) ¿Cuántos clientes existen?
select *
from clientes;
-- devuelve 91 filas

-- 2) ¿Cuántos clientes hay por ciudad?
select ciudad, count(ciudad) as cantidad
from clientes
group by ciudad;

-- Facturas
-- 1) ¿Cuál es el total de transporte?
select sum(transporte) as "Total transporte"
from facturas;

-- 2) ¿Cuál es el total de transporte por EnvioVia (empresa de envío)?
select sum(envioVia) as "transporte EnvioVia" 
from facturas;

-- 3) Calcular la cantidad de facturas por cliente. Ordenar descendentemente por
-- cantidad de facturas.
select clienteID, count(clienteID) as "cantidad de facturas por cliente" 
from facturas
group by clienteID
order by count(clienteID) desc;

-- 4) Obtener el Top 5 de clientes de acuerdo a su cantidad de facturas.
select clienteID, count(clienteID) as "cantidad de facturas por cliente" 
from facturas
group by clienteID
order by count(clienteID) desc
limit 5;

-- 5) ¿Cuál es el país de envío menos frecuente de acuerdo a la cantidad de facturas?
select paisEnvio, count(paisEnvio) as "paises de envio"
from facturas
group by paisEnvio
order by count(paisEnvio)
limit 1;

-- 6) Se quiere otorgar un bono al empleado con más ventas. ¿Qué ID de empleado
-- realizó más operaciones de ventas?

-- Factura detalle
-- 1) ¿Cuál es el producto que aparece en más líneas de la tabla Factura Detalle?
select productoID, count(productoID)
from facturadetalle
group by productoID
order by count(productoID) desc
limit 1;

-- 2) ¿Cuál es el total facturado? Considerar que el total facturado es la suma de
-- cantidad por precio unitario.
select sum(PrecioUnitario*Cantidad) as "total facturado"
from facturadetalle;

-- 3) ¿Cuál es el total facturado para los productos ID entre 30 y 50?
select sum(PrecioUnitario*Cantidad) as "total facturado"
from facturadetalle
where ProductoID between 30 and 50;

-- 4) ¿Cuál es el precio unitario promedio de cada producto?
select ProductoID, avg(PrecioUnitario) as "promedio de precios"
from facturadetalle
group by ProductoID;

-- 5) ¿Cuál es el precio unitario máximo?
select ProductoID, avg(PrecioUnitario) as "promedio de precios"
from facturadetalle
group by ProductoID
order by avg(PrecioUnitario) desc
limit 1;

-- 1) Generar un listado de todas las facturas del empleado 'Buchanan'.
select *
from empleados
inner join facturas
on facturas.empleadoid = empleados.empleadoID
where apellido='Buchanan';


-- 2) Generar un listado con todos los campos de las facturas del correo 'Speedy
-- Express'.
select *
from correos
inner join facturas
on facturas.envioVia=correos.correoID
where compania = 'Speedy Express';

-- 3) Generar un listado de todas las facturas con el nombre y apellido de los empleados.
select empleados.apellido, empleados.nombre, facturas.*
from empleados
inner join facturas
on facturas.empleadoid = empleados.empleadoID;

-- 4) Mostrar un listado de las facturas de todos los clientes “Owner” y país de envío “USA”.
select *
from clientes
inner join facturas
on facturas.clienteid = clientes.clienteID
where clientes.titulo = "Owner" and paisEnvio= "usa";

-- 5) Mostrar todos los campos de las facturas del empleado cuyo apellido sea
-- “Leverling” o que incluyan el producto id = “42”.
select empleados.apellido, empleados.nombre, facturas.*, facturadetalle.*
from empleados
inner join facturas
on facturas.empleadoid = empleados.empleadoID
inner join facturadetalle
on facturadetalle.facturaID= facturas.facturaID
where empleados.apellido = "Leverling" or facturadetalle.productoID=42 ;

-- 6) Mostrar todos los campos de las facturas del empleado cuyo apellido sea
-- “Leverling” y que incluya los producto id = “80” o ”42”.
select empleados.apellido, empleados.nombre, facturas.*, facturadetalle.*
from empleados
inner join facturas
on facturas.empleadoid = empleados.empleadoID
inner join facturadetalle
on facturadetalle.facturaID= facturas.facturaID
where empleados.apellido = "Leverling" or facturadetalle.productoID in (80, 42);

-- 7) Generar un listado con los cinco mejores clientes, según sus importes de
-- compras total (PrecioUnitario * Cantidad).
select as "importe de compra total"
from clientes
inner join facturas
on facturas.facturaID=clientes.clienteID
inner join facturadetalle
on facturadetalle.facturaid=facturas.facturaID;

select facturas.facturaID, facturas.clienteID, facturadetalle.precioUnitario*facturadetalle.cantidad as "importe de compra total"
from facturas
inner join facturadetalle
on facturadetalle.facturaid=facturas.facturaID
group by facturas.clienteID;



-- 8) Generar un listado de facturas, con los campos id, nombre y apellido del cliente,
-- fecha de factura, país de envío, Total, ordenado de manera descendente por
-- fecha de factura y limitado a 10 filas.


