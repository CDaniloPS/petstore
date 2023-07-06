# Project Petstore
> Ejercicio de automatizacion de APIS.


## Table of Contents
* [Technologies Used](#Prerequisitos)
* [Implementation](#Implementacion)
* [Flow](#flujo)
* [Instructions to run the test]
* [Project Status](#project-status)

## Technologies Used
	- Maquina local con el sistema operativo Windows 10
	- Spring Tool Suite 4 para Eclipse (archivo spring-tool-
	  suite-4-4.18.0.RELEASE-e4.27.0-win32.win32.x86_64.self-extracting)
	- JDK versión 17 (archivo jdk-17_windows-x64_bin)


## Implementation
    - Descargar e instalar de la pagina https://spring.io/tools y crear un workspace
	- Descargar el proyecto Petstore
	- Descomprimir el archivo en el workspace de Spring tool
	- En Spring tool Suite ir a File/Import y seleccionar dentro de General -> Existing Projects into 
	  Workspace y en siguiente seleccionar el proyecto Petstore y cargar.


## Flow
Prueba de la API de https://petstore.swagger.io/ creando escenarios para los siguientes casos:
- Crear un usuario.
- Buscar el usuario creado.
- Actualizar el nombre y el correo del usuario.
- Buscar el usuario actualizado.
- Eliminar el usuario.

## Instructions to run the test
-Op1. Seleccionar el proyecto Petstore y dar click derecho para seleccionar Run As y usar 
      la opcion Junit Test, si hay una ventana nueva seleccionar petstoreUserRunner.java y pulsar 
	  en OK para ejecutar.
-Op2. Dentro del proyecto Petstore ir a src/test/java/userCreate y seleccione el 
      archivo petstoreUserRunner.java, dar click derecho para seleccionar Run As y usar la opcion 
	  Junit Test para ejecutar.


## Project Status
Project is:  _complete_
