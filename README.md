# TAREA-CRUD-PROGRAMACION-II

DESCRIPCION.
El programa permite insertar, listar, buscar por id, actualizar y eliminar registros de las siguientes tablas Incluye validaciones antes de llegar a la base de datos (campos vacíos, DPI de 13 dígitos, teléfono de 8 dígitos, valores mayores que 0, formato de fecha y existencia de los registros relacionados):

- camion
- camionero
- paquete
- camionero_camion (clase ConductorCamion, relación muchos a muchos entre camionero y camión)
  ciudad

ESTRUCTURA.
- modelo: clases Camionero, Camion, Ciudad, Paquete y ConductorCamion, con su CRUD.
- conexion: clase BdPaqueteria que entrega la conexión a MySQL.
- vista: menú de consola.
- util: validaciones reutilizables.
- crud_paqueteria: clase principal.

REQUISITOS
- JDK instalado
- NetBeans
- MySQL Server y MySQL Workbench
- Conector JDBC de MySQL (mysql-connector-j) agregado a la carpeta Libraries del proyecto

COMO EJECUTAR
- Abre MySQL Workbench y ejecuta el script db_paqueteria.sql incluido en este repositorio para crear la base de datos y las tablas.
- Abre el proyecto en NetBeans.
- En conexion/BdPaqueteria.java, escribe tu usuario y tu contraseña de MySQL (el repositorio trae un texto de ejemplo, no una contraseña real).
- Ejecuta el proyecto (clic derecho en el proyecto y luego Run, o F6).
- Usa el menú de consola para probar cada tabla.

AUTOR
Carlos Alberto Lopez Lopez 0903 - 25 - 8684
