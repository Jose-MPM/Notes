# Computer networks - José Luis
TAREAS INDIVIDUALES
PRACTICAS 
- Correo para la materia: redes@ciencias.unam.mx
- calendario del semestre: https://www.dgae.unam.mx/assets/images/semestral2023.jpg
- el canal de YT: https://www.youtube.com/channel/UCk-SQLqCelc0fF6X6X2LVKg?view_as=subscriber

- el moodle donde seran los examenes:https://moodle.fciencias.unam.mx/cursos/
- la pagina del curso: https://redes-ciencias-unam.gitlab.io/curso/
https://redes-ciencias-unam.gitlab.io/
- el link a Telegram: https://t.me/redes_ciencias_unam

## Evaluación
Se considerarán los siguientes elementos para llevar a cabo la evaluación:

    Exámenes
    Se aplicarán 4 exámenes, de acuerdo al avance que tengamos en el curso, en las siguientes fechas:

    1er. parcial: 22 de febrero
    2o. parcial: 22 de marzo
    3er. parcial: 26 de abril
    4o parcial: 24 de mayo

    Requisito para presentar examen: haber entregado puntualmente las tareas anteriores a la fecha del examen.

    No habrá reposiciones de exámenes

Es requisito indispensable el contar con un promedio aprobatorio en los exámenes y haberlos presentado todos, sin excepción, para tener derecho a obtener una calificación final aprobatoria en el semestre.
 
Prácticas: 50%

Exámenes: 30%

Proyecto final: 10%

Tareas: 10%

## Network Computers
- Intr1
    * Red: Conexión vía enlaces entre nodos/dispositivos.
        * Enlace: medio de conexión
            - Medios guiados: cables(impulsos electrícos o luz)
            - No guiados: Uso de ondas electromagnéticas

    * Tipo de conexión: Topología: Manera en la cual requiero conectar mis equipos
        - Tipos de topología:
            - Bus: SOlo un flujo donde se conectan varios nodos.
            - Estrella: Elemento central intermediario entre los nodos.
            - Anillo: Conexión distribuida circular entre los nodos.
                - Con conexión unidireccional.
                    - Caso particular de una malla
            - Malla: Los nodos conectados entre sí
                - TOTAL: todos los nodos
            - Árbol: 
    * Podemos ecceder a recursos/servicios vía red
        - Esquema cliente servidor: conexión entre el nodo cliente y el nodo servidor.

    * Reglas para la comunicación?
        -  Cada nodo tiene un tipo de comunicación diferente que implica un lenguaje utilizado entre las aplicaciones que esta definido por un conjunto de reglas:

    * PROTOCOLOS: Necesarios para una posible comunicación.
        - Reglas que delimitiran el comportamiento
        - Hechos para evitar colapsos entre la info mandada.
        - Manera de resolver las diferencias entre las redes

    * Comunicación entre redes:
        - INTERNET: Red de redes  que usan  TCP/IP

    * 2 de tipologías: fisica y lógica
        - Logica: forma en como una red resuelve los problemas, manera en como se transmite la información entre los medios.

- Intr2
    * Clasificación  de las redes de computadoras:  
        - LAN: Local Area Network
            - propiedad priv
            - una topología física
            - Operan con el mismo protocolo
            - Espacio que ocupan limitado x los medios físicos
            - Recursos compartidos
        - MAN: Metropolitan Area Network
            - Red intermedia entre LAN Y WAN
            - De alta velocidad
            - moderado numero de nodos
        - WAN: Wide Area Network
            - Más grandes que la MAN
            - Alta velocidad 
            - Medios guiados
        - GAN: Global, de alcance mundial
        - PAN: Personal Area Network
        - VPN: Virtual Private Network
    * Cómo se conectal los equipos en la red?
        - Usando un dispositivo que permita conectar diferentes nodos para que puedan establecer conexión entre ellos: Switch, para así poder crear una red.
        - Router: Permiten conectar redes entre sí y se encarga de buscar rutas
        - Bridge: Permite conectar 2 dos redes de forma logica tq puedan verse como solo 1 red
            - Se encarga de realizar las adaptaciones entre los formatos posibles usados, puede variar el protocolo entre las 2 redes.
    * Formas de trasmisión-comunicación
        - Simplex: De un transmisor a un receptor.  
            - Permite transmitir una información a traves de un enlace unidirexional.
            - Half duplex: Un Medio bidirexional que solo se puede usar una vez para conectar los 2 nodos T/R
            - Full duplex: Bidirexional que permite recibir y transmitir simultaneamente
    * **Conmutación de circuitos**
        - Previo a la transmición se establece un circuito como ruta por donde sera el envio.
        - Solo los routers reservan recursos para las conexiones que busca hacer, NO LOS SWITCH. para que se respete lo necesario por cada proceso de comunicación
            - Muy afectada por la perdida de un enlace.
        - Ventajas: 
            - Entrega constante y ordenada; ya que evita esperas porque previamente fue asignado los recursos
            - Se puede garantizar el orden y un tiempo determinado máximo para la entrega
            - Ruta definida siempre usada, hasta que exista la necesidad de conmunicación, a menos que tengamos fallas. 
        - Desventajas:
            - Proceso involucrado previamente a la transmición, tiempo alto de inicialización, por contruir el circuito virtual. 
            - Sensible a la falla de enlace
            - Periodos de inactividad:
                - Producimos por la reservación de recursos cuando existan nuevos intentos de conexíones.
            - Limita el núm de conexiones permitidas.
    * Toda la info transmitida en las redes es vía de paquetes:
        - Se divide en partes pequeñas lo que queremos enviar, encapsulandolo con su respectivo header para que sea transferido entre los dispositivos: switch o router.
        - **Conmutación de paquetes**:  
            - No se establece de antemano una ruta para enviar los paquetes, se envían por donde se pueda. 
            - Tiempos de entrega diferentes! Tampoco puedes garantizar el orden.
                - Se ocupa un buffer para guardar toda la info antes de entregarla a quien lo necesito.
            - Para no atrasar el envio elige otra ruta
            - Ventajas:
                - No es sensible a perdidas de enlaces, a menos que sea total. Menos sensible a la falla.
                - Inicialización rapida, ya que no es necesaria la reservación de recursos.
                - Uso más eficiente de enlaces
                - Permite mayor número de coneciones simultanes conexiones
            - Desventajas:
                - No se puede garantizar un tiempo de entrega y mucho menos un orden
                - Mecanismos más complejos para la conexion de los routers 
            - Se ha demostrado que es mejor ocupar la conmutación de paquetes.
        * EL INTERNET es una red de redes de alcance global que hace uso de la conmutación de paquetes y el uso de prótocolos HTTP.
    
    * LA PARTE CENTRAL DE LA RED: Son todos los routers que nos permite alzar la red
        - Nos permiten establecer rutas y reenvio de paquetes.
            - Dentro de un router tenemos 4 etapas:
                - Transmición, lee el imput
                - Procesamiento para saber a donde va.
                    * Si se llena, o esta congestionado, cuando reciba otro paquete, lo perdera
                - Espera para transmisión
                - Propagación: tiempo tomado para llegar a otro router

    * Elementos que determinan la eficiencia de una red:
        - Retrasos: 
            - Los retrasos se producen cuando los paquetes se quedan esperando.
        - Perdidas: 
            - Provocada por la congestión:
                - quedarse sin espacio para procesar paquetes
            - Falla de enlaces 
            - Paquetes corrompidos
        - Rendimiento:

- Intr3:
    * Sistema de redes aútonomos. 
        - Conjunto de subredes interconectadas que son independientes de otros conjuntos de redes, se pueden conectar entre los sistemas autonomos.
    * Proceso de ruteo de una red:
        * Los **Routers** se encargan de hacer la tabla de ruteo[incluye todos los mapeos posibles, para saber que ruta seguir] y del reenvio de los paquetes y la busqueda del enlace por donde haremos la conección.
            - Recursos limitados para construir la tabla.
                - s
* Modelo OSI-Modelo TCP/IP
    * Modelo OSI:
        * Serie de capas:
            - Independencia entre las capas
            - Capas:
                - Fisica: Como son los medios fisicos, serializacion dentro de los medios incluidos en la trasmición de los datos.
                    - Interfaz del medio de transmición.
                    - Tarjetas de red  y los hubs.
                - Data Link: verificar el direccionamiento fisico, comunicación ocupando direcciónes fisicas, MAC:Frames
                    - Acceso al medio, control logico de conexion
                    - Puentes, switches
                - Red: Determina como sera la comunicación, direccionamiento logico, envio de PAQUETES.
                    - Entrega de extremo extremo.
                    - Routers
                    - **Los equipos pueden tener 1 o más direcciones logicas pero solo se puede tener una dir fisica x interfaz de red**
                - Transporte: Se establece una conexión entre 2 procesos, puertos logicos por donde se transforman.
                    - puertos de red
                - Session: Comunicacion entre los equipos
                - Presentation: formato de los datos
                - Aplication: Datos realmente intercambiados.
    * TCP/IP
        - Network Interface = Fisica y la de enlace
        - Internetwork=network
            - TCP: orientado a paquetes
            - UDP: orientado a datagramas
        - Transport: Host to host
        - Application: Aplication, representation, session.

* Tipos de transmición.
    - Unicast: comunicación entre 2 equipos, un receptor y un trasmisor
    - Multicast: comunicación de 1 a varios, grupo definido para el multicast, el transmisor solo dirige su trasmicion al grupo. 
    - Broadcast: De 1 a todos.
        - dispositivos conectados a un hub o switch recibiran el mensaje, se usa una dirección especial física o lógica.
    - Anycast: comunicación  de uno hacia algun miembro del grupo, pero solo será el más cercano es el que responde, se usa con **IPv6**.

* Capa Física-Network Interface:
    - Cableado estructurado
        - Cables UTP 
            - CAT 5E: Max 100m
            - CAT 6:
            - CAT 6E:
            - CAT 6A:
            - el CAT 7 solo sirve para data center
        - Patch Panel[Panel de parcheo]: 
            - cada lozeta es un kistong
            - Terminación adicional, donde podemos conectar 
        - Rack, la altura varia pero son 19 pulgadas de ancho con unidad de rack: 4.5 
            - gabinete
            - pasillo frio: parte frontal: parte de parcheo.
            - pasillo caliente: donde se conectan todos los cables, salida del aire.
            - tambien se puede tener
        - Entre la ROSETA DE RED y el Patch Panel no pueden exceder los 90m
        - Para extender el rango se debe ocupar un repetidor: amplifica la potencia de la señal
        - Tipos de switches:
            - Acces: nosotros nos conectamos a la loceta de la pared, esta al panel de parcheo y este a switch de acceso
                - proporcionan acceso a todos los clientes
            - Distribution: A estos se conectan los switches de acces, concentran el trafico del piso
            - Core: Donde se conectan los de distribution
    - Medios de trasmisión
        - Sobre la capa de modelo
        - Medios de trasmisión:
            - Coaxial cable:
                - RG-58
                - RG-8U
                - RG-8U
                - Terminal
            - Fibra Optica: Laser que codifica la info: pulsos de luz.
                - ten cuidado con los laser
            - Cable telefónico: con conectores RJ-11
            - Microfiltro para ADSL: dividen la señal por su frecuencia.
            - Cables de trenzado: Trenzados entre sí.
                - UTP
                - STP: escudo para la interferencia
            - Conector RJ-45: 
                - Se pueden conectar a un coplex, Jack RJ-45 
            - Keystone
        - Estándar EIA/TIA 568 A y B: min 20
            - Cable normal=!cruzado
        - Señalización diferencial, con la señal dividida en + y - para que podamos quitar el ruido.
        - Tranceiver: Convierte las señales
        - Conector SFP: 
        - Modems de voz:
    - Topologías de red: Como vamos a conectar los equipos entre si.
        - Punto a punto: para conectar 2 disp con cable
        - Bus: Todos se conectan entre sí a traves de un medio compartido. Y solo se puede ocupar una conección a la vez
        - Estrella: Dispositivo activo [concentrador de red] al cual se conectan todos los disp
        - Anillo: Comunicación Unidireccional seguido uno a otro
        - Anillo doble: 
        - Malla: Cada equipo esta conectado con todos los equipos, tq tengamos n-1 enlaces
        - Árbol: topología jerarquica

    - Dispositivos activos de una red: 
        - Hub: tiene un transformador magnético, que va a un CHIP PHY o ADC - capa 1; que maneja la lógica de procesamiento de señales. 
        - Switch: Operan en una capa superior:2
            - cada equipo se conecta a traves al jack a traves del cable ethernet, que internamente se conecta a un transformador magnético
            - Se conectan al chip PHY que maneja todo lo de la capa 1, que se conecta al chip de capa 2
            - CHIP SWITH-capa 2: Procesamiento de frames.
                - RAM: para puertos y dir MAC
                - EEPROM O NVRAM para guardar la configuración
            - ¿Cómo funciona? 4:37
        - Router: Normalmente se conectar switch's y otros routers
            - Opera en la capa 2 y 3, por eso las ip's
            - Tenemos las interfaces de red
                - tiene una dir MAC y una IP pq trabajan en la cap3
                - por c/u tenemos un chip PHY, que controlan la capa1
            - CPU que procesa la cap 2 y 3
            - Tenemos una tabla de rutas IP
            - NVRAM O flash para guardar el so y los registros de configuración del mismo.
        - Acces point:
            - Normalmente se conecta a un switch 
            - Un tranformador magnético y un chip PHY, que controlan la capa1
            - CPU que procesa la cap 2 y 3
            - RAM
            - NVRAM O flash para guardar el so y los registros de configuración del mismo.
            - PHY WiFi
            - Antena wifi
        - Puertos LAN, WAN
* Capa Física-Dispositivos de Red.
    - 2 tipos de equipos:   
        - DTE: Data Terminal Equipment: CLIENTES
        - DCE: Data Communications Equipment: equipo activo.
        - 18:34  
        - puerto CISCO
        - HUB: concentrador de red: regenera y envia a todos los puertos

## [Capa de enlace](https://www.youtube.com/watch?v=Y2HIq4ge9Qw&list=PLN1TFzSBXi3TYgnUzlVsjdWYLBAaNdq0v&index=21)

* Servicios y funcionalidades implementadas en esta capa:
    - Proporcionar una interfaz de servicio a la capa de Red.
        - Tranferir datos de la capa de red del equipo origen a la capa de red del destino, se encarga de transmitir los bits a la máquina de destino para que sean entregados a la capa de red. Virtualmente
        - Encapsulamiento en capa y capa.25

    - Manejo de **tramas**, formato
        - La capa de enlace produce un bloque de datos a partir de los datagramas producidos por la capa de Red: trama, donde se incluyen en la parte del encabezado las direcciones fisicas de los equipos que tratamos de ocupar[dirección MAC], se agrega un terminador y se requiere introducir un "separador" al transmitir las tramas.
        - Si algo falla en las verificaciones la información no debe seguir su flujo en cualquier capa.
    - **métodos de entramado**:
        - El equipo destino debe ser capaz de reconocer cuando termina e inicia una trama, aparte del terminador. Introduciendo un separador(espacio de tiempo donde no se transmite nada). Pero debe tomarse en cuenta que a veces no tenemos un medio estable. No es tan confiable
            - para poder saber donde inicia y donde termina nuestra trama
        - **Conteo de caracteres**:
            - Este fue hecho para resolver los problemas de la estabilidad del envio de tramas a traves del tiempo.
            - primer byte representa el número de bytes ocupados x una trama
            - método muy suceptible a los errores
                - si se altera el primer byte podemos tener un error en el tamaño de la trama
        - **Uso de banderas con relleno de carácteres.**
            - Banderas para inicializar y terminar la trama-1byte
            - Y esc + el caracter que representa nuestra bandera:46 
            - aumento de tamaño x las banderas
        - **Uso de banderas con relleno de bits.**
            - c/trama inicia y termina con: 01111110
            - para evitar que la bandera se repita en la trama cuando tengamos 5 1's colocamos un 0 en el flujo de salida que luego se eliminara en el receptor:
        - En la capa **de enlace se determina el tamaño min and max de una entrada(trama)**
            - para determinar si una trama tiene un error
    - Acceso al medio:
        - 
    - Servicios de entrega:
        - No orientado a la conexión sin confirmación de recepción.
            - El paquete se desecha si la fase verificadora falla.
            - Se puede enviar datos pero no esperamos que nos confirmen si fue recibido
        - No orientado a la conexión con confirmación de recepción
            - Se envian los datos, se revisa la integración de la info, se desencampsula y envia a las otras capas.
                - Si se puede entregar a la capa de red, se construye un paquete con el número de paquete recivido que funciona para responder que todo salio bn.*ACK: manera de confirmar la recepción.*
                - temporizador
        - Servicio orientado a la conexión con confirmación de recepción
    - Detección y correción de errores. 
* Notes:
    - La capa de transporte es una biblioteca del SO
    - La capa de enlace es principalmente hardware: tarjeta que implementa la interfaz de red. NIC-Tarjeta de red

### Control de acceso al medio y ethernet
- https://www.youtube.com/watch?v=qbEME7Bfspc&list=PLN1TFzSBXi3TYgnUzlVsjdWYLBAaNdq0v&index=24
- FDM: Multiplexión por división de frecuencia.
    - se dividen en rangos de frecuencia, teniendo canales independientes.
- TDM: Multiplexión por división de tiempo.
    - en un canal
- protocolos: reglas para establecer una correct conección entre varios dispositivos 
- WDM.
- Canales de difusión-canales multiacceso o canales de acceso correcto.
- subcapa MAC: Reglas establecidas para determinar como los emisores pueden tener acceso al medio. 
    - capa de control al acceso al medio.
- asignación de acceso al canal.
- WDM(),FDM-fibra optica multimodo-asignación estática, no tiene la necesidad de esperar que el canal se desocupe
    - multiflexión entre frecuencias: se hace una asignación estatica del canal, a cada emisor tiene una frecuencia independiente para el.
- Fibra optica unimodo-TDM: Asignación dinámica, cuando necesitamos compartir un solo canal
    - supuestos para este tipo:
        - Tráfico independiente
        - Canal único que tiene que ser compartido.
        - Detección de colisiones
        - Tiempo continuo o ranuras de tiempo
        - Detección deportadora o sin detección de portadora    
            - señal activa permanentemente

- Procolos de acceso múltiple-EN una red de difusión:
    - ALOHA PURO:
        - Los emisores envian la trama cuando la tengan listas
        - Se pueden producir colisiones.
        - Una vez detectada la colisión, se vuelve a trasmitir la trama dañada y se queda detectando posibles colisiones en el medio.
        - Si no detectamos una colisión, se supone que la trama se pudo transmitir sin problema.
        - Si se detecta una colisión, se vuelve a esperar un random time y se intenta retransmitir.
        - Sistemas de contensión: los emisores tienen que contender x el uso del canal(unico, compartido x varios).
    - CSMA-Acceso Multiple con Detección de portadora(señal transmitida permanentemente):
        - El emisor escucha el canal para ver si alguien esta transmitiendo.
            - para detectar la portadora y ver si esta vacio.
        - Si el canal está vacío el emisor transmite sus datos, si no, esperamos un tiempo aleatorio
        - Aun así se pueden producir colisiones que dañan la trama.
        - Los emisores deben detercarla
        1. CSMA-persistente:
            - espera hasta que un emisor termine de transmitir e inmediatamente empezamos a transmitir.
                - podemos tener una cantidad grande de colisiones
        2. CSMA-no persistente:
            - al momento de detectar que alguien lo esta ocupando, esperamos un tiempo aleatorio para poder ocupar el canal.
            - reduce el num de colisiones.
        3. CSMA-CD con detección de colisiones.
            - Comienza introduciendo su trama pero al mismo tiempo va detectando colisiones 
            - Se suspende la transmisión de la trama cuando se detecta una colisión.
    - ALOHA Ranurado
        - 
        - 
    - Estándar IEEE 802
        - Diseños para redes PAN, LAN, MAN.
        - 802.3 - Ethernet - Redes LAN
            - Ethernet clásica: basada en concentradores
            - Ethernet conmutada: 
                - uso de switches
                    - Disp para el reenvio de tramas, opera en la capa 2
                    - Reduce la cantidad  de colisiones
                    - Cuenta con una tabla con todas las dirrecciones fisicas de los disp conectados a sus puertos.
                    - Topología física de estrella-lógica de bus
                - Servicio no confiable y no orientado a la conexión
                - Uso de CRC para verificar de integridad de las tramas.
                - Estándar: 802.3 CSMA-CD
                - Comprende la capa física y la capa de enlace.
                    - se encarga de los mecanismos para acceder al medio
                    - y determina que caracteristicas debe tener nuestra capa física.
                - Tipos
                    - Redes de 100Mbps(Fast Ethernet) 
                    - Redes de 1000Mbps(Gigabit Ethernet) 
                    - Redes de 10000Mbps(10 Gigabit Ethernet) 
                - Sabores:
                    - El primer núm indica la velocidad de la red.
                        - 10BASE-T: 
                        - 100BASE-T
                        - 10BASE-2
                        - 100BASE-LX
                    - BASE se refiere: Ethernet con banda base
                        - "solamente"(principalmente) se transfiere tráfico  de Ethernet
                    - la ultima parte indica el medio fisico
                        - 2-cable Coaxial delgado
                        - 5-cable Coaxial grueso
                        - T y TX - par trensado
                        - F y FX - fibra óptica
                - Formato de las tramas de ethernet:1:03
                    - preámbulo
                    - MAC Destino, MAC Origen
                    - Tipo: IP, ARP
                    - Datos: MTU 1500 BYTES unidad máxima para enviar x Ethernet
                    - CRC
        - 802.11 - LAN Inalámbrica

### Encapsulación  de protocolos de red

* Cliente: 
    - Los datos en la capa de aplicación son enviados a traves de algún protocolo que va sobre TCP: HTTP, HTTPS, SSH o sobre UDP: DHCP, TFTP(capa 7)
    - Se le introduce el header de la capa de transporte: TCP, UDP, ICMP(capa 4) obteniendo así el PAYLOAD de la capa 4. 
    - A eso se le agrega las cabeceras de la capa 3: IPv6, IPv4 teniendo así el PAYLOAD de la capa 3.
    - En ethernet se le agregan sus respectivas cabeceras(capa 2) y un campo Trail encargado de la verificación de la trama. 
    - Cuando esto baja a la capa física: 1, a nivel de la codificación se le agrega un preambulo que indica que ya vamos a estar transmitiendo una trama, al final se hace una pausa para que el canal se estabilice, teniendo así la señal codificada.
* Encapsulación: lo que se envía a traves de Ethernet.

### Dominio de colisión y dominios de broadcast.
* Hub: Transmite la misma señal a todos los puertos. Aunque no este destinada para ellos.
* Colisión de red: Saturación del medio, porque 2 o más equipos quieren transmitir al mismo tiempo, cuando ocurre una colisión, el medio de transmisión queda inutilizable por cierta cantidad de tiempo y todos los equipos dejan de transmitir.
* **Dominio de colisión: Segmento de red(todos los dispositivos) conectado a un medio de transmición compartido. Todos los dispositivos conectados a un canal de transmisión.**
* Switches: Tiene una tabla-memoria RAM donde guarda la dir MAC y puertos, pero primero hacemos un braadcast para saber si el destino esta en nuestros dispositivos
    - broadcast de red: Tipo de transmición que va de un equipo a todos los demás, la señal de puras F's representa la señal-trama del broadcast.
        - **dominio de broadcast: todos los dispositivos conectados a un switch entran dentor del mismo dominio de broadcast.**
        - el router puede limitar el dominio del broadcast ya que opera en la capa 3
        - el dominio del broadcast se puede separar usando vLANs
    - dominios de colisión y broadcast en un switch:
        - switches es cascada forman parte del mismo dominio.
### STP: SPANNING TREE Protocol

* Funcionamiento de un switch
* bucle de red-no permitidos
* STP:
    - Protocolo de capa 2 del mod OSI
    - Evita bucles en los enlaces redundantes
    - OPeración dada entre los switches
    - Switch deben soportar el protocolo STP.
    - Los switches descubren la topología y crean el árbol de conexiones, el árbol se vuelve a construir si la topología cambia, existe un dispositivo raíz
    - Cada puerto tiene un id y un costo, y estos pueden estar activos o standby-en espera
    - Se da preferencia a los puertos más rápidos.

### vLAN 802.1q

* Los switches operan con:
    - MAC destination
    - MAC Origin
    - Type: prótocolo en el que vieene encapsulado
    - Payload-capa 3
    - Padding-en caso que se ocupa para que llegue al tamaño pedido
    - suma de comprobación de la trama

* broadcast storm

* si solo queremos que x dispositivo solo se podría comunicar con Y conjunto
    - para ello trabajamos con **vLAN**:
        - Se le agrega un pedazo a la trama, el tag de la vLAN que cuenta con un:
            - TPID:id bn definido-16 bits
            - TCI: Tag control information
                - PCP: priority code point
                - DEI: Drop Elegible Indicator: nos dice si se puede descartar x alguna razón.
                - vLAN:  
                    - la vLAN 1 no lleva tag
                    - las vLAN con tag son del 2-4094
                - 
- vLAN 802.1ad: Q-in-Q: 
    - contiene un tag de vLAN externo
    - contiene un tag de vLAN interno-el mismo de siempre

### Capa de Red
* Servicios de Red:
    - Entrega garantizada
    - Garantía de entrega con retardos acotados
    - Entrega ordenada de paquetes
    - Garantía de ancho de banda mínimo
    - Garantizar el tiempo máximo de separación de dos paquetes.
    - Servicios de seguridad 
    - Servicio orientado a la conexión o no orientado a la conexión?
* Internet:
    - Servicio de mejor esfuerzo (servicio no orientado a la conexión) No se proporcionan los servicios anteriores.
        - Tipo de redes que se construye con un servicio no orientado a la conección, este trata que lleguen al destino pero no garantiza la entrega
* datos:    
    - 2 paquetes consecutivos pueden no seguir la misma ruta 
    - los protocolos de ruteo permiten recuperarse de problemas como perdidas o saturación de enlaces.
* Routers:  
    - 
    - algoritmos utilizados: protocolos de ruteo
    - las tablas de los routers nos ayudan a determinar la ruta que seguira un paquete. 
    - puertos de routers: bidimensionales: entrada fisica y des
        - entrada: desencapsula la trama que se enviara a traves de un puerto teniendo la info para que sea procesada por switching fabric(salida a traves de un puerto correspondiente)
            - switching fabric componente tiene varias formas de trabajar:  
                - espacio de memoria para guardar la copia al buffer por donde se enviara
                - Bus: enviado al bus y detectado por la salida que coincide-
                - crossbar
            - cada router tiene una tabla de ruteo listando cada destino posible y puerto d salida a utilizar.
        - métricas para determinar costos:
            - número de saltos
            - Retardo promedio de un paquete
            - Distancia física
            - Políticas
            - Ancho de banda
            - Congestión
            - Costo de la conexión.
                - 
    - el running procesor se encarga de ver a donde se dirige el paquete y con base al destino escogemos el puerto

### Capa de red-Dispositivos

### Direcciones IP, lógicas y DNS
* Cómo identificar de manera única un equipo en una red?
    -
* Cómo identificar de manera única un equipo en Internet?
    - 
* Direcciones IP y lógicas
    - 4 bytes para representar la dirección en la parte "Equipo Origen" del paquete
        - iPv4: las direcciones están formadas por 4 bytes
            - 1 byte: valores entre 0-255
    - Direcciones: 
        - Clase A: fijando el primer número:
            - 1.X.X.X: 1.0.0.0 -- 1.255.255.255
                - el número 1 representa la red, lo restante el host.
                - esquema que forma internet
                - 16 777 216 posibles direcciones
                - for countries
                - Máscara de subred 255.0.0.0
        - Clase B: fijando los primeros 2 números para poder identificar la red:
            - 1.1.X.X: 1.1.0.0 -- 1.1.255.255
                - X.X para identificar el host
                - REDES AÚN GRANDES: 65536 posibles direcciones
                - for big organizations
        - Clase C: fijando los primeros 3 números:
            - 1.1.1.X: 1.1.1.0 -- 1.1.1.255
                - el número 1 representa la red, lo restante el host.
                - esquema que forma internet
                - la red se identifica con los 3 primeros bytes.
                - para redes pequeñas, como para una empresa
        - ejemplo:  
            - 
* Direcciones lógicas:
    - traducción de la dir ip a expresiones equivalentes
        - 132.248.28.3 -> hp.fciencias.unam.mx
        - mex, unam, fciencias, nombre del host
* Asignación de direcciones de forma única.
    + Internacional
        - IANA-Internet Assigned Numbers Authority
        - ICANN-Internet Corporation for Assigned Names and Numbers
    + Asignación Local-México
        - NIC México, administración del dominio .mx: .com.mx, .org.mx
        - Asignación local dentro de México-UNAM
            - DGTIC: Administración del dominio .unam.mx, por ejemplo: .imate.unam.mx
    + como se maneja el cambio de palabras a números?
        - usando DNS:
            - base de datos que se encarga de la traducción entre dir lógicas e IP's   
                - encargada de la conversión de direcciones lógicas a dir IP y viceversa
            - necesitamos que toda red tenga un servicio DNS
    + 
###  Cabecera de IPv4 y Fragmentación de Paquetes

* Encabezado IPv4:
    - Estructura: 2:00: 20 bytes de info obligatoria
        - tamaño variable dependiendo del tamaño de la parte opcional que va despues de la parte obligatoria
        - Versión
        - Longitud de la cabecera, incluyendo la sección de opciones de IP y el relleno.
        - TOS, Tipo de servicio. 8 bytes    
            - Preferencia, 3
                - Prioritario
                - Inmediato
            - Tipo de servicio
                - 1000-Minimizar la demora
                - 0100-Maximizar la tasa de transferencia
                - 0010-Maximizar la confiabilidad
            - MBZ
        - Longitud total: del paquete, incluyendo los datos 
        - Identificación, 16 bytes, en cso de usar fragmentación.
        - FLAGS: 
            - reservado
            - DF-Dont Fragment-1 se permite, 0 no
            - MF-More Fragments-0 ultimo fragmento, 1 hay maś fragmentos
        - OFFSET: Indica el desplazamiento del fragmento, se usa para reensamblar el paquete en caso de haber sido fragmentado.
        - tiempo de vida, se suele inicializar en 64 y cada router por el que pasa le resta 1 al paquete ates de enviarlo
        - protocolo para la capa de transporte
            - ICMP
            - IP: ip in ip - encapsulación
        - checksum: suma de verificación para el encabezado
        - ip destino y origen.
        - Opciones: Se utiliza para extender el encabezado, en caso necesario. Su longitud es variable, 
            - tipo
                - fc: indica si la opción debe copiarse, en caso de que el paquete se fragmente, 0 no copiar, 1 si
                - Class: 2 bytes
                    - 0,Control
                    - 1, reservado
                    - 2, Depuración y medición
                    - 3, reservado
                - número, depende de lo que quieras calcular
                    - 4:Internet time stamp
                        - El campo class tiene el valor 2 y no se establece el campo Fc. Longitud del campo de datos variable. Cada router que atraviesa el datagrama agrega su dirección IP. 
            - long: En octetos de las opciones, incluyendo los campos tipo y longitud
            - datos
            - relleno: para cumplir que todos los bloques sean de 32 bits
    - MTU: Unidad maxima de transferenia

###  Definición de subredes con VLSM

- Direcciones: 
        - Clase A: fijando el primer número:
            - 1.X.X.X: 1.0.0.0 -- 255.0.0.0
                - el número 1 representa la red, lo restante el host.
                - esquema que forma internet
                - 256 direcciones de red
                - 16 777 216 posibles direcciones de host en cada red
                - for countries
                - Máscara de subred 255.0.0.0
            - rango:
                - 0.0.0.0 -> 127.255.255.255
                    - ya que el primer digito binario es 0

        - Clase B: fijando los primeros 2 números para poder identificar la red:
            - 1.1.X.X: 1.1.0.0 -- 255.255.0.0
                - X.X para identificar el host
                - REDES AÚN GRANDES: 
                - 65536  direcciones de red
                - 65536  posibles direcciones de host en cada red
                - for big organizations
            - rango:
                - 128.0.0.0 -> 191.255.255.255
                    - ya que los dos primeros digito binario son 10.
        - Clase C: fijando los primeros 3 números:
            - 1.1.1.X: 1.1.1.0 -- 255.255.255.0
                - el número 1 representa la red, lo restante el host.
                - 16 777 216 direcciones de red
                - 256 posibles direcciones de host en cada red
                - esquema que forma internet
                - la red se identifica con los 3 primeros bytes.
                - para redes pequeñas, como para una empresa
            - rango:
                - 192.0.0.0 -> 223.255.255.255
                    - ya que los dos primeros digito binario son 110.

- Al aplicar AND entre la máscara de subred y la dir ip obtenemos los 3 objetos primarios de la ip. Esto para ver si dos dispositivos están en la musma subred.
    - digamos que A=10.1.1.25, B=10.1.1.15, máscara de subred en IPv4, A AND Mask = 1.1.1.0 = B AND Mask.
    - si no son iguales, entonces tenemos que no estamos en la misma subred, por lo tanto no puede enviarse directamente, debe enviarse al gateway, para que este se encargue de hacer la conexión con la red distinta

- Problemas por el uso de las máscaras predeterminadas de IPv4
    - Teniendo la red 1.0.0.0, mask: 255.0.0.0
        - 1.0.0.0 se ocupa para identificar la red misma,no se ocupa en algún dispositivo
        - 1.255.255.255 dirección para hacer broadcast
        - 16 777 211 dir sin uso
    - Eso es un desperdicio de direcciones sin uso!

- VLSM - Variable Length Subnet Masks - Máscara de subred de tamaño variable
    - 255.255.255.00000000
        - m bits más significativos determinan la cantidad de subredes 2^m
        - los d restantes bits, determinan la cantidad de direcciones en cada subred 2^d
        - Red de clase c: 132.248.10.0
        - Mask alternativa: 255.255.255.128
        - Al aplicarla con redes 132.248.10.1->132.248.10.127 obtenemos 132.248.10.0 
        - Al aplicarla con redes 132.248.10.128->132.248.10.255 obtenemos 132.248.10.128
        - Teniendoa así 2 subredes 39
    - Ejemplo de uso de VLSM para asignar direcciones a varias redes: 
        - Dirección de red original: 132.248.10.0
            - Mascara de subred: 255.255.255.192-26 bits
                -  para la primera subred:
                    - ocuparemos  
                        - 132.248.10.0 para dirección de red.
                        - 132.248.10.1-62 para dirección de host
                        - 132.248.10.63 para dirección de red.
                        - se reconoce como 132.248.10.0/26
        - Quedando así disponibles: 132.248.10.64-132.248.10.255
            - Para la red A necesitamos 25 direcciones de host, que d nos permite cubrir estas direcciones sin desperdiciar? si d=5 ent 2^5=32 en cada subred, m=3, teniendo 8 posibles subredes
            - La máscara de subred /27 nos divide a la red 132.248.10.0 en 8 subredes, c/u con 32 direcciones, usando así: 132.248.10.64-95 132.248.64.0/27
                - donde 132.248.10.64 es su dirección de red
                - 132.248.10.95 es la dirección de broadcast.
    - CIDR: Classless Inter-Domain Routing
        - Esquema de ireccionamiento mediante direcciones IP sin considerar clases predefinidas, en los equpos de red se consideran las máscaras de red para llevar a cabo el ruteo de los paquetes.
            - Esto nos permite separar el trafico de los broadcast, 

## IP Calc

#### Protocolo ARP-Address Resolution Protocol

SUBSYSTEM=="net", ACTION=="add", ATTR{address}=="a0:8c:fd:a6:69:f7", NAME="eth0"
* ARP establecido en un RFC826
    - tipo de hardware, protocolo **ARP**, dirección de quien envia y recibe.
        - cabecera 6:42
    - Util para ver si el host responde
* ICMP paquetes enviados por ping
- petición a la ip que me quiero conectar y la respuesta y con esto se llena la tabla de ARP

# Fisica
ntory@Moonlight:~$ hostname -I
192.168.0.8 192.168.0.9 172.17.0.1 192.168.57.1 

# DEB
hostname -I
10.0.2.15 192.168.57.5
ip neigh

# Cent0s
10.0.2.15 192.168.57.6
arp -u

#### Protocolo DHCP
* Protocolo de configuración dinámica del host
    - ipv4: RFC-1542 y RFC-2131
    - ipv6: RFC-3315 y RFC-3633 y RFC-3736
* Modelo cliente servidor, donde el servidor provee el servicio DHCP, utiliza el puerto 67, el cliente ocupa el 68
* etapas:
    - Request-DHCP-DISCOVER: El cliente pide que se le asigne una dir ip 
        - envia un datagrama UDP de broadcast para que le responda el servidor ya que el cliente no sabe la dir mac ni ip del  server.
            - FRAME es la parte de la encapsulación. 
            - capa 2: dir mac del cliente
                - broadcast
            - capa 3: el cliente no sabe su dir ip
            - capa 7: puertos por donde se realizara la comunicacion
    - OFFER: el server le ofrece una dir ip
        - el servidor recibe el mensaje DISCOVER
        - responde:
            - capa 2: unicast-ya sabe la dir del cliente, la mac origen es la del servidor
                - se entrega x capa 2 ya que conocemos la MAC de ambos equipos
                    - no por la 3 porque no conocemos la dir IP
            - capa 3: ip origen la del server, ip destino broadcast
            - capa 4: puertos
            - La respusta incluye:
                - la IP asignada
                - tiempo de asignación: 
                - Máscara de subred
                - ALGUNOS OTROS PARAMETROS
    - Request-DHCP-REQUEST: el cliente la pide
        - El cleinte recibe  el datagrama  OFFER del servidor y hace la petición oficial para la dir IP  que le fue asignada
            - el cliente pudo haber recibido varias respuestas de OFFER Pero el cliente solo debe decidir x una para poder hacer la petición oficial
                - el server guarda esta peticion para tener la IP como referencia futura
                - los otros servidores reciben esta respuesta y descartan la IP que ofrecieron para poder darsela a otro dis.
    - ACKNOWLEDGE-DHCP-ACK: El server le confirma que pueda ocuparla
        - el server recibe la petición REQUEST y responde al cliente  para finalizar el proceso de configuración
        - responde:
            - capa 2: unicast-ya sabe la dir del cliente, la mac origen es la del servidor
                - se entrega x capa 2 ya que conocemos la MAC de ambos equipos
                    - no por la 3 porque no conocemos la dir IP
            - capa 3: ip origen la del server, ip destino broadcast o puede variar dependiendo del software.
            - capa 4: puertos
        - DHCP-NAK:  respuesta que indica que hubo un error al asignar la IP, para que el cliente reinicie el proceso.

#### Protocolo ICMP

Se usa para datos de usuario final, es un prótocolo de apoyo en la suite de la pila de prótocolos de internet. RFC-792,RFC-1122 para IPv4, es un prótocolo de apoyo, envia mensajes de control y diágnostico, es nátivo de la capa 3

* Únicamente ofrece comunicaciones entre hosts:
    - utiliza datagramas de IP
    - No implementa funcionalidades de capa 7

* Es la base para herramientas como ping y traceroute
    - el tipo es 0, codigo 0 es enviado por el ping, y la respuesta es de tipo 0 y codigo 0 .

* Traceroute convencional(ICMP):
    - Todos los equipos están conectados de alguna manera.
    - Aumentan el TTL:time to live, en 1 por cada dispositivo que no es el destino, este regresa un UNREACHABLE
        - los **** son los que tienen bloqueado el ICMP, por lo que se decide solo seguir enviando.
        - cuando el TTL llega a 0 
        - el destino dice, si soy, Y REGRESA QUE EL DATAGRAMA SI LLEGO. 
    - dentro de los mensajes vemos que el destino aún no es alcanzable, que no hay ruta para el host, que el puierto no es alcanzable
        - para así aumentar nuestro TTL.
    - Podemos mapear la manera de llegar a nuestro destino
        - correlacionamos LA INFO de las direcciones IP con bases de datos de geolocalización
    - Basado en mensajes ICMP, para po

#### Algoritmos de ruteo - Protocolo de Vector de distancia

* Descentralizados
    - Algoritmos iteraticos, distribuido
    - Requerimos info de los vecinos(enlaces directos)
    - Algoritmos de vector de distancia **Distance Vector o DV**
* Centralizados-globales
    - Requiere información del estado de toda la red. COncexiones entre todos los nodos y costos
    - Se puede calcular en un equipo central y replicar en los demás
    - Algoritmos de estado del enlace(link-state o LS)
* Ruteo estático(cambios en los enlaces my lentos o inexistentes)
* Algoritmos sensibles a la carga(adaptativos, cambios dependiendo de la carga, de la saturación de los enlaces).

* **Estas pudiendo sacar tu carrera con 9,6.** No es fácil y lo estás haciendo muy bien, se como mi papá, las cosas se te hacen fáciles, porque llueve o truene tu estás trabajando, perseverante y constante, como todo. **TU PUEDES!!!**

* Vector de distancia(Bellman-Ford)
    - cada ruteador mantiene una tabla(vector)
        - inclute todos los destinos conocidos/posibles
        - mejor distancia a cada destino
        - enlace a utilizar para llegar a cada destino
    - se intercambia la información(las mejores rutas) con los vecinos para actualizar las tablas
    - Vector de distancia =! tabla de ruteo
        - Calculo de la ruta minima de E a A:
            - se calculan todas las rutas posibles: E-A A través de Ri = distancia(E,Ri)+costo(Ri,A) y se elige la menor.
            - Ejemplo de vector de distancia: min 27
    - Todo esto se calcula en el *Routing processor*.

####  Protocolo de Estado del Enlace

* Tareas del ruteador:
    - Conocer a sus vecinos(descubrir vecinos).
        - Identificar los routers vivos, identificadose y pedir que se identifiquen
            - Cada que llega un nuevo router se inicia el algoritmo de ruteo, e indica a los demás routers que hay un nuevo router.
            - Hasta la tercera identificación damos por perdidio un enlace, y notificar a los dmeás que este ya no existe.
    - Establecer los costos a sus vecinos(métrica).
        - Utilizando una métrica, por ejemplo, el tiempo
            - con paquetes de tipo ECHO, usando un temporizador
                - como los tiempos pueden variar entonces tomaremos en cuenta el promedio
                - En qué momento iniciar el temporizador?  
                    - Se toma en cuenta la carga?
            - una vez determinados los tiempos podemos construir los paquetes de estado de enlace usando la métrica establecida.
                - Estructura: 16:01
                    - nombre: 
                    - secuencia: 
                    - Edad: parámetro que no permite que el paqeute viaje de forma permanente y evitar paquetes que reflejen estados antiguos de los enlaces, más porque buscamos evitar la saturación de la red.
                    - info:
                        - vecino_i, costo_i
                - Este es distribuido a todos los paquetes destinos.
                    - inundación: se le envia a todos los destinos posibles menos al vecino que le hizo llegar el paquete, restandole un punto a la edad 
                    - 
                    25:40 

    - Contruir un paquete con la información obtenida.
    - Enviar el paquete con la información obtenida.
    - Enviar el paquete  a todos los ruteadores.
    - Obtener los paquetes correspondientes de todos los ruteadores.
    - Calcular la ruta más corta a cada destino usando Dijkstra.

* Indica de qué forma se maneja la dirección MAC de origen de una trama, cuando se lleva a cabo la conexión con un equipo remoto de una red distinta a la del origen. Como ejemplo puedes considerar la imagen: 

La respuesta correcta es: La dirección MAC de origen se actualiza cada vez que la trama es recibida por un equipo de red y se debe enviar al siguiente enlace o al destino (en los ruteadores)

####
####
####
####

### prac 3

* commands:
    - sudo ifconfig enp1s0 down
    - nmcli connection down
    - ntory@Moonlight:~$ nmcli device show enp1s0 
    - nmcli connection add type ethernet con-name enp1s0
    - nmcli connection add type ethernet con-name enp1s0
    - dhclient -r "enp1s0"

* dirreción local: 192.168.0.8/24

* 3.2

* for nmcli: https://access.redhat.com/documentation/es-es/red_hat_enterprise_linux/8/html/configuring_and_managing_networking/ref-frequent-nmcli-commands_getting-started-with-nmcli
```bash
ntory@Moonlight:~$ ip route show
default via 192.168.0.1 dev enp1s0 proto dhcp metric 100 
default via 192.168.0.1 dev wlp5s0 proto dhcp metric 600 
169.254.0.0/16 dev enp1s0 scope link metric 1000 
172.17.0.0/16 dev docker0 proto kernel scope link src 172.17.0.1 linkdown 
192.168.0.0/24 dev enp1s0 proto kernel scope link src 192.168.0.8 metric 100 
192.168.0.0/24 dev wlp5s0 proto kernel scope link src 192.168.0.9 metric 600 

ntory@Moonlight:~$ nmcli connection show enp1s0 | grep -i DNS
connection.mdns:                        -1 (default)
ipv4.dns:                               --
ipv4.dns-search:                        --
ipv4.dns-options:                       --
ipv4.dns-priority:                      0
ipv4.ignore-auto-dns:                   no
ipv6.dns:                               --
ipv6.dns-search:                        --
ipv6.dns-options:                       --
ipv6.dns-priority:                      0
ipv6.ignore-auto-dns:                   no
IP4.DNS[1]:                             10.10.16.21
IP4.DNS[2]:                             187.185.14.2
ntory@Moonlight:~$ cat /etc/resolv.conf 
# This file is managed by man:systemd-resolved(8). Do not edit.
#
# This is a dynamic resolv.conf file for connecting local clients to the
# internal DNS stub resolver of systemd-resolved. This file lists all
# configured search domains.
#
# Run "resolvectl status" to see details about the uplink DNS servers
# currently in use.
#
# Third party programs must not access this file directly, but only through the
# symlink at /etc/resolv.conf. To manage man:resolv.conf(5) in a different way,
# replace this symlink by a static file or a different symlink.
#
# See man:systemd-resolved.service(8) for details about the supported modes of
# operation for /etc/resolv.conf.

nameserver 127.0.0.53 # DNS ivp4
options edns0 trust-ad

```

penhause
fam viva
video
2 ferrari
mmm
a los 28
TENGO 4 años

# Lab   
/* Cambiar a la rama de la actividad anterior /
$ git checkout tarea-3

/* Para asegurarse que tenemos los últimos cambios que se subieron a GitLab /
$ git pull

/* Crear la nueva rama para la `practica-1` /
$ git checkout -b practica-1

/* Crear carpeta para la entrega de la practica 1 /
/* (que será entregada de manera individual) /
$ mkdir -vp docs/practicas/practica-1/ApellidoApellidoNombreNombre

# prac2

enable 
configure terminal
erase startup-configuration
enable password cisco
enable secret sanfran
copy running-config startup-config
ex-> %SYS-5-CONFIG_I: Configured from console by console


```bash
PLANTILLA
```

# To desinstale something
 sudo apt list --installed
 sudo apt-get purge gnome-boxes
 sudo apt-get autoremove


# Practica 6
WAN-vboxnet0

em0 - Red WAN   NAT-Network ¹   NatNetwork  DHCP    10.0.2.Y    Habilitado
em1 - Red LAN   Host-Only ²     vboxnet0    Estática    192.168.42.254  Deshabilitado
em2 - Red DMZ   Internal Network ³  intnet  Estática    172.16.1.254    Deshabilitado



@1muerte1@

https://192.168.42.254:443/
admin
Redes-2023-2
# AZURE
ejemplar_zoe@comunidad.unam.mx
Uc2o#Fk7

- -> 



## SI SABES QUE LLEGARAS A LA CIMA, CADA PASO VOLTEA. porque cuando llegues el ego te dira, que sigue?

La prisa y hambre nacen de la duda de hacer las cosas.


mewntalidHumuilde que tropieza- se deja asesorar, pide ayuda no dejes que la soberbia te segue o te mate. NO BUSCA CULPABLES, NI EN EL.