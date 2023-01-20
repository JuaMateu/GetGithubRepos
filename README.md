# Bash script para clonar repositorios de un usuario github

## Uso de script

Mediante este script bash podemos clonar repositorios publicos o privados mediante un apitoken de github

## Requerimientos previos

Se requiere tener git instalado previamente

- Instalacion Windows:  
Se puede instalar desde [este link de descarga](https://github.com/git-for-windows/git/releases/download/v2.39.1.windows.1/Git-2.39.1-64-bit.exe)  o mediante el comando:
```
winget install --id Git.Git -e --source winget
```
- instrucciones linux:  
Redhat:

```
$ yum install git
```
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Debian:

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



