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
