# CyberGamesLatam_Fundamentos de Ciberseguridad UNAM 01

## 1. Amenazas, vulnerabilidades y ataques

### 1.1 Amenazas comunes

### 1.2 Engaño

* Ingenieria social: Es un ataque que intenta manipular a las personas para que realicen acciones o divulguen información confidencial, aprovecha la naturaleza humana, aprovechando la disposición de las personas a ayudar o aprovechando sus debilidades, como la avaricia o la vanidad.
	- Ejemplos y Tipos de ataques
		- Pretexto(pretexting): Este tipo de ataque ocurre cuando un individuo miente para obtener acceso a datos con privilegios. Por ejemplo, fingir que necesita los datos personales o financieros de una persona para confirmar su identidad.
			- Es cuando un atacante establece confianza con su víctima suplantando a personas que tienen autoridad de derecho a saber y haciendo preguntas que parecen ser necesarias para confirmar la identidad de la víctima, pero a través de las cuales recopilan datos personales importantes. 
		- Una cosa por otra (quid pro quo): Los ataques quid pro quo **implican una solicitud de información personal a cambio de algo, como un regalo**. Por ejemplo, un correo electrónico malicioso podría pedirle que proporcione sus datos personales confidenciales a cambio de unas vacaciones gratuitas.
		- Fraude de identidad: Este es el uso de la identidad robada de una persona para obtener bienes o servicios mediante el engaño. Por ejemplo, alguien adquirió sus datos e intenta emitir una tarjeta de crédito a su nombre.
	- Tácticas:
		- Aparentar ser de un alto mando, una autoridad
		- Los ciberdelincuentes a menudo **intimidan** a una víctima para que tome medidas que comprometan la seguridad. 
			- La secretaria de un ejecutivo recibe una llamada que indica que su jefe está a punto de dar una presentación importante, pero sus archivos están dañados. El delincuente por teléfono afirma que es culpa de la secretaria y presiona a la secretaria para que envíe los archivos inmediatamente o se arriesgue a ser despedida.
		- Consenso: lo que pasa en el puesto de comida que crees que es bueno porque hay mucha gente comiendo ahí, seguro es bueno, por esto están ahí. Los ataques de consenso explotan este fenómeno para manipular a las personas. Los ciberdelincuentes utilizan la tendencia natural de las personas a confiar en el comportamiento de los demás para inducirlas a tomar decisiones perjudiciales, como realizar compras fraudulentas, proporcionar información personal, o caer en estafas.
			- Para protegerse contra los ataques de consenso, es crucial:
				- Ser escéptico: No confiar ciegamente en las opiniones o acciones de otros en línea, especialmente en contextos que implican dinero o información personal.
				- Verificar la Fuente: Investigar la legitimidad de la oferta y los comentarios. Buscar reseñas en fuentes independientes y confiables.
				- Entender las Técnicas de Estafa: Conocer cómo operan los ciberdelincuentes puede ayudar a reconocer señales de advertencia.
	 	- Escacez: los atacantes saben que las personas tienden a actuar cuando piensan que hay una cantidad limitada de algo disponible.
	 		- alguien recibe un correo electrónico sobre un artículo de lujo que se vende por muy poco dinero, pero afirma que solo hay unos pocos disponibles a este precio, en un esfuerzo por estimular a la víctima desprevenida a tomar medidas.
	 	- Urgencia: las personas también tienden a actuar cuando creen que hay un tiempo limitado para hacerlo.
			- Por ejemplo, los ciberdelincuentes promueven una oferta de envío por tiempo limitado para intentar incitar a las víctimas a actuar rápidamente.
		- Familiaridad: Es más probable que las personas hagan lo que otra persona les dice si les gusta esa persona.
			- los atacantes a menudo intentan establecer una relación con su víctima para establecer una relación. En otros casos, pueden clonar el perfil de medios sociales de un amigo para que piense que les está hablando.
		- Confianza: Crear confianza en una relación con una víctima puede requerir más tiempo para establecerse.
			- un ciberdelincuente disfrazado de experto en seguridad llama a la víctima desprevenida para ofrecerle asesoramiento. Mientras ayuda a la víctima, el delincuente detecta un “error grave” que requiere atención inmediata. La solución ofrece al ciberdelincuente la oportunidad de violar la seguridad de la víctima.
		
		- El cebo consiste en utilizar una promesa falsa para ganar el interés de una víctima y atraerla a una trampa que roba su información personal o infecta sus sistemas con malware. 
		-  ATAQUES QUE INVOLUCRAN ENGAÑO: 
			- Shoulder Surfing y Dumpster Diving.
			- **Piggybacking o tailgating** ocurren cuando un delincuente sigue a una persona autorizada para ingresar a un lugar seguro o un área restringida. 
				- Una forma de evitar esto es usar dos conjuntos de puertas. Esto a veces se denomina mantrap y significa que las personas ingresan por una puerta exterior, que debe cerrarse antes de que puedan acceder a través de una puerta interior.
			- Las **facturas falsas** se envían con el objetivo de recibir dinero de una víctima solicitándoles que pongan sus credenciales en una pantalla de inicio de sesión falsa. La factura falsa también puede incluir lenguaje urgente o amenazante.
			- (waterhole-abrevadero attack): Atacar un sitio(con un malware) que los empleados ocupen regularmente y que confién en el
			- Typosquatting - errores tipográficos: El typosquatting es una técnica de engaño que explota los errores tipográficos comunes al ingresar direcciones URL. Los atacantes registran dominios similares a los legítimos para captar información sensible de los usuarios.
				- fomenta el uso de marcadores, verificar las url, 
			- Antecedente: Hacer creer que el correo fue enviado de manera interna, quitando la etiqueta "externa" de los correos
			- Campaña de influencia: noticias falsas, campañas de desinformacion y publicaciones en medios sociales coordinados 
    	-  spear phishing: Pishing orientado y personalizado a una persona en particular, donde nos hacemos pasar por un conocido o alguna entidad confiable. 
    	- Scareware y ransomware: el ransomware es cuando se cifra la info y se pide un rescate, el scareware convence a instalar un software-antivirus falso utilizando su mieod
    - CONSEJOS PARA EVITAR ATAQUES DE INGENIERÍA SOCIAL.
    	1. Usar el sentido común para no compartir información confidencial vía correo, celular, o en algún sitio web, tampoco darle click a cualquier link, ya sea para descargar algo o ver un adjunto de una correo no conocido.
		2. Estar siempre alerta y consciente de snuestro alrededor, no confiar en cualquier formulario que nos pide nuestra info, mucho menos en una ventana emergente.
		3. Mantener todo actualizado, usar un filtro de spam
		4. **HACER CONSCIENCIA** y entrenar a las personas sobre la ingenieria social, hacerlos responsables de lo que les puede pasar si fallan.
		5. CONSEJOS, DEFENSA CONTRA EL ENGAÑO:
			- Nunca proporcione información confidencial o credenciales por correo electrónico, sesiones de chat, en persona o por teléfono a desconocidos.
    		- Resista el impulso de hacer clic en correos electrónicos y enlaces de sitio web atractivos.
    		- Tenga cuidado con las descargas no iniciadas o automáticas.
    		- Establecer y educar a los empleados sobre las políticas de seguridad clave.
    		- Aliente a los empleados a asumir la responsabilidad de los problemas de seguridad.
    		- No se sienta presionado por personas desconocidas.
    		- los expertos recomiendan proteger la documentación o el teclado mediante el cuerpo o la mano. Incluso hay protectores de pantalla que dificultan mucho la navegación por el hombro.
    	- TODO: crear un póster que haga que otros conozcan las diferentes técnicas de ingeniería social utilizadas para obtener acceso no autorizado a una organización o a los datos de la organización. 
    		- Elija entre: hostigamiento, navegación de hombro, pretexto, suplantación de identidad (phishing), Scareware, ransomware, infiltración o buceo en el contenedor.
			- El póster debe mostrar las técnicas utilizadas y cómo los usuarios pueden evitar uno de estos ataques de ingeniería social. También incluya instrucciones sobre dónde debe colocarse el póster dentro de la organización.
		- **Depende de los profesionales de ciberseguridad crear conciencia y educar a otras personas en una organización sobre estas tácticas para evitar que sean víctimas de tales ataques**.

### 1.3 Ataques Cibernéticos

* Malware: Software malicioso: El malware es cualquier código que se puede utilizar para robar datos, eludir los controles de acceso o causar daño o comprometer un sistema.
	- Tipos: 
		- Virus: programa informático que, cuando se ejecuta, se replica y se adjunta a otros archivos ejecutables, como un documento, insertando su propio código. 
			- La mayoría de los virus requieren la interacción del usuario final para iniciar la activación y se pueden escribir para que actúen en una fecha u hora específica, El simple acto de abrir un archivo puede activar un virus. Se autoreplica
		- Gusanos: código malicioso que puede propagarse automáticamente por la red, aprovechando las vulnerabilidades, no es necesaria la actividad-aceptación humana
		- Troyano: Enmascara su fin real, aparenta ser algo bueno, como una imagen, un audio, video, se aprovecha de los permisos que tiene pero no se autoreplica.
		- Bomba lógica: Es un programa malicioso que espera un activador, y se encarga de sobresaturar o echar a perder un disposito de hardware. Estan ahí esperando un activador.
		- Ransomware: Secuestro y cifrado de dinero a cambio de un pago.
		- Dos- Denegation of service: Denegación de servicios: 
			- tipos 
				- cantidad abrumadora  de tráfico
				- Paquete malicioso formateado.
			- DDoS: Lo mismo pero desde varias fuentes.
	- Sistema de nombre de dominios:
		- DNS: traductor de dominio a IP
			- Una organización necesita monitorear su reputación de dominio, incluida su dirección IP, para ayudar a proteger contra dominios externos maliciosos. 
			- Falsificación  de DNS o intoxicación por caché, es cuando metemos datos falsos al caché del DNS, atacando la debilidad en el software DNS, así podría redirigir el tráfico a un dominio del hacker
			- Secuestro de dominio: cambios no autorizados en el DNS,	
				- La manera más común de secuestrar un nombre de dominio es cambiar la dirección de correo electrónico de contacto del administrador a través de ingeniería social o pirateando la cuenta de correo electrónico del administrador. La dirección de correo electrónico del administrador se puede encontrar fácilmente a través del registro de WHOIS del dominio, que es de registro público.
		- URL: Uniform Resourse Localizator
- Ataques de capa 2: La capa 2 se refiere a la capa de enlace de datos en el modelo de comunicación de datos de interconexión de sistemas abiertos (OSI).
	- nos ayuda a mover datos a través  de una red física, a cada IP se asigna una MAC siguiendo el proceso-protocolo de resolución de direcciones(ARP-Adreess Resolution Protocol)
		-  la dirección MAC identifica el receptor previsto de una dirección IP enviada a través de la red, y ARP resuelve las direcciones IP en direcciones MAC para transmitir datos. 
	- tipos:
		- spoofing: suplantación de identidad: se aprovecha de la confianza entre dos sistemas
	- Man in the Middle: MITM y Main in the Mobile
	- ataque de diá 0
	- registro de teclado
		- contrataca: antispyware

- siempre abre los ojos y pon atención:
    - Dominio de correo electrónico del remitente
    - La URL del enlace.
    - Lenguaje, ortografía y gramática
    - Los gráficos

- defensa: Una organización puede realizar varios pasos para defenderse de diversos ataques.
	- Configure firewalls para descartar cualquier paquete fuera de la red que tenga direcciones que indican que se originaron dentro de la red. 
    - Asegúrese de que los parches y las actualizaciones estén actualizados.
    - Distribuya la carga de trabajo entre los sistemas de servidor.
    - Los dispositivos de red utilizan paquetes de protocolo de mensajes de control de Internet (ICMP) para enviar mensajes de error y control, como si un dispositivo puede comunicarse con otro en la red. Para evitar ataques DoS y DDoS, las organizaciones pueden bloquear paquetes ICMP externos con sus firewalls

### 1.4 Ataques a dispositivos  inalámbricos y móviles

* Grayware: apps molestas e invasivas que incluso a veces nosotros aceptamos 
- SMishing: suplantación de identidad mensajera
* Punto de acceso no autorizado: hacer pasar por seguro un punto de acceso, haciendolo creer que es mejor opción.s
* Bloqueo de radiofrecuencia: Las señales inalámbricas son susceptibles a la interferencia electromagnética (EMI), a la interferencia de radiofrecuencia (RFI) e incluso pueden ser vulnerables a los rayos o ruidos de luces fluorescentes.
	- Los atacantes pueden aprovechar este hecho bloqueando deliberadamente la transmisión de una estación de radio o satélite para evitar que una señal inalámbrica llegue a la estación receptora.
* Bluejacking: mensajes no autorizados a un disp
* Bluesnarfin: copiar y robar data usando BT

* Ataques contra protocolos de WIFI
	- El primero fue WEP, de ahí WPA, after WPA2
		- En el WPA2 no se puede obtener la clave de cifrado observando el tráfico de red, pero aún pueden usar un sniffer de paquetes para analizar los paquetes que van entre un punto de acceso y un usuario legítimo.
* defensa:
	- Aprovecha lo básico: autentificación, encriptación cambiando la conf predeterminada
	- restrinjir en el firewall la ubicación de puntos de acceso
	- NetStumbler para descubrir puntos de accesso dudosos
	- Politica para el acceso a usuarios invitados
	- Use VPN	
### 1.5 Ataques a APLICACIONES

* Secuencia de comandos entre sitios: El scripts entre sitios (XSS) es una vulnerabilidad que se encuentra en las aplicaciones Web.
    - Los ciberdelincuentes aprovechan la vulnerabilidad de XSS mediante la inyección de scripts que contienen código malicioso en una página web.
    - La víctima accede a la página web y los scripts maliciosos pasan sin saberlo a su navegador. 
    - El script malicioso puede acceder a las cookies, los tokens de sesión u otra información confidencial sobre el usuario, que se envía al ciberdelincuente.
    - Con esta información, el ciberdelincuente puede hacerse pasar por el usuario.

* Inyección de código:
	- XML: Funciona al interferir con el procesamiento de una aplicación de datos XML o consulta ingresada por un usuario.
	- SQL: 
	- DLL: Un archivo de biblioteca de enlaces dinámicos (DLL) es una biblioteca que contiene un conjunto de código y datos para llevar a cabo una actividad particular en Windows. Las aplicaciones utilizan este tipo de archivo para agregar funcionalidad que no está integrada, cuando necesitan llevar a cabo esta actividad. La inyección de archivos dll permite que un delincuente cibernético engañe a una aplicación para que llame a un archivo dll malicioso, que se ejecuta como parte del proceso de destino.
	- LDAP: Un ataque de inyección de LDAP aprovecha las vulnerabilidades de validación de entrada mediante la inyección y la ejecución de consultas en servidores LDAP(Liger Directory Access Protocol), lo que brinda a los ciberdelincuentes la oportunidad de extraer información confidencial del directorio de LDAP de una organización.  

* Desbordamiento de buffer: Se produce cuando los datos van más allá de los límites de un búfer. Al cambiar los datos más allá de los límites de un búfer, la aplicación puede acceder a la memoria asignada a otros procesos. Esto puede llevar a un bloqueo del sistema, comprometer los datos u ocasionar el escalamiento de los privilegios.
	- Estas fallas de memoria también pueden brindar a los atacantes control total sobre el dispositivo de un objetivo.  un atacante puede cambiar las instrucciones de una aplicación vulnerable mientras el programa se carga en la memoria y, como resultado, puede instalar malware y acceder a la red interna desde el dispositivo infectado.
	- CASI LA MITAD DE TODAS LAS VULNERABILIDADES de los programas informáticos se derivan	de algún tipo de desvordamiento del búfer.

* Ejecuciones remotas de código: vulnerabilidades que permiten que los delincuentes cibernéticos ejecuten códigos maliciosos y tomen el control de un sistema con los privilegios del usuario que ejecuta la aplicación.
	- El escalamiento de privilegios aprovecha un error, un defecto de diseño o una configuración incorrecta en un sistema operativo o una aplicación de software para obtener acceso a recursos que normalmente están restringido.
	- METASPLOIT FRAMEWORK
		- METERPRETER
- Cross-Site Request Forgery(falsificación) CSRF 
- Condición de Carrera
- Ataque de manejo de entrada incorrecto, SIEMPRE HAY QUE VERIFICAR QUE PUEDE METER EL USUARIO
- Gestión de errores
- Abuso de un terminal de una API
- Ataque transversal al directorio.
### 1.3
## 2



# El impacto de los lenguajes de programación, a la curry, a la chourch


- imperativo: como definiras los pasos? como se hace? centrarnos en el paso a paso
- declarativo: nos centramos en el que es, que obtendras? que es un capuchino, nos CENTRAMOS EN LA DEFINICIOÓN
- funcional: usamos procedimientos, 
	- calculo lambda: alonzo chucrch, haskell curry
	- 

	de manera más clara, precis podemos implementar los lenguajes con tipo, menos abstracción pero más informacion implicita, terminos y semantica(comportamiento de los términos)

 a la curry
tesis de church, cualquier funcion cutyos valores son calculados efectivamente es lambda-computable
todo algoritmo es equivalente a una MT


how do j

explicate bien
que te gusta para luego llevarlo con pasion
amable
se
qué es lo que te gusta?
juega y ve el error
participa, ayudas al codigo abierto?

cada capacitación es por algo, quiere promover su herramienta, alguien grande esta detras con ganas de que aprendas, algo busca.