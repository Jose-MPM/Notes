# BackEnd Web Development
## Profesor: 


* Topics per Week:
	1.
	2.
	3.
	4. Arquitectura de una App
		* Capa de Controlador:
			- Encargado de dar respuestas a las request por parte de los servicios a traves de un URL.
			- Responsable de las DB
		* Capa de Servicio:
			- Características en Spring
				+ Son denotados con @Service, especialización de la anotación @Component
					- Las clases que emplean esta anotación son auto Detectadas a través del escaneo del classpath
				+ @Autowired: referencia a los *repositorios* necesarios
				+ @Transational: para métodos que acceden a bases de datos.
					- Diferenciando si realizan escritura, lectura, casos de rollback
		* Repositorios: Clases encargadas de gestionar el acceso a los datos, usualmente se organizan en el mismo nivel que las *entidades*.
			- Características en Spring
				+ Pueden ser interfaces que extienden el repo base CrudRepository.
					- Create, Reade, Update, Delete.
				+ Contienen la def de los métodos necesarios para acceder a la DB.
				+ Tienen un nombrado éstandar que permite su implementación automática al emplear alguna herramienta de mapeo(Hibernate, SpringData JPA).
					- @Query Soportan la def de consultas personalizadas.
		* Entity: Declaramos objetos en spring pero nos refeŕimos a nuestras entidades en nuestra BD.
			- Características en Spring:
				+ @Entity a nivel de clase.
					+ Sirve para indicar que clases serán administradas para JPA, en especifico por el EntityManager.

* Pruebas Unitarias: Las pruebas unitarias o unit test se encargan de veriﬁcar el comportamiento de unidades de código y comprobar que funcione correctamente. Son pequeños tests que validan el comportamiento de un objeto y la lógica.
	- Tienen que poder: 
		+ Ejecutar sin necesidad de intervención manual.
		+ Repetirse tantas veces como uno quiera. 
		+ Cubrir casi la totalidad del código de nuestra aplicación. Una prueba unitaria será tan buena como su cobertura de código.
		+ Ejecutarse independientemente del estado del entorno. Las pruebas tienen que pasar en cualquier ordenador del equipo de desarrollo.
		+ No puede afectar la ejecución de otra. 
	- Ventajas:
		+ Mejora en la calidad y reducción de tiempos
		+ Fomentan el cambio y refactorización.
		+ Se reducen los problemas y tiempo dedicado a la integración: en las pruebas se simulan las dependencias lo que permite probar el código sin disponer del resto de los módulos. 
		- Ayuda a entender mejor el código.
		- Se puede probar o depurar un módulo sin necesidad de disponer del sistema completo o en su totalidad.
	- JUnit
* MongoDB: 
	- transacciones ACID(atomicas, consistentes, aisladas y duraderas):
		- garantiza el mayor nivel de integridad ya que sin importar que son consultas concurrentes,  permite que cada consulta asegure tener la misma salida sin importar el orden de llegada.
	- Problemas serios respecto a la seguridad posiblemente surgidos por la gran flexibilidad
	- 
* SQL:
	- Eslabilidad vertical: solo se permite una mejora de performance comprando un mejor server para tener más poder de cómputo de una unidad.

* Swagger: Serie de reglas, especificaciones y herramientas que nos ayudan a documentar nuestras APIs
	- 
---
* Preguntas: 
	- ¿En qué paquete de un proyecto de spring se deben generar las clases necesarias para realizar pruebas unitarias?
		+ Depende de la clase a la cual le quieras implementar las pruebas, es analogo a la estructura que tiene la clase sobre *src/main/java*, soloq que donde trabajemos con nuestros test será sobre la carpeta *src/test/java*, que por lo regular viene por default.

	- Menciona 5 diferencias de MongoDB cuando se compara con un DBMS basado en SQL
		
		1. No siguen el paradigma llave:valor, ya que almacena los datos en documentos y por supuesto que no sigue el modelo relacional(relaciones).
		2. Estas no almacenan los datos en tablas que siguen una estructura basada en las relaciones. La forma en la que almacena la información es a traves de documentos(BSON-estructura de datos flexible similar a JSON)
		3. Permite que el esquema sea dinamico. No necesitamos diseñar un esquema sobre el cúal podamos iniciar nuestro proyecto, el esquema puede adaptarse a las necesidades.
		4. No trabaja con las transacciones ACID sino que principalmente se ocupan el esquema BASE. 
		5. Esta enfocada en la escalabilidad pero no priorizando la conscistencia
		6. Basadas en sistemas distribuidos que nos permite escalar horizontalmente


	- ¿Cómo se le conocen a las transacciones que usualmente se emplean cuando hablemos de DBMS NoSQL? Menciona al menos 2 ventajas y 2 desventajas de este tipo de transacciones
		- Se conocen como BASE, son transacciones que eventualmente son consistentes con un estado suave y disponible.
			- ventajas:
				- La velocidad para consultar información dentro de una colección de documentos en muy alta.
				- Nos permite tener un ambiente permisivo pensado en el futuro, facilitando el crecimiento y que puede pasar en la vida de un sistema.
			- desventajas:
				- Perdida de integridad a comparación de las transacciones ACID, pero en algún momento si podremos garantizar la integridad. 	
				- Perdida de inconsistencia a comparación de las transacciones ACID ya que no solo se busca la concistencia necesaría.
	
	- ¿A qué URL debemos ingresar para ver la interfaz gráfica (con un formato legible) de los endpoints de la API que genera Swagger? /swagger-ui.html https://swagger.io/
		- /swagger-ui.html para la interfaz gráfica y https://swagger.io/ para la documentación

	- ¿Cuáles son "las partes" necesarias que define la documentación de Swagger para poder consumir el endpoint de una API? Es decir, qué se necesita definir para enviarle solicitudes a una API a través de peticiones HTTP

		- Ocupamos definir el esquema, los headers, tipos de datos que recibire y regresara nuestos endpoints. 

	- ¿Qué es un JWT y que información codificada contiene? 
		- Es un json web token es una cadena de texto que contiene la información codificada en base 64(Los permisos, roles, tiempos de durabilidad, etc) del usuario que pretende logearse.

	- Cuando hablamos de seguridad suelen confundirse los siguientes terminos: autenticacion, autorización, identificación. Define cada uno de ellos y da un ejemplo de cómo un sistema podría implementar el(los) mecanismo(s) para realizar al menos esas 3 acciones

	Autenticación se refiere a cuando un usuario se

	Identificación es cuando un usuario otorga sus credenciales que lo representa, la autenticación es cuando se logra comprobar que el usuario si es un usuario del sistema y este tiene acceso, la autorización es cuando damos acceso a los recursos a un usuario, privilegios previamente definidos. Y esto se podría implementar con ayuda de Keycloak.
