# RED TEAM questions

- Un atacante está intentando un ataque DoS contra una máquina. Primero falsifica la dirección IP del objetivo y luego comienza a enviar grandes cantidades de paquetes ICMP que contienen la dirección MAC FF: FF: FF: FF: FF: FF. ¿Qué ataque está ejecutando? 
	- 

- ¿Cuándo se realiza el secuestro de sesión?
	- Después del 3-way handshake 
	- The 3-way handshake is a proccess used by TCP Transmission Control Protocol to establish a connection between a client and a server before transmit data
		- SYNCHRONIZE - SYN
			- The client sends a SYN packet to the server to initiate the connection. This packet contain an Initial Sequence Number ISN to can track the data being sent.
		- SYN-ACK SYNCHRONIZE ACKNOWLEDGE- RECONOCE
			- the server answer with a SYN ACK packet that acknowledge the Sequence Number and provides the server's own sequence number
		- ACK ACKNOWLEDGE
			- The client sends an ACK packet back to the server, acknowledging the server's sequence number. After that the connection is fully stablished and data can exchanged.
	- The 3-way handshake is completed before data transmission begins.

- ARP Poisoning: Its a cyber attack where an attacker inject false information in the ARP cahce-table on a network device, haciendo que redirija el tráfico de red a una dirección MAC controlada por el atacante en lugar de a su destino legítimo.
	- ARP Address Resolution Protocol - protocol used to link IP adresses with  MAC addresses
		- Es un protocolo de red utilizado para determinar la dirección MAC de un dispositivo a partir de su dirección IP. No es una configuración de puerto en sí misma, sino un protocolo que se utiliza para resolver direcciones IP a direcciones MAC en una red local.

- UTM Gestión unificada de amenazas: Unified Threat Management
	- device that combine several security funtions in only just one device, it means that a UTM can realize task as firewall, intrusion prevention, content filtering, antivirus, antispam and more

- Threat Vector 

- Cuál de los siguientes es un protocolo comúnmente utilizado con las VPN de hoy en día?
    - Respuesta correcta: IPsec
    	- A suite of protocols that provide security for network communications at the network layer. It is widely used in modern VPNs due to its high level of security and flexibility. IPsec provides authentication, confidentiality, and integrity of transmitted data

- ¿Cuál de los siguientes es un protocolo de enrutamiento de estado de enlace? OSPF (Open Shortest Path First)
    - Explicación: OSPF (Open Shortest Path First): Un protocolo de enrutamiento de estado de enlace que **calcula la ruta más corta a todos los destinos en una red**. Los routers OSPF comparten información completa sobre la topología de la red, lo que permite una convergencia rápida y rutas más eficientes.

- configuracion de puertos:
	- Control de flujo: Una configuración de puerto que determina cómo se maneja el flujo de datos entre dos dispositivos conectados.
	- Duplex: Una configuración de puerto que determina la dirección del tráfico de datos (half-duplex o full-duplex)

- netstat te permite ver los puertos abiertos en windows

-  ¿Cuáles de los siguientes protocolos son conocidos por las contraseñas en texto claro? 
	- Telnet: Este antiguo protocolo de acceso remoto envía los datos, incluyendo las contraseñas, sin ningún tipo de cifrado.
	- FTP: El protocolo de transferencia de archivos también transmite las credenciales en texto plano, lo que lo hace inseguro para la transmisión de información confidencial.

- ipconfig nos permite obtener info detallada sobre la config TCP IP de un equipo
	- all muestra toda la info disponible

-  En una red gestionada por SNMP, ¿qué software ejecuta un dispositivo gestionado?
	- SNMP (Simple Network Management Protocol): Es un protocolo de red estándar utilizado para monitorear dispositivos de red.

- "MAC address" is a "physical address" and TCP is "connection-oriented."

- Practice explanations: Try explaining concepts like the difference between TCP and UDP or the function of a MAC address in your own words in English.
	- difference between TCP and UDP
		- tcp
			- connection oriented by 3-way handshake
		- udp

- ports: 
	- FTP as pasiv
		- 21
	- ssh: 22
	- telnet: 23
	- dns: 53
	- POP3? 110
		-  es un protocolo que traslada mensajes de correo electrónico desde un servidor de correo electrónico a un cliente de correo electrónico en una conexión TCP a través del puerto 110.
	- sql server on windows:
		- 1433
- ipconfig /displaydns
	- ipconfig: Esta utilidad de línea de comandos en Windows se utiliza para obtener información detallada sobre la configuración de TCP/IP de un equipo.
	- /displaydns: Este parámetro específico le indica a ipconfig que muestre la caché de resolución de nombres DNS del equipo, es decir, la tabla que contiene los registros DNS que se han obtenido recientemente.

- que protocolo es usado en las VLANs para etiquetar el tráfico de capa 2?
	- 802.1Q: Este protocolo de estándar IEEE define una forma de etiquetar tramas Ethernet para permitir la segmentación de una LAN en múltiples VLANs virtuales. Cada trama que pertenece a una VLAN específica lleva una etiqueta 802.1Q que identifica la VLAN a la que pertenece.

- comandos:
	- tasklist: show all the process that r running in the system

-  En un ataque DoS por Telnet, el atacante explota un defecto del software del servidor Telnet que se ejecuta en el switch, el cual hace que el servicio de Telnet no esté disponible. 
	- V

- ipv4 Internet Protocol version 4
	- es una etiqueta numérica única que identifica cada dispositivo conectado a una red de computadoras que utiliza el protocolo de Internet.
	- a IPv4 adresses is divided into 2 main parts:
		- network portion: identifies the network to which a device belongs
		- host part: Identifies a specific device inside a network

- OSI LAYERS:
	- Physical Layer: This layer defines the electrical, mechanical, and functional specifications for activating, maintaining, and deactivating physical links.  
	- Data Link Layer: This layer provides for the reliable transfer of data frames across a physical link.
	- Network Layer: Responsible for addressing, routing, and packet switching. IP (Internet Protocol) operates at this layer.  
	- Transport Layer: Provides end-to-end communication services and guarantees delivery of data packets. TCP (Transmission Control Protocol) operates at this layer.  
	- Session Layer: Manages sessions between applications.  
	- Presentation Layer: Ensures that data is in a format that the application layer can understand.  
	- Application Layer: Provides network services to user applications.   

- El proceso utilizado para convertir direcciones privadas en direcciones enrutables a Internet se denomina traducción de direcciones de red (NAT). 

 ¿Cuántas direcciones de host están disponibles en la red 172.16.128.0 con máscara de subred de 255.255.252.0?  1022 WHY???


  ¿Cuáles de los siguientes son direccionamientos validos clase B? (seleccione todas las que apliquen)
Selecciona las respuestas correctas
10111001.11001000.00110111.01001100
10011001.01111000.01101101.11111000
10011111.01001011.00111111.00101011
todas why?


¿Qué utilidad se puede usar para ver una lista de conexiones TCP abiertas en sistemas Linux o Windows?
Selecciona la respuesta correcta
Netstat


 Su misión es orquestar todo el proceso de simulación de ejercicios, establecer las reglas de compromiso, definir los marcos comunes que utilizarán todos los equipos de ciberseguridad, impulsar las prioridades organizacionales y monitorear el progreso de cada uno de los equipos.
Orange Team 

 ¿Cómo se transmite un DHCPDISCOVER en una red para llegar a un servidor DHCP?  Se envía un mensaje DHCPDISCOVER con la dirección IP de difusión como dirección de destino. 

  Hablando de protección de datos personales, ¿Los derechos ARCO se refieren a?:
Acceso, rectificación, cancelación, oposición. 

 ¿Qué ley rige el manejo de la información relacionada con los estados financieros de las empresas que cotizan en bolsa?  sox

  Yolanda está escribiendo un documento que proporcionará información de configuración sobre el nivel mínimo de seguridad que todo sistema de la organización debe cumplir. ¿Qué tipo de documento está preparando?
  Baseline

- ¿Qué sitio web puede utilizar para determinar el rango de red de una dirección IP?  www.arin.net 

- continuous 
vocabulary
- lacking 
after you see than 
zombie process 
operating 