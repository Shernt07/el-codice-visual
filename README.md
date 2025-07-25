
# Estructuración de carpetas

## config 
Contiene dos carpetas.
- router

Guarda las rutas a las screens (pages), haciendo uso de GoRouter.

- utils

Utilidades para el proyecto.

## models

Dentro hay un archivo con los objetos de datos, hay uno por cada tipo de rareza.

## screens

- cardDisplay 

Carpeta con una screen, en ella se vizualiza la carta.

- home 

Archivo inicial, contiene un boton por cada tipo de rareza. 

- screens

Archivo con las rutas de las screens, se utiliza en config/router/app_router.dart

## widgets

Contiene dos carpetas.

- buttons 

Widget reutilizable, recibe nombre, ruta y un objeto de datos.

- cards

Widget reutilizable, es la carta que recibe el objeto de datos y muestra sus atributos (según la rareza).

---

Última edición 25 de Julio de 2025.
