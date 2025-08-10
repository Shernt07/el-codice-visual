
# Estructuración de carpetas

## config 
Contiene dos carpetas.
- router

Guarda las rutas a las screens (pages), haciendo uso de GoRouter.

- utils

Utilidades para el proyecto.

## game
Contiene todo lo que respecta a Flame Engine

- game.dart

Motor de Flame para mostrar lo que se cree.

- game_screen.dart

Se utiliza el GameWidget para por usar Flame en un árbol de widgets de Flutter,  
(poder usar Flame en cualquier parte del proyecto).

- components

Carpeta que contiene fragmentos reutilizables por ejemplo -> 

Tarea 1 => cuadro que cambia de color y tamaño.


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

Última edición 10 de Agosto de 2025.
