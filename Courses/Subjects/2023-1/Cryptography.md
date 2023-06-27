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
        - UDP: Este solo envía los datos y a ver si llegan

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
        - openvpn --version
        - scp otro_archivo_a_subir.js miusuario@112.223.4.215:/otra/carpeta/destino/
        - scp otro_archivo_a_subir.js ntory@112.223.4.215:/otra/carpeta/destino/
                - scp /home/ntory/Documents/School/2023-2/Cryptography and Security/lab/CyS/P04/Practica4/files/palabras_9car.txt ntory@ 192.168.57.5:/home/ntory/CyS/p04
                scp palabras_9car.txt ntory@ 192.168.57.5:/home/ntory/CyS/p04
                - scp /home/ntory/Documents/School/2023-2/Cryptography and Security/lab/CyS/P04/Practica4/files/mas_palabras.txt ntory@192.168.57.5/home/ntory/CyS/p04
                /home/ntory/CyS/p04
                16
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
* database() return scheme name
* UNION-PARA poder tener acceso a más información de la DB. 
* TIME INJECTION:
        - Usa sleep

* Para mitigar estos ataques podemos utilizar bibliotecas 
        - sanitizar las entradas: verificar que no nos están metiendo sintaxis(palabras reservadas) del lenguaje en la input.
* LighArgent

* Servidor Proxy:
        - Burp suite: Red team
        - Proxy: Es un objeto de la capa de red, que se encarga de regular el tráfico y la comunicación entre dos endpoints-nodos.

* PRACT:
        - SQL (Structured Query Language) is a (RICO EN FUNCIONES)feature-rich language used for querying databases-que se usa para consultar, these SQL queries are better referred to as statements-SENTENCIA.
                - like 'a%'
        - Tipos:
                - In-Band SQLi:
                        - method of communication being used to exploit the vulnerability and also receive the results,
                - Error-Based SQL
                        - is the most useful for easily obtaining information about the database structure as error messages from the database are printed directly to the browser screen. This can often be used to enumerate a whole database.
                - Union-Based SQL Injection
                        -  utilises the SQL UNION operator alongside a SELECT statement to return additional results to the page. This method is the most common way of extracting large amounts of data via an SQL Injection vulnerability.
                - Blind SQLi;  blind SQLi is when we get little to no feedback to confirm whether our injected queries were, in fact, successful or not, this is because the error messages have been disabled, but the injection still works regardless. 
                        - Authentication Bypass
                                - ' OR 1=1;--
                        - Boolean Based: Injection that only answerns with T or F.
                                - use of database(), where and like 'a%' hasta encontrar algo
                        - Time Based:
        - Ideas:
                - The key to discovering error-based SQL Injection is to break the code's SQL query by trying certain characters until an error message is produced; 
        - sintaxis:
                -  group_concat() gets the specified column (in our case, table_name) from multiple returned rows and puts it into one string separated by commas.
                - 
### Out-of-Band SQL
Out-of-Band SQL Injection isn't as common as it either depends on specific features being enabled on the database server or the web application's business logic, which makes some kind of external network call based on the results from an SQL query.

An Out-Of-Band attack is classified by having two different communication channels, one to launch the attack and the other to gather the results. For example, the attack channel could be a web request, and the data gathering channel could be monitoring HTTP/DNS requests made to a service you control.

1) An attacker makes a request to a website vulnerable to SQL Injection with an injection payload.

2) The Website makes an SQL query to the database which also passes the hacker's payload.

3) The payload contains a request which forces an HTTP request back to the hacker's machine containing data from the database.
#### Remedetion

As impactful as SQL Injection vulnerabilities are, developers do have a way to protect their web applications from them by following the below advice:


Prepared Statements (With Parameterized Queries):

In a prepared query, the first thing a developer writes is the SQL query and then any user inputs are added as a parameter afterwards. Writing prepared statements ensures that the SQL code structure doesn't change and the database can distinguish between the query and the data. As a benefit, it also makes your code look a lot cleaner and easier to read.

Input Validation:

Input validation can go a long way to protecting what gets put into an SQL query. Employing an allow list can restrict input to only certain strings, or a string replacement method in the programming language can filter the characters you wish to allow or disallow. 

Escaping User Input:

Allowing user input containing characters such as ' " $ \ can cause SQL Queries to break or, even worse, as we've learnt, open them up for injection attacks. Escaping user input is the method of prepending a backslash (\) to these characters, which then causes them to be parsed just as a regular string and not a special character.

### Prac6
- netstat o nmap -sV -sT -su localhost
    - sudo nmap -sV -sT -sU localhost 192.168.100.184 -p-
    - Los puertos de proposito general nunca deberían de estar abiertos porque no son un servidor, el 22, 80.
        - si tu no lo abriste busca como matarlos

- Metasploit(como comando)
    - quiero explotar lo
    - 
- que pasa con internal blue?
- Msfvenom(como interpretable)
    - 50 como conectarse a una v machine
    - 53
    - use 5
    - conf el host, la ip k nos da try
        - set rhosts ip_THM
    - exploit
    - search netbios
        - use 2
    - search scannet tcp
        - use 23
    - nmap -sT THM_IP -p num_port

- rb lecutra de bits
- msfconsole(Como IU)

- DOS: Evitar acceso al servidor inundandolo con solicitudes hasta que este se caiga. Denegando el servicio
    - ftp
    - ping -f
        - flood-inundar
        - enviamos un echo request y recibo echo hello
- DDoS:
    - solo es lo más complicado que se puede realizar
        - por ende, el atacante DISTRIBUYE EL ATAQUE, a traves de la infección 
        - 
    - import para evitar ser infectados: 
        - No tengan puertos abiertos
        - Tener un firewall
        - protección
        - no te conectes a redes publicas

- EternalBlue es un exploit desarrollado por la NSA. “Windows SMB Remote Code Execution Vulnerability” (CVE-2017-0144)
    - Vulnerabilidad de ejecución remota de código en la forma en que Microsoft Server Message Block maneja ciertas solicitudes(SMBv1).
        - Para obtener la capacidad de ejecutar código

- Vulnebarilidad: Es una falla en el sistema que fue implementada de manera accidental-omisa(cuando se usa un software y despues se descubre que es vulnerable, no necesariamente fue programada, estás puedes ser incluso físicas), que permite acceso o recursos no permitidos a las personas que crean esta vulnerabilidad.
    - zero-day: primer día en que se detecta una nueva vulnerabilidad en algún sistema de software. El paciente 0. 
    - Es algo que puede comprometer nuestro sistema.
    - tipos:    
        - RCE-Remote Code Execution
            - Nada facil encontrarlas, es necesario documentarlas.
                - PHP es relativamente inseguro.
                - exploit-db
- operaciones con bits: 1:05
    - hexdump .txt -c 
- powershell: La maquina del atacante se conecta a la maquina de la victima
- Reverse shell: la maquina victima se conecta a la maquina del atacante para recibir comandos, mientras
- Explica la diferencia entre el protocolo TCP y el protocolo TLS.
    - son cosas muy diferentes ya que el protocolo TCP se encarga de la entrega confiable y ordenada de datos entre dispositivos conectados en una red mientras que el protocolo TLS utiliza la criptografía asimétrica para generar claves públicas y privadas que cifran y descifran los datos.


min 7
57a92Itz3

faltan dos videos! 

miercoles
https://www.youtube.com/watch?v=z7bVw7lMtUg

#  viernes-11-vay

* cifrados modernos:
        - 
DES!
redes de feistel
campos finitos:

20: ejemplo de un irreducible
receta para construir un campo finito


# may 19

AES: cifrado viejo pero aún ocupado, lo más actual del curso

# Criptologia de llave publica

centros de distribuciones de llave



https://m.facebook.com/story.php?story_fbid=pfbid02K1rcKy8NHiUPoK7z1uX891iyvw9n9XDUakLofta1gNBbgg1MoqU187fwVpZLM9Gal&id=100057404503208&sfnsn=scwspmo&mibextid=RUbZ1f   

cuantos bits necesito para generar una llave DES
rondas

# Exam 23-May-Tuesday 
- Temario para el segundo examen.
    - Cifrado de Vernam(1890-1960), Teorema de Seguridad Perfecta.
        - El cifrado de Vernam es considerado un cifrado perfecto si se cumplen dos condiciones: la clave debe ser completamente aleatoria y tener la misma longitud que el texto claro. En este caso, el cifrado de Vernam ofrece una seguridad incondicional, lo que significa que no se puede descifrar el mensaje sin conocer la clave.
        - El Teorema de Seguridad Perfecta establece que un cifrado es seguro de manera perfecta si y solo si la longitud de la clave utilizada es al menos tan larga como el mensaje a cifrar, y la clave se genera de manera completamente aleatoria, es decir, cada bit de la clave es independiente y equiprobable.

        - Su idea era hacerle algo antes de que el trasmisor envie su parte al receptor, y este también le realizaría algo a lo que recibio
                - receptor: necesitaba dos cintas, una con la clave y otra con el texto cifrado
        - Uso del XOR de 2 textos claros es equivalente a hacer el XOR de los textos cifrados con la misma clave obtenidos de ellos 
                - por lo que podemos recuperar info like IC de ambos textos si tenemos la de los textos cifrados, si tenemos suf texto, podría tener éxito.
                - Por lo que se recomendaba que la clave no se repita nunca:
        - La opción es que la clave sea aleatoria, por def irreproducible
        - Sistema de cifrado simétrico: aquel donde se usa la misma llave para cifrar y descifrar
        - Un cifrado simétrico es perfectamente seguro si  para todo criptograma A in C:todos los posibles textos. P_A(MU)=P(Mu) para todo texto claro en M:todos los posibles mensajes,

    - LSFR (ver puntos importantes en las diapositivas): Linear Feedback Shift Register- registros de desplazamiento con retroalimentación lineal
        - idea general: 
            - a idea general detrás de un LFSR es tener un registro de bits de longitud fija donde se realiza un desplazamiento en cada paso de reloj. El bit más a la derecha se envía como salida y luego se calcula un nuevo bit para reemplazar el bit más a la izquierda mediante una combinación lineal de algunos de los bits del registro. Esta combinación lineal se realiza mediante una función de retroalimentación que utiliza operaciones lógicas 

            - la llave tenía que ser larga, aleatoria, y de un solo uso.
                - es importante denotar que transportar la llave debilita nuestro sistema
            - para que el ciclo que genere el LSFR sea de longitud máxima vamos a pedir que el polinomio asociado sea: Irreducible: no puede escribirse como prod de polinomios de grado menor
                - se usaron estos polinomios para generar secuencias pseudoaleatorias, aunque son deterministas
                - 
        - usos:
            - Criptografía: Los LFSR se utilizan en algunos algoritmos criptográficos, como cifradores de flujo. En estos casos, el LFSR se combina con otros elementos criptográficos para generar claves o secuencias de cifrado.

    - Funcionamiento de una red de Feistel.
        - Una red de Feistel es una estructura criptográfica utilizada en muchos algoritmos de cifrado simétrico, como el DES (Data Encryption Standard). Su diseño se basa en la división del bloque de datos en dos mitades iguales y la repetición de un proceso denominado ronda para mezclar y transformar los datos.
            - El bloque de datos que se va a cifrar se divide en dos mitades, 
                - En DES 
            - rondas de TRANSFORMACIÓN: se aplica una función a una parte y se realiza el XOR
            - intercambio d lados
            - decodificación: uso de subclaves en orden inverso
        - Es importante destacar que una red de Feistel tiene la propiedad de ser invertible, lo que significa que se puede descifrar utilizando el mismo algoritmo y subclaves invertidas.

        - El diseño de una red de Feistel ofrece varias ventajas, como la simplicidad del algoritmo, la facilidad de implementación y la capacidad de distribuir las subclaves de forma segura. Además, proporciona una mayor resistencia frente a ataques criptoanalíticos, como el análisis diferencial y el criptoanálisis lineal, al permitir una mayor difusión y confusión de los datos en cada ronda.

    - Descripción de DES (rondas, creación de llaves).
        - Funcionamiento:
            - Se divide en 2, L0 Y R0
                - al calcular C0D0 obtenemos 2 bloques (28 bits c/u)
                - La llave de 56 bits se somete a una permutación inicial llamada PC-1
            - 16 RONDAS - que hay de la permutación inversa
                - Calculamos l1-1, r1-1, esta última pasa al lado izq directo y l1-1 pasa por una función f que aparte recibe la Ki para despues hacer un XOR con Li-1
                    - la función expande Li
                - Se aplican una serie de desplazamientos y permutaciones a las mitades C0 y D0 para generar un conjunto de subllaves. En cada ronda, las mitades se desplazan a la izquierda y se aplica una permutación específica llamada PC-2 
            - carac:
                - K de longitud 64 (56 bits sin bits de paridad)
                - Las posiciones: 8,16,...,64 son definidas de tal forma que cada byte tenga un número impar de 1’s.
                - Los bits de paridad son ignorados.
            - en DES, las llaves (subllaves) se generan a partir de una llave principal mediante desplazamientos y permutaciones. Cada subllave se utiliza en una ronda específica para agregar confusión y difusión a los datos a través de operaciones XOR, sustituciones y permutaciones. El uso de las subllaves garantiza que el cifrado sea dependiente de la llave y añade seguridad al algoritmo.

    - Diferencias entre confusión y difusión.
        -  La difusión busca dispersar y distribuir la influencia de un bit
            - cambiado en el cifrado a través de la mayor cantidad posible de bits en el resultado cifrado. En una red de Feistel, la difusión se logra mediante el intercambio de los lados izquierdo y derecho en cada ronda y la combinación mediante operaciones XOR.
            - La difusión es importante para evitar que patrones o información del texto claro original se mantengan en el texto cifrado, lo que dificultaría la recuperación de la información original.

        - La confusión tiene como objetivo hacer que la relación entre el texto claro y el texto cifrado sea compleja y no lineal,  la confusión se logra mediante la función F, que generalmente incluye operaciones no lineales, como sustituciones y permutaciones.

            - La función F  , lo que dificulta la correlación entre los bits de entrada y los bits de salida. Esto ayuda a ocultar cualquier patrón o estructura en los datos y proporciona una mayor resistencia frente a ataques criptoanalíticos.
        
        - diff: 
            - confusión: 
                - La confusión tiene como objetivo ocultar cualquier patrón o estructura presente en los datos originales.
                - Su propósito es dificultar la inferencia de información sobre la clave o el texto claro a partir del texto cifrado.   
                - La confusión se enfoca en la complejidad de la relación entre los elementos de entrada y salida del algoritmo de cifrado.
            - Difusión: 
                - La difusión busca dispersar y distribuir la influencia de un cambio en un bit de entrada a través de una amplia gama de bits en el resultado cifrado.
                - mezclando los datos varias veces ampliamente
                -  garantizar que cualquier cambio en los datos de entrada se propague rápidamente y se distribuya ampliamente en los datos de salida.
                -  propósito es eliminar cualquier patrón o estructura en los datos cifrados y aumentar la resistencia frente a ataques criptoanalíticos.
                - La difusión se enfoca en la propagación de los efectos de los cambios en los bits de entrada a través de múltiples operaciones criptográficas.
    - Temas de laboratorio: secure shell. 
    - Fecha del examen: martes 23
    - Forms abierto desde las 9:00 am hasta las 11:59.

# TERNAL BLO PROTOCOLO TS LSC
examen

+ criptografia de llave publica o asimetrica
        - no ha hecho la criptologia simetrica obsoleta hasta ahora
        - se basa en funciones matemáticas
                -

+ en la convencional, la simetrica, todo esta basado 
        - depende de la longitud de la llave y de la capacidad de computo involucrada


- funcion de cifrado que dependee de una llave publica y una de la llave privada, dos diferentes para cada persona-entidad
        - la llave  publica está siempre publica
        - 
+ RSA:
        - cifrado por bloques

+ Describe qué es y cómo se usan las cajas S en DES. 
    - Las 8 cajas bidimensionales(4x16) enumeradas S son tablas(arreglos) previamente diseñadas para la implementación de DES, cada renglón de una caja-S es una permutación de los enteros 0...15, ninguna es una función lineal ó afin y son utilizadas para meter ruido(confusión y difusión) en nuestro cifrado, a traves de una sustitución no lineal en los datos.
    - Estas se ocupan en parte 3 de la función F, que recibe la parte derecha Ri-1 y la llave Ki, por cada bloque Bj=b1b2b3b4b5b6 que representa un bloque de la cadena binaria de 48 bits resultante de hacer Ki XOR E(Ri-1), donde E(Ri-1) es la expanción de Ri-1, buscamos en la caja Si la coordenada donde el reglon esta dado por b1b6 y la columna esta dada por: b2b3b4b5, el resultado lo cambiaremos a binario y repetiremos con todos los bloques Bj para obtener la nueva cadena de 24 bits que será el input de la etapa 4.
    - Me base en las notas DES-COMPLETO.




una forma mucho más fácil: Solamente deben abrirlos en Firefox, darle al play, y luego presionar Shift+Click Derecho. Ahí aparecerá la opción de guardar el vídeo en mp4.


ES UNA 