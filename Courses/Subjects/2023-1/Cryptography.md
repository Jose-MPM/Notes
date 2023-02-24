## Cryptography and Security - Anayanzi Delia Martínez Hernández  
Cuidado con la prac de **Explotación de vulnerabilidades**
Maquina virtual con debian 11
ssh
OpenSSl
WireShark puede ser instalado   
nmap
gobuster y/o dirb 
ingresar a su VM via ssh 
Boxes
asegurarse de hacer un ping desde su VM a la dir 8.8.8.8

USA VM Ware

Kamasutra


845 7062 8872 - 5atosh1

        10% Tarea - examen 1

        15% Tarea - examen 2

        25% Tarea - examen 3

        50% Prácticas de laboratorio (3)

¿Las clases serán publicadas? No. Sólo podrás acceder a ellas por petición. Sólo tienes derecho a pedir **5 grabaciones**.

cryptohack
tryhackme
hackthebox


## Commands

ls (list files) -al (all info)
cd (Change Dir)
mkdir
touch (create file)
cat (print file content)
rm (delete file)
cp (copy file)
* file : lee el header(encabezado-Magic Bytes) y determina bien el tipo del archivo
* hexdump -C <file>: imprime toda info del archivo en bytes
pwd
ifconfig
scp
ping

# Lab 15
* Para pasar info entre la attack box y la maquina fisica:
        * Encontrar la dir IP de ambas maquinas.
        * ejecutar el comando
                - scp dirIP_de_donde_se_copia
        * Saber tu IP: ifconfig

## Conceptos

Huella digital
Metadatos: datos de los datos, todas las fotos tienen datos de los datos. xd

exifTool

who.is
the herverster tool
shodan: engrane de busqueda

* Puertos:
        - 8080 
        - 443 HTTPS
        - 22 ssh

* OSINT : para nivel personal trata de recopilar toda la info posible para nivel personal de nuestro objeto.

* Info de un sistema := Esto es completamente enfocado a lo que esta implementado en el server.

* nmpa localhost -sV -Pn -sT
* nmpa localhost -sV -Pn -sT -p -10000
        * Qué hacen las tres banderas?

* ssh nos permite ver la instancia
        - ssh es una manera de iniciar sesion en un sistema

* Escaneo de directorios
* bandera-> archivo escondido que debe de salir que debe de salir con te goster
        - dir buster

- escaneos en mi compu antes de la instancia