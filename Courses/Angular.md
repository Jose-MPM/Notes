# Angular

* ng generate component <name>
* ng g c header generara 4 archivos:
		- ccs=caja de estilos
		- html
		- espect.ts archivo para hacer pruebas
		- ts. hoja que permite hacer la logica=controlador 
			* Todo lo que definamos aquí podremos usarlo en nuestra vista (html)
	* ng g class productos/producto

* Clase SErvice: Donde acoplaremos todo lo que tiene que ver con nuestros datos, el modelo de nuestro componenete, toda la logica del negocio en una clase asociada, que sea nuestro service:


* Data:
	- @Injectable decorador que permite  inyectar esta clase en otros componentes mediante la inyeccion de dependencias

* Observables: Librería que nos permite implementar programación activa, para trabajar con datos que puede que no vengan de forma inmediata, estar al pendiente escuchando de  cuando ya esten estos datos, un centinela:observable
	- Tiene sentido cuando los datos vienen de un servidor, no siempre sabemos cuando van a llegar pero si que cuando lleguen el centinela ejecutara algo.

* Utilizando rutas podemos definir "paginas" aunque en angular sería mapear el contenido de los componentes a una ruta

* fuser -k 9001/tcp
