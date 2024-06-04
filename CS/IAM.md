# IA

# Importance of IAM

Zero trust: dar por hecho que nuestro medio, la red es hostil, 
Establish a trusting relationship between these components

## Definiciones

* Identification: ID
* Authentication: proof that u r who whay u r
	- u KNOW: Password
	- U HAVE: Token-based schemes 
	- U R: Biometrics

* JIT ACCESS: Just in time Access
	- limita el acceso  a un recurso especifico, por lo que reduce el tiempo que un hacker tiene para obtener acceso a cuentas privilegiadas antes de moverse lateralmente por el sistema
	- JIT Access también puede garantizar que las actividades privilegiadas se lleven a cabo mediante las políticas de gestión de acceso a identidades (IAM), gestión de servicios de TI (ITSM) y gestión de acceso privilegiado (PAM) de una organización, junto con sus derechos y flujos de trabajo.

- Authentication Assurance Levels:
	- AAL1: Requiere autenticación de factor único o multifactor utilizando una amplia gama de tecnologías de autenticación disponibles.

	- AAL2: Se requiere prueba de posesión y control de dos factores de autenticación diferentes mediante protocolo(s) de autenticación seguro(s). Se necesitan técnicas criptográficas aprobadas en AAL2 y superiores.
	
	- AAL3: Requiere un hardware-based  authenticator and an authenticator

- SSO Protocols:
	- SAML 2.0: basado en xml que contiene 
	- OAuth 2.0: 

* Identify Governance: creación,habilitación y aseguración de identidades digitales para todo: users, apps, data.
* IAM: Identity Acess Management:Administración de acceso de los usuarios a los insumos.

* Authentication Attacks:
	- MFA Fatigue Attack: muchas notificaciones push para que en algún momento de aceptar la autenticación
	- Cookie Hijacking: 
		- Cookies: archivos que tiene información sobre las preferencias de tus usuarios, idioma, cúantas veces entras a ese citio.
	data breach

* Controling access:
	- least privilage
	-  need to know
	- after minimal accesses
		- separation of duties
		- rotatio of duties
	- tecnicas de control de acceso:
		- DAC: Discretionary Acess Control
			- cada usuario puede manejar su acceso con su permiso transferible
		- MAC: Mandatory AC
			- serie de reglas 
		- RBAC: Role Based Access Control
			- los permisos dependen de acuerdo al rol
		- LBAC

* Managing and monitoring access
	- Account administration: crear usuarios con sus respectivos permisos
	- monitoring: ver que se autentiquen de manera adecuada
	- Maintenance: 
	- Revocation: retirar permisos cada que se vaya un usuario, no reutilizar
* Privilegen Access Managment = PAM erramienta para gestionar acceso privilegiado al sistema
	- CIBERARK
	- entraID
	- HASHICORP Vault

	evitar movimientos laterales
		- no permitir que los usuarios se logeen con privilegio de admin a las apps
		- reducir al max los perfiles como root 
		- restringir los permisos para crear usuarios aunque sean gerentes
		- reestructurar tu directorio 

	- otra solo tiene acceso a las app y servers, otro a manejar las identidades, otro a solo 

	NO PUEDES METER TODOS LOS HUEVOS EN LA MISMA CANASTA
### Autenticación que va cambiando

Ejemplo de Autenticación multifactor utilizando RSA SecurID

1. usuario proporciona credenciales y se conecta a una app
2. la app solicita una autenticación adicional a RSA(MFA)
3. RSA envía la petición de MFA al ḿovil del usuario
4. el usuario responde el challenge de autentifiación
5. RSA evalua la respuesta y notifica a la app
6. la app permite el acceso o declina.


* KFD Key Derivation Functions: **NO SON REVERSIBLES!**
	- output ilegible, resultado único, aunque haya password iguales se les agrega una parte 
	- implementa el factor de dificultad que ayuda a mitigar ataques
		- numero de iteraciones de hashing
	- sha256
	- MD5: es vulnerable ante coliciones, dos valores pueden tener el mismo hash
		- NO SE OCUPA
		- 16 caracteres
	- SHA1: Lo desarrollo la SHA, tiene muchas variantes
	- LM: antes existia esta herramienta, 
		- evolucion NTLM

- qué determina la fuerza del hash de la contraseña
	- Quality of key: derivation fuction
		- confusion:
		- diffusion:
	- Password & DErived Key lenght, no queremos outputs chicas 
	- Character Set Support: conjuntos débiles de caracteres, buscamos mayor número de caracteres
		- Los hackers tienen recursos y tiempo
	- Dificulty Factor

#### Lab 1: Hashing Basics

1. colab: https://colab.research.google.com/drive/1pbKDGb_-nNoU7BvZfQZCIPZnNYVKg8BB#scrollTo=e-J46BDNh35Y
2. use https://cyberchef.org/: para sacar hashes de cadenas
	- la navaja suiza de la ciberseguridad:
	- aunque es la misma cadena, no es el mismo hash de colab y el de la page
		- no es lo mismo obtener un hash de un archivo txt no es igual ya que tiene headers

	- 0a es un salto de línea en hexadecimal

3. VirusTotal: https://www.virustotal.com/gui/home/upload
	- SOC y en todo lo lado defensivo de investigación, muestras, archivos, url, conformiendo una base de datos de malware.

* POSIBle hackeo, databreach, data link

* Password Dumps: diversos usuarios de manera no autorizada pueden obtener información sensible de esos sistemas y tenerla en sus equipos, archivos comprometidos: tanto con el pass en txt o en hash
	- las credenciales pueden ser verdaderas, pueden ser reales.

* pwned: owned= alguien fue controlado o comprometido? hackeado
	- https://haveibeenpwned.com/


* Password Cracking
	- tener lista de hashes de contraseñas
	- determinar la función ocupada
	- crear una lista d eposible contraseña
	- a cada contraseña que creamos le hacemos el proceso de hashing

* Metodos genreale spara hacer un cracking
	1. Dictionary attack
	2. Hybrid Attack: influenciado por el primero
	3. Brute fORCE Attack
	4. Pre-Computation Attack

* Hashcat: va comparando cual autentica y cual no
	* Combinator aatack
	* Brute-force Attack
	* Brute-force Attack & Mask Attack (estructura de la pss)
	* Hybrid Attack

* Mimikatz: 
	- Sekuriza
	- Kerberos
	- Lsadump

* defensa: Qué debemos considerar: ya que se puede obtener la credencial
	* Al menos se tenga un min de caracteres
	* elegir una que no este en una lista de contraseñas debiles
		* usar la herramienta de 
	* bloquear los intentos de ingresar contraseñas, bloquearlo tras tantos intentos
	* sugerir que cambien la contraseña cada x tiempo
	* evita hacer:
		- permitir a los usuarios un password hint
		- truncate password
		- forzar a usar una regla de composición, tipo, todos ocupen las iniciales o la misma estructura
		- forzar el cambio constante de una contraseña
		- TENER AUTORECONOCIENTO DE CODIGOS DE 2FA puede generar fallos si el equipo esta comprometido
	* usar la herramienta que verifica si se ha 

* password hasshes and salt puede 
* vs pre-computation attacks
	- aunque 2 usuarios tengan la misma pass 
		- salt unica para cada usuario aunque 2
	- la pimienta es la misma pero para toda la compañia pero es secreta

## Notas

ApowerMirror: permite compartir la pantalla del cel en una compu


