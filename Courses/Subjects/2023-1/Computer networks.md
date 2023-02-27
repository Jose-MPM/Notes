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
*  Capa Física-Dispositivos de Red.
    - 2 tipos de equipos:   
        - DTE: Data Terminal Equipment: CLIENTES
        - DCE: Data Communications Equipment: equipo activo.
        - 18:34  
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

