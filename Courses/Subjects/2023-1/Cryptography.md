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

# Practice 2

* Protocolos de Red:    
        - TCP
        - ICMP
        - SSH es lo mismo que SSHv2
                - basicamente hacen lo mismo
        - TLS
        - ISP: Internet Service Provider

* DATA:
        - .pcap
        - 

* Para el envio de datos se ocupan 2 protocolos:
        - TCP: genera más trafico porque es orientado a la conección, ya que se asegura de que llegue todo el tiempo, que no haya pérdida de paquetes.
        - UDP

* En wireshark
        - src:source
        - dst:destination
                - arp.dst.hlen == 60
                - 
* DOC:

        http.response.code == 404
       http.request.method == GET
           
           
           POST 
           PUT
           DELETE
           
           Codigos de respuesta de HTTP:
           
           20x -- Si reconozco lo que me pides y te voy a responder de alguna manera.
           30x -- Se de que hablas, pero no lo tengo yo (Redireccion)
           40x -- No se de hablas (Fallo del usuario)
           50x -- Reconozco la peticion pero el programador no se encargo de resolver.
           
           FTP (File Transfer Protocol) --No se usa cifrado, entonces qué podría pasar?
           Protocolo de Transferencia de Archivos
           
           TCP y UDP, tenemos tambien una manera de enviar informacion segura a través de estos 
           protocolos TLS (Transport Layer Security)
           
           Filtro para FTP: ftp/ftp-data -> Muestra solo el intercambio de informacion
           
           tcp.port == 80
           tcp.port != 80
           
           Se pueden componer filtros con la sintaxis de comparaciones en C, es decir:
           
           tcp.port == 80 || http.response.code == 404

* Para pasar info entre virtual y fisica:
        1. Encontrar IP de ambas maquinas
        2. ejecutar:    
                - scp dirP_deDondeSeCopia/ubiDelArc direcciónIPdonde_se_pega:ruta/del/archivo
                        - 44 uso de wire

# 01-03 lab

* ¿Cómo podríamos identificar que un protocolo esta encriptado?

* Intercambio de llaves: Diffie-Hellman
        - El algoritmo-protocolo en el cual 2 personas/sist pueden realizar un intercambio de llave publica para realizar una comunicación cifrada/encriptada a traves de un canal inseguro
        - pkgs.org
* prac3 
* cifrados:
        
* para pasar archivos: 
        - ip a
        - scp otro_archivo_a_subir.js miusuario@112.223.4.215:/otra/carpeta/destino/
        - scp otro_archivo_a_subir.js ntory@112.223.4.215:/otra/carpeta/destino/
                - scp /home/ntory/Documents/School/2023-2/Cryptography and Security/lab/CyS/P04/Practica4/files/palabras_9car.txt ntory@ 192.168.57.5:/home/ntory/CyS/p04
                scp palabras_9car.txt ntory@ 192.168.57.5:/home/ntory/CyS/p04
                - scp /home/ntory/Documents/School/2023-2/Cryptography and Security/lab/CyS/P04/Practica4/files/mas_palabras.txt ntory@192.168.57.5/home/ntory/CyS/p04
                /home/ntory/CyS/p04
                - scp mas_palabras.txt ntory@ 192.168.57.5:/home/ntory/CyS/p04
                - scp alpha-passwords.txt ntory@ 192.168.57.5:/home/ntory/CyS/p04
                - scp more-t-passwords.txt ntory@ 192.168.57.5:/home/ntory/CyS/p04
                192.168.57.5
* hydra:
        - O si configuras 44.199.201.139 como attackbox2
git
hydra -l usuario -p contraseñaAUsar attackbox2 ssh
44.199.201.139 

hydra -L archivo_de_usuario -p contraseñaAUsar attackbox2 ssh 

hydra -L 315073120 -P palabras_9car.txt: 44.199.201.139  ssh 

                alpha-passwords
        - ip a for see ur IP
* actualizar debian:
        
### prac4

- Primero realizaremos un escaneo de puertos para encontrar que puertos están activos escuchando by SSH, apoyandonos de nmap ejecutando este comando:
        - nmap ip -sV -Pn -sT
        - nmap 44.199.201.139 -sV -Pn -sT
        
- Ataques de diccionario

* puertos usados:
        - MySQL: 3306
        - HTTP 8080/80
        - HTTPS: 443
        - SSH: 22
* cada quien tiene su bandera

# Actualizar Debian
apt-get update && sudo apt-get upgrade
sudo apt dist-upgrade

### prac5

* SQLi: Ataque en donde dado un input, se logra manipular el mismo para obtener información de la DT.

        - Podemos interceptar/interferir/modificar la input en sql para que otorgue otro tipo de información, digamos que una query normal se veria:
        - user: jose-user
        - password: mypass
                - select 1 from users where username = 'jose-user' and password ='mypass';
        - En lugar de dar un usuario normal utilizamos ' OR 1=1;-- o admin'
                - select 1 from users where username = '' OR 1=1; -- and password ="";
                        - Esto siempore se evalua a T y ent nos va a conceder un login sin un usuario o contraseña validos
        - PreparedStatements

* Para mitigar estos ataques podemos utilizar bibliotecas 
        - sanitizar las entradas: verificar que no nos están metiendo sintaxis del lenguaje en la input.

# ES IMPOSIBLE TENER TODO BAJO CONTROL, TENEMOS QUE DARNOS CUENTA QUE PENSAR DEMASIADO EN EL FUTURO PUEDE LLEVAR A IMAGINARNOS SITUACIONES Y PROBLEMAS QUE PUEDEN NO _**EXISTIR**_, TODO ESTO CONDUCE A LA ANSIEDAD - EL QUE SUFRE ANTES DE QUE SEA NECESARIO, SUFRE MÁS DE LO NECESARIO.

ES IMPOSIBLE TENER TODO BAJO CONTROL, TENEMOS QUE DARNOS CUENTA QUE PENSAR DEMASIADO EN EL FUTURO PUEDE LLEVAR A IMAGINARNOS SITUACIONES Y PROBLEMAS QUE PUEDEN NO EXISTIR, TODO ESTO CONDUCE A LA ANSIEDAD, EL QUE SUFRE ANTES DE QUE SEA NECESARIO, SUFRE MÁS DE LO NECESARIO. PERO SI QUIERES REALIZAR ALGO NO HAY MÁS QUE CONFÍAR EN TU VERSIÓN DE TI QUE DA LO MEJOR DE SÍ PARA OBTENER ESO QUE QUIRES, TUS METAS Y TUS SUEÑOS.

#