# Bash script para clonar repositorios de un usuario github

## Uso de script

Mediante este script bash podemos clonar repositorios publicos o privados mediante un apitoken de github

## Requerimientos previos

solo se requiere tener git instalado

instrucciones linux:  
Redhat:

```
$ yum install git
```
Debian:

```
apt-get install git
```

## Sobre el script

Se dividió el codigo en funciones segun la responsabilidad de cada bloque  

El script guíará al usuario y habilitara el promt para introducir cual es la opcion que se quiere consultar
- Repositorios publicos:  
Se debe especificar el nombre del usuario de Github del cual se quiere clonar

- Repositorios privados:
Se debe ademas introducir la API key correspondiente que autentifica para descargar los repositorios privados



