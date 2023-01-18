# Disjoint sets: Sub-linear time processing // Procesamiento de tiempo sublineal

* Objectives-Goals:
	1. Resolver el problema de mantener un conjunto particionado en conjuntos disjuntos y fusionar las particiones dinámicamente
	2. **Proporcionar una solución simple en tiempo lineal para todos los métodos**
	3. Mejorar el tiempo de ejecución utilizando la estructura de datos subyacente adecuada.
	4. **Añadir una heurística fácil de implementar para obtener un tiempo de ejecución casi constante**
	5. Reconocer los casos de uso en los que se necesita la mejor solución para el rendimiento

## El problema de los subconjuntos distintos

Vamos a utilizar un conjunto disjunto cada vez que queramos realizar una partición de un conjunto inicial(Universo) de objetos en grupos disjuntos.
 
Un conjunto disjunto es aquel que no comparte elementos con algún otro conjunto del universo, teniendo así subconjuntos de este sin ningún elemento del universo en común entre ellos.

**image**

Una analogía que nos puede ayudar a entender el problema sería ver los conjuntos disjuntos como las recomendaciones no personalizadas. ¿Por qué?

Porque seguramente algúna vez han escuchado sobre las recomendaciones personalizadas, pero que són? 

Las recomendaciones personalizadas es eso que hacen las grandes corporaciones para mantener el máximo tiempo posible consumiendo su contenido, son esas que se dirigen a clientes individuales a partir de la información y/o datos previamente conocidos como compras anteriores o metadatos que muestran similitudes con otros usuarios, es por eso que las recomendaciones que me salen a mí cuando veo YT no son las mismas que las que le podrían salir a un niño, un maestra o incluso ustedes, porque evidentemente no todos tenemos los mismos intereses. 

Mientras que las recomendaciones no personalizadas  son aquellas que no se dirigen a tí o alguien en particular, si no a todos los consumidores o clientes en general, si no tenemos ningún dato podemos hacer las asociaciones codificadas por nosotros mismos como desarroladores(fuerza bruta) o basadas en acciones realizadas por otros clientes.

Para simplificar las cosas imaginemos que la regla establecida es que si un artículo X y el artículo Y se compran juntos más de un umbral fijo durante la última hora, sus respectivas categorías(2) se fusionan.

Por ejemplo, si un cliente compra un producto X, en eso momento podríamos sugerirle un artículo al azar de la misma categoría. 

Este proceso descrito es bastante común en la ciencia de los datos. Algunos de ustedes habrán reconocido esto y es que no es nada menos que la agrupación jerárquica(hierarchical clustering). Obviamente esto es más complejo de lo que 

// In a real non-personalized recommender system, we would track associations between products, measuring the strength of the link as the confidence that when X is bought, Y is also. . Para ello, podemos calcular el número de compras en las que aparecen ambos, dividido por el número total de compras en las que aparece al menos Y. Eso nos daría una mejor idea de qué va con qué, podríamos definir un umbral de confianza para fusionar los grupos, y en lugar de elegir de la confianza para fusionar los grupos, y en lugar de elegir un artículo al azar en el mismo grupo, mostrar las cinco asociaciones más fuertes.

El punto de partida es que tenemos que partir de este enorme conjunto de elementos y dividirlos en grupos separados, en grupos disjuntos. Y por supuesto, se pueden añadir nuevos elementos al catálogo todo el tiempo y las relaciones son dinámicas, por lo que tendremos que ser capaces de actualizar tanto la lista de artículos como los grupos.

* Un ejemplo rápido que podemos ver de una aplicación de un conjunto disjunto.
	
	1. En este escenario, tenemos un sitio web de comercio electrónico que intenta comprender qué productos se venden bien juntos, para poder ofrecer mejores recomendaciones a sus clientes. 

	2. (B) Al inicio tendremos que cada artículo en venta está en su propia categoría, una categoría diferente. 
		- Esto también funcionaría si partiéramos de categorías ya predefinidas, como discos SSD o batidoras, y agrupáramos las categorías de objetos que se venden juntos. 

		Pero en aras de la simplicidad, tened paciencia conmigo e imaginad que sólo hay un producto de cada categoría a la venta. 

	3. (C) Despues de unas ventas, agruparemos los objetos que se compran juntos con frecuencia, como los ordenadores portátiles y los discos externos, o las raquetas de tenis y las pelotas de tenis. 

	4. (D) Para que después de un tiempo, las cosas tienden a estabilizarse y se forman categorías-grupos estables. Para que la próxima vez que un cliente añada una computadora a su carrito, podremos sugerirle un par de objetos más relacionados con su compla como un celular.

## Reasoning on solutions

Antes de abordar nuestra posible solución es importante mencionar que nos limitaremos al caso agregativo, ¿Qué significa esto? Que dos particiones (conjuntos disjuntos) pueden fusionarse en un conjunto más grande pero no lo contrario. Osea que una partición no puede dividirse en dos subconjuntos.

Dependiendo del tamaño del catálogo, podríamos incluso encajar una estructura de datos de este tipo en la memoria, pero vamos a suponer, en cambio, que configuramos un servicio REST basado en un almacenamiento persistente tipo Memcached(Un almacén de claves-valores (no-SQL) utilizado como sistema de caché de objetos distribuidos.). 

La durabilidad de los datos es importante en este caso, porque en nuestro ejemplo, la actividad de seguimiento de los artículos durará años, y no queremos volver a calcular toda la estructura de conjuntos disjuntos cada vez que haya un cambio o se añada un nuevo producto. Por lo que buscamos persistencia de nuestros datos y esto puede ser atraves de una librería o un Rest CLient:

https://duckduckgo.com/?q=underlying+data+structure&t=newext&atb=v311-1&ia=web

### API

#### Description

Un posible diseño para una aplicación que utilice esta estructura: disjoint set. El **Disjoint Set Client** puede ser cualquier cosa, desde una biblioteca hasta un cliente REST. 

El propósito del cliente (delgado) aquí es ser una interfaz entre el almacenamiento en memoria (el nodo Memcached en la imagen) y el servidor, que tiene almacenamiento persistente. 

El servidor puede ser un servidor web, pero también podría ser simplemente otra aplicación (nativa) que almacena datos en un disco. 

* El Disjoint Set Client(cliente del conjunto disjunto) se ejecutará en la misma intranet, posiblemente incluso en la misma máquina, que el servidor de comercio electrónico. 

	- Este tendrá un trabajo cron(que permitre la sincronización) para mantener el almacenamiento persistente sincronizado con la versión en memoria (esto podría ocurrir cada pocos segundos o de forma asíncrona después de cada operación). 

	- Y además, responderá a las llamadas del sitio de comercio electrónico, consultando el almacenamiento en memoria cuando sea necesario, llamando al servidor web
		- No (y, en caso de que no quepan todos los datos en la memoria, también se encargará del swap).

## Describing the data structure API: Disjoint set

Como se podran imaginar tendremos una clase que nos permitira representar nuestra estructura de datos.

- **Slide 6** Ocupamos las operaciones en nuestra API:  

	+ _init(U)_: La inicialización sólo se encarga de la asignación de los campos básicos que necesita la clase y asigna cada elemento a su propia partición.
	+ _findPartition(x);_  Si x pertenece al universo U regresamos la partición a la que pertenece.
	+ _merge(x, y)_;, Dados dos elementos _x_,_y_ del universo, fusiona sus particiones en una sola.
	+ _areDisjoint(x,y)_; Dados dos elementos _x_,_y_ del universo, nos dice si estos pertenecen a diferentes particiones.

- Contrato con el cliente: Es decir, lo que tenemos que **TENER PRESENTE**.

	1. Un conjunto disjunto guardara las relaciones mutuas entre los elementos del universo U. 
	2. La relación esta definida por el cliente, osea que la relación no está definida explícitamente por la estructura de datos.
	3. Por ultimo, se asume que dicha relación ® tiene las propiedades reflexiva, simétrica y transitiva
esto significa que dados los elementos x, y, z de U

- Restricciones:

	- Sin pérdida de generalidad, podemos limitarnos al caso en que el Universo U, es decir, el conjunto de todos los elementos posibles, es conocido de antemano y estático. 
	- También asumimos que inicialmente cada elemento está en su propia partición. 
	- Asumimos que los elementos de nuestro Universo U son los enteros entre 0 y n-1. 
		* /// Esto no es una restricción real, porque podemos asociar fácilmente un índice a cada uno de los elementos reales de U.

/// Las soluciones para soportar las violaciones de estas suposiciones se pueden conseguir fácilmente haciendo un uso inteligente de las matrices dinámicas y de los propios métodos de la clase.

- Las garantías que ofrece la clase son:
	1. Es posible añadir una relación entre dos elementos cualesquiera.
	2. Si dos elementos en un punto cualquiera se fusionan (es decir, se añade una relación entre ellos), estos formarán parte del mismo conjunto disjunto.
	3. Si hay una cadena de elementos x1 , x2 , ..., xn tal que x1 se ha fusionado con x2 , x2 se ha fusionado con x3 y así sucesivamente, entonces x 1 y x n estarán en la misma partición.
		- Si tenemos los elementos x1,x2,...,xn, si x1 se fusiona con x2, x2 con x3, y así sucesivamente, entonces al final tendríamos que todos los elementos estarán en la misma partición
	4. Si dos elementos no están en la misma partición, entonces no existe otro elemento que pertenezca a los conjuntos disjuntos de ambos elementos.

// 

* La lectura y yo buscamos es que no seas la persona que diga: "¡Bueno, eso es fácil! Se mantiene un array para cada subconjunto(un array dinámico o un vector). ¿Por qué se preguntaran? 
	
	- No, porque al usar arrays, hay que entender si dos elementos están en el mismo conjunto podría requerir potencialmente recorrer todos los elementos de todos los subconjuntos. Del mismo modo, para saber a qué subconjunto pertenece un elemento podría requerir el mismo número de comprobaciones de elementos; es decir, la búsqueda podría ser lineal en el número total de elementos, lo cual es extremadamente lento y no estamos en la paradoja de la tortuga y alquimides, por lo que podremos mejorar el tiempo lineal.

	La siguiente idea en esta lluvia de ideas podría consistir en añadir un mapa de elementos a subconjuntos, junto con la lista de subconjuntos explicada anteriormente. Esto es una mejora ligeramente mejor para algunas operaciones; aunque, como veremos, todavía obliga a que operaciones como la fusión de dos conjuntos requieran potencialmente asignaciones O(n). Sin embargo, el rendimiento no es la principal preocupación de este diseño sino que usar dos estructuras de datos independientes es una idea terrible ya que tendríamos que sincronizarlas manualmente cada vez que te enfrentes a este problema en tu aplicación. Y esto es muy propenso a errores. 

	> Una solución ya mejor es proporcionar una clase envolvente que utilice internamente esas dos estructuras: te da encapsulación y aislamiento y, como resultado, eres capaz de escribir sólo una vez el código que sincroniza ambas estructuras en, digamos, añadir o fusionar (y así ganas reusabilidad). Y lo que es más importante, puedes probar tu clase de forma aislada y, por lo tanto, tener una garantía razonable de que va a hacer su trabajo sin experimentar errores cada vez que la utilices en tu aplicación (es decir, siempre que escribas pruebas unitarias buenas y exhaustivas, que superen los casos límite y desafíen el comportamiento de tu clase en todos los contextos posibles).

	Necesitaremos escribir una clase que se encargue de todo el problema, llevando la cuenta de a qué subconjunto (disjunto) pertenece un elemento, y encapsulando toda la lógica en ella. Sin embargo primero tenemos que hablar sobre la durabilidad de nuestros datos ya que es importante en este caso.

## Naïve solution A

La solución más rapida que podemos implementar es representar cada partición como una lista ligada,  por c/elemento en nuestro arreglo necesitaremos mantener la pista del apuntador de la cabeza de la lista.

Para verificar que dos elementos esten en la misma partición solo necesitamos revisar si los dos están en la misma lista

Para fusionar 2 particiones solo actualizamos el ultimo apuntador de una lista a la cabeza de la otra lista:

* Digamos P1, P2 representados por l1,l2, solo necesitamos actualiar el _next pointer_ del último elemento de l1 para que apunte a la cabeza de l2(o viceversa)
	
	- Podemos hacer esta operación en tiempo constante manteniendo un puntero extra a la cola de la lista 
		- Sin embargo para cada elemento de L2 , también tenemos que actualizar su puntero de lista en nuestro mapa para que apunte a la cabeza de la nueva lista combinada.

		- Sin embargo, desafortunadamente el peor de los casos de esta operación toma tiempo lineal ya que tendríamos que actualizar el puntero de la lista en nuestro mapa para que apunte a la cabeza de la nueva lista generada por la fusión de n-1 elementos.

			- Se podría mejorar este tiempo añadiendo siempre la lista más corta pero esto solo nos aseguraría que no tendríamos que actualizar n/2 punteros de elementos, pero esto no mejora el tiempo de ejecución asintótico.

	- **image**  A la izquierda: una de las dos listas se anexa a la otra añadiendo un nuevo y eliminando enlaces de la matriz a la segunda lista. A la derecha se muestra el resultado tras la fusión, con todos los punteros de los elementos de la matriz que pertenecen a la lista añadida (elementos 1 y 5 en el ejemplo) actualizados. ejemplo) actualizados.

* Clase DisjointSet tendra como atributo un HashMap que puede tener como llaves los elementos y como los valores tendremos las listas de elementos.

* Métodos de la clase:

	- Constructor: 

		+ Este método toma como parámetro la lista(o algo iterable) de los elementos que conformarán nuestro conjunto.
		+ Creamos un nuevo mapa para todos los conjuntos como elementos.
		+ Por cada elemento en la lista verificamos que no sea un null o un elemento que previamente ha sido agregado(repetidos) a nuestro mapa, para mapear el elemento con un nuevo conjunto unitario que solo contiene dicho elemento (inicialmente cada elemento es disjunto de cualquier otro elemento).
			- **Es importante notar que lanzaremos una excepción en caso de que:**
				1. El elemento por insertar es null
				2- El elemento por insertar no sea repetido
		+ // we can add a size public property, simply defined as the number of entries stored in the local partitions map.

	Como podremos ver la inicialización es facil ya que solo comprobaremos que la lista pasada como argumento no contiene duplicados e inicializaremos el conjunto disjunto con sus elementos, solo inicializamos el mapa(array asociativo) que va a indexar los elementos y los asignamos a la partición a la que pertenecen.

	Y podemos ver que esto se hace en tiempo lineal ya que tenemos que hacer esto por todos los elementos de nuestra lista.

	- add: Podemos ocupar agregar nuevos elementos a nuestro universo _add_, para ello este método, por cada elemento que queramos agregar solo creamos una nueva partición que contenga solo este elemento.

		+ Dado un elemento _elem_ regresa T syss este elemento pudo agregarse exitosamente, F en otro caso.
		+ Verifica que _elem_ no sea nulo o que sea un elemento repetido, es decir, que ya esté en nuestro mapa, si pasa algo de esto regresa F.
		+ Por último crea un nuevo conjunto unitario con este elemento y lo mapea a este elemento, para regresar T.

	This method is used to allow the Universe to grow, with new (unique) elements that can be added at any time. Every time we add a new element, we just add a brand-new partition containing that element alone

	- findPartition: 

		+ Dado un elemento regresa el conjunto(la partición, disjoint set) al que pertenece
		+ Verificamos que el elemento sea valido, es decir que no sea null o que previamente haya sigo agregado.
			- **Es importante notar que lanzaremos una excepción en caso de que pase esto.**
		+ Regresa el conjunto que contiene el elemento que recibimos como entrada

	En esta implementación este método solo toma tiempo constante(assuming that the hash for elem can be computed in constant time), realmente es un método muy sencillo

	- areDisjoint(elem1,elem2): 

		+ Dados dos elementos regresamos T syss los elementos son válidos y no pertenecen a la misma partición
			- regresa F syss los elementos son válidos y pertenecen a la misma partición

	Es un método muy sencillo ya que solo necesitamos ocupar nuestro método findPartition previamente implementado, para obtener el conjunto disjunto de cada párametro. 

		+ (Haciendo esto nos podremos asegurar que la implementación no necesitará cambiar, no importa cómo se almacenen nuestros elementos o se implemente findPartition (siempre que su interfaz siga siendo la misma, y las particiones puedan compararse con el operador de desigualdad).

	Es **importante** saber que se implementa esta comprobación para los elementos que pertenecen a diferentes en lugar de los elementos que pertenecen a la misma porque es la forma en que se utilizan normalmente(los conjuntos disjuntos). Ya que nos interesa comprobar si dos elementos no pertenecen a la misma partición, para saber si fusionamos las dos particiones o no.

	> *Todos los métodos que hemos visto hasta ahora se ejecutan en tiempo constante con respecto al tamaño del del contenedor.*

	- merge: Como hemos visto, el método de fusión requiere O(n) asignaciones en el peor de los casos.

		+ Dados dos elementos, regresamos T si se se pudieron fusionar las particiones a las que pertenecen o F si estos ya estaban en la misma particion.

			- Primero comprobamos si los elementos pertenecen a la misma partición llamando a findPartition en ambos y comprobando el resultado. Obteniendo las particiones a las que pertenecen los elementos que recibimos como parametros.
			- Checamos si son la misma, para regresar false ya que en realidad ya estaban en la misma partición
			- Por cada elemento en el primer lista/conjunto:
				1. Lo agregamos a la otra lista/conjunto, corrigiendo/actualizando los punteros **en el mapa** de particiones.
			- Regresamos T

		* Para hacer merge:
			- Si las particiones estuvieran implementadas con listas enlazadas en lugar de conjuntos, podríamos haber añadido simplemente la cabeza de una lista a la cola de la otra. Sin embargo, los conjuntos nos obligan a añadir elementos uno a uno. Se necesita un número lineal extra de asignaciones (en el peor de los casos), pero esto no cambia el orden de ejecución de la función; aún necesitamos actualizar las referencias de los elementos de una de las dos listas (es decir, los conjuntos) de todos modos

* https://github.com/mlarocca/AlgorithmsAndDataStructuresInAction/blob/master/JavaScript/src/disjointset/variants/disjointset_lists.js

## Using a tree-like structure

La idea es simple, en lugar de usar listas usaremos árboles, cada partición se identifica de forma única por la raíz del árbol asociado a la partición.

Cada partición se identificara de forma única por la raíz del árbol asociado a la partición. La ventaja de los árboles sobre las listas es que si el árbol está equilibrado, cualquier operación sobre el árbol es logarítmica! Lo que es mejor que el tiempo lineal que teníamos.

Los árboles llevan el nombre de su raíz, porque utilizamos la raíz del árbol como identificador único de la partición 

Cada elemento del mapa(de la matriz) apunta a un nodo del árbol: en la implementación ingenua teníamos un mapeo 1:1 entre los elementos y los nodos del árbol. Esto significa que para llegar a la raíz del árbol posiblemente tengamos que escalar todo el árbol (y, en promedio, la mitad de la altura del árbol)

Para fusionar dos conjuntos cuando se utiliza la representación en árbol. Sólo es necesario crear un nuevo enlace (además de recorrer un poco el árbol). En la figura de la izquierda, añadimos una arista desde la raíz del árbol 1 a la raíz del árbol 0, para fusionarlos. A la derecha, mostramos cómo esto cambia la estructura de datos: ahora sólo tenemos dos árboles, pero la altura del árbol 0 es ahora mayor que antes de la fusión.

- Esto representa una gran mejora respecto a la solución ingenua, ya que no tendremos que actualizar el mapa de particiones para ninguno de los otros elementos de las particiones fusionadas. 

	- En su lugar cada nodo del árbol mantendrá un enlace a su padre (no necesitamos guardar enlaces a hijos, porque no son útiles en este caso).

Como las particiones se  identifican de forma única por las raíces del árbol entones al averiguar a qué partición pertenece un elemento, solo hay que recuper el nodo del árbol al que apunta y subimos hasta la raíz de su árbol. En el método areDisjoint, hacemos lo mismo para ambos elementos para comparar las raíces encontradas y así poder ver si los dos elementos pertenecen a la misma partición (si y sólo si las dos raíces son iguales).

* En merge, es decir, la fusión de dos particiones requiere ahora un número constante de cambios, más el número de búsquedas necesarias para encontrar las dos raíces. 
	- Por lo que encontrar el conjunto al que pertenece un elemento requiere un tiempo logarítmico de media pero tiempo lineal en el peor de los casos, es decir, cuando tenemos que la altura del árbol es n, el número total de elementos que tenemos

Esto se debe a que, al fusionar particiones, podemos tener mala suerte con la elección de la raíz del árbol que ponemos como hijo de la otra. Al elegir aleatoriamente cada vez qué raíz se va a utilizar como hijo de la otra, podemos hacer que este escenario del peor caso sea poco probable... pero todavía sería posible (aunque extremadamente desafortunado). 

Esto significa que la implementación en nuestro peor escenario de merge todavía requiere tiempo O(n), lo cual no es bueno.

### Implementing the tree version - Page 14

Cambiaremos el nombre del mapa:partitionsMap a parentsMap, para que no haya pierde y en lugar de mapear a un conjunto real, los elementos del mapa de partición apuntan al padre de cada elemento en el árbol. 

Además en la inicialización, estableceremos convenientemente cada elemento como su propio padre.

The same change applies to the add method, which otherwise stays unchanged.

* UTILIZANDO ÁRBOLES: findPartition: 
	- Sera un método que toma un elemento y devuelve el elemento que está en la raíz del árbol para la partición a la que pertenece elem
	- Después de obtener el padre del elemento, comprobamos si es el mismo(propio) elemento. 
		- Porque si un elemento es su propio padre, entonces sabemos(eso significa) que hemos llegado a la raíz del árbol de la partición, debido a la forma en que inicializamos este campo(la raíz tiene como padre el mismo) y porque en merge nunca cambiamos el padre de una raíz.
		- Si no, seguimos iterando hasta llegar a la raíz.
	Se podría decir que con la recursión recorremos todo el árbol hasta llegar la raíz

- Esta nueva implementación de findPartition, ya no se ejecuta en tiempo constante ya que tendremos tantas llamadas recursivas como la altura del árbol de la partición. 
	- Como hasta ahora no podemos hacer ninguna suposición sobre los árboles, esto significa que posiblemente tengamos un número de llamadas proporcional al número de elementos del Universo U, aunque esto es el peor de los caso, en promedio podemos esperar un rendimiento mucho mejor. 

- Y aunque ahorita parecer que sólo hemos empeorado el rendimiento de nuestra estructura de datos ya que pasamos de tiempo constante a una logaritmica aun hay que ver nuestra nueva implementación de la operación de fusión.

/// - Se establece el padre de p2 para que sea igual a p1 , de modo que ahora tanto p1 como p2 tienen el mismo padre, pero también todos los elementos de p2 compartirán finalmente p1 como raíz de su árbol

- Comparando las dos implementaciones se puede ver inmediatamente que ésta es más sencilla, sólo hemos cambiado las últimas líneas. Sin embargo ya no necesitamos iterar por una lista de elementos, si no que para fusionar  sus dos particiones, simplemente tenemos que llegar a raíces de ambos árboles, y luego establecer una raíz como el padre de la otra. 
	- Todavía tenemos que encontrar las raíces de los árboles

- Como la nueva línea que hemos añadido sólo requiere un tiempo constante, entonces el tiempo de ejecución del método dependera de las dos llamadas a findPartition y como hemos visto, requieren un tiempo proporcional a la altura del árbol sobre el que son llamadas, y en el peor de los casos esto puede seguir siendo lineal. Sin embargo, esto solo pasa en el caso medio, y especialmente en las primeras etapas tras la inicialización, despues de esto, sabemos que la altura de los árboles será mucho menor.

- Conclusión; Tenemos un conjunto disjunto para el que todas las operaciones siguen requiriendo tiempo lineal en el peor de los casos, pero en promedio sólo necesitarán tiempo logarítmico, incluso para aquellas operaciones que eran de tiempo constante en la implementación ingenua.
	-  Si lo miramos desde una perspectiva diferente, ya hemos conseguido tener un conjunto de operaciones más equilibrado en nuestro conjunto disjunto, lo que es especialmente bueno en aquellos contextos en los que la fusión es una operación común.

Pero esto no es todo, la cosa puede mejorar :D

### Heuristics to improve the running time 13

El siguiente paso en nuestra búsqueda de un rendimiento óptimo es asegurarnos de que findPartition sea logarítmica incluso en el peor de los casos.

Podemos llevar fácilmente la cuenta del rango (también conocido como tamaño) de cada árbol, utilizando espacio lineal extra y realizando operaciones extra en tiempo constante en nuestro método merge, solo actualizaremos el rango sólo para las raíces de los árboles y cuando fusionemos dos árboles solo nos aseguraremos de establecer como hijo el árbol con el menor número de nodos. (menor rango)

* Y se puede demostrar por inducción que este árbol será también el que tenga la menor altura: esto significa que el nuevo árbol tendrá la misma altura que el anterior, o simplemente tendrá su altura incrementada en 1.
	- También se puede demostrar que la altura de un árbol no puede incrementarse más que un número logarítmico de veces. Y como un logaritmo crece muy lentamente (por ejemplo ln(1000) ~= 10, ln(1000000) ~= 20) , esto es, en la práctica, ya un buen resultado, suficiente para la mayoría de las aplicaciones. Sin embargo, recordemos que algunas veces buscamos hacer las cosas le mejor posible como cuando estás escribiendo algún código central realmente crítico, como un kernel o código de firmware 0.0 
		- ¿Por qué? Porque puedes. Y a veces también porque es necesario. Si ahorras 0,001 ms en una operación que repetirás mil millones de veces, ya habrás ahorrado 16 minutos de cálculo.

#### $ Comprensión de rutas $

* Podemos hacer algo mejor que solo tener árboles equilibrados y métodos de tiempo logarítmico. Para mejorar aún más nuestros resultados, podemos utilizar una heurística llamada compresión de rutas.
	
	- Para cada nodo de los árboles, en lugar de almacenar un enlace a su padre, podemos almacenar uno a la raíz del árbol. 
		- Total, no necesitamos llevar un historial de las fusiones realizadas ya que sólo necesitamos saber en el momento actual cuál es la raíz de la partición de un elemento
			- **Sólo ocupamos** saber en el momento actual cuál es la raíz de la partición de un elemento, y averiguarlo tan rápido como podamos.

	- Imagen: Conjunto disjunto representado mediante un árbol con compresión de trayectoria. La representación interna se muestra junto a la matriz de elementos. En la representación del árbol, las flechas discontinuas son enlaces de padres, mientras que las flechas sólidas son punteros a la raíz del conjunto. La estructura contiene inicialmente dos conjuntos, coloreados en rojo claro y azul oscuro y cuyas raíces son respectivamente 0 y 1.

* !Es importante!, si se actualizaran todos los punteros raíz como parte de la fusión, ya no sería un método logarítmico; necesitaríamos un tiempo lineal para actualizar cada nodo del árbol. 

### Imagen of deprecated

* ¿Qué ocurre si no actualizamos inmediatamente los punteros padre en los nodos del árbol establecidos como hijo? Sencillamente, la próxima vez que se ejecute findPartition en uno de los elementos de ese árbol digamos x, tendremos que recorrer el árbol desde x hasta su primera(antigua) raíz xR  y luego desde xR hasta la nueva raíz R del arbol(nuevo) completo

* Hay que tener en cuenta que los punteros de los elementos del árbol antiguo podrían haber estado sincronizados antes de la fusión o podrían no haberse actualizado nunca. Como de todos modos tendremos que subir por el árbol, podemos volver sobre nuestros pasos desde la cima, R , hasta x y actualizar los punteros de la raíz para todos esos elementos. 

* Sin embargo, esto no influirá en nuestro rendimiento asintótico para findPartition , ya que al volver a recorrer el mismo camino sólo duplicamos el número de pasos y sabemos que los factores constantes son irrelevantes en el análisis asintótico.

* descripcion imagen: Por ejemplo, en la imagen, podemos observar que el árbol azul oscuro está desincronizado. Si llamamos a find sobre el elemento 6 , el algoritmo empieza a subir lentamente por el árbol azul, hasta que nos encontremos con su raíz (tercer diagrama).  
(diagramas inferiores), para que el algoritmo retroceda, y actualice la raíz para los elementos intermedios 9 y 6 previamente encontrada.

Y como consecuencia de estos pasos extra, ent tendremos en la próxima vez que llamemos a findPartition necesitaremos un único paso para encontrar su raíz **//** Ya que en cualquier elemento de la ruta desde x hasta root(x) podremos saber con seguridad que esos punteros estarán actualizados y por ende solo necesitaremos un único paso para encontrar su raíz.

* Nos gustaría saber cuántas veces tendremos que actualizar los punteros raíz, en promedio, para una sola operación o, en un análisis amortizado, durante un cierto número k de operaciones pero esto ya se pone oscuro, entonces 

	* Sólo hay que saber que se ha demostrado que el tiempo de ejecución amortizado para **_m_** llamadas a findPartition y merge sobre un conjunto de **_n_** elementos requerirá **_n O(m * Ack(n))_** accesos al array.

	Y **_Ack(n)_** es una aproximación de la función inversa de Ackermann y esta función crece tan lentamente que puede considerarse una constante ya que su valor será inferior a 5 para cualquier número entero que pueda almacenarse en un ordenador.

		-  Todavía no se sabe si este es el límite más bajo para la estructura de datos Union-Find. Sin embargo, se ha demostrado que O(m * InvAck(m, n)) es un límite inferior estricto, donde InvAck(m, n) es la verdadera función inversa de Ackermann.

	- 🏆 **logramos obtener un límite constante amortizado para todas las operaciones en ¡esta estructura de datos!** 🏆

* Y aunque esto último suene díficil, sólo necesitamos unos pequeños cambios para implementar la heurística de compresión del camino.


### Implementación balanceada con la compresión de la ruta

Ahora discutiremos la implementación final de nuestra estructura de conjuntos disjuntos, incluyendo tanto la heurística de "equilibrio de árboles por rango" como la de "compresión de rutas".

* Ocupamos la clase info que guarda el rango y la raiz para simular nuestra comprensión de ruta
	
	- Esta clase Info modela (la información asociada a) un nodo del árbol de particiones. Es sólo un contenedor para dos valores: la raíz del árbol y el rango (es decir tamaño) del árbol enraizado en el elemento actual.
	
	- En la propiedad raíz no almacenaremos referencias a otros nodos. En su lugar, almacenaremos directamente el (índice del) propio elemento, que luego utilizaremos como clave de un HashMap , exactamente como hemos mostrado en las secciones anteriores.
	
	- **Lectura: Ahora** Si realmente estuviéramos modelando una estructura de datos en forma de árbol, este diseño resultaría en una encapsulación imperfecta. Pero sólo estamos utilizando la clase Info como una tupla para reunir todas las propiedades asociadas a un elemento. 

* La mayoría de las implementaciones de conjuntos disjuntos utilizarían dos matrices para esto. Dado que nuestra implementación no restringe las claves a enteros y estamos usando mapas hash, podríamos definir dos Mapas para las raíces y rangos del elemento. 
	- Al hacerlo, sin embargo, almacenaríamos cada elemento tres veces: dos veces como clave de cada mapa y una vez como raíz de algún árbol (esta última entrada podría almacenar, por supuesto, algunas claves varias veces y otras no). 

Al utilizar este wrapper(esta envoltura) adicional y un único mapa de "información", nos aseguramos de almacenar los elementos sólo una vez como claves y no más veces

Mientras que los objetos se almacenarían como referencia, con una sobrecarga mínima, valores inmutables, y especialmente  cadenas, se almacenarían por valor. E incluso evitar almacenar cada elemento una vez más puede conducir a un ahorro de memoria consistente. 

* En teoría, podríamos hacerlo aún mejor almacenando cada elemento en envolturas de objetos y utilizando esas mismas envolturas como claves. Así sólo almacenaríamos cada clave una vez, y utilizaríamos las referencias de los wrappers todo el tiempo, tanto como claves para nuestro(s) mapa(s) como para los valores. 

* Digo en teoría porque tendrías que preguntarte, si ¿Merece la pena la sobrecarga y el aumento de complejidad de la solución de las envolturas? 

	- Esto depende de las suposiciones que puedas hacer sobre el tipo y el tamaño de las claves. En la mayoría de los casos, probablemente no, así que asegúrese de perfilar adecuadamente su aplicación y analizar su entrada antes de embarcarse en tales optimizaciones. 

* **Estando en la 19 Vuelves a la diapositiva 9** Volviendo a nuestra implementación: una vez más, los cambios son mínimos. Tanto en el constructor como en add , sólo tenemos que actualizar la última línea: Cambiando el conjunto unitario por el constructor de la clase Info.
	
	- partitionsMap[elem] = new Set(elem) por parentsMap[elem] = new Info(elem). Usando el constructor  de nuestra clase Info para crear una nueva instancia y asociarla con cada elemento.

* **Estando en la 19** findPartition: 5.9: Como mencione previamente(se describió al principio de la sección), cuando se utiliza la heurística de compresión de rutas, no actualizamos la raíz de todos los elementos en merge.
	
	- Pero sí la actualizamos en findPartition. Así, la principal diferencia con la versión anterior es que guardamos el resultado de las llamadas recursivas a findPartition en la línea #6, y lo usamos para actualizar la raíz del elemento actual. Todo lo demás permanece exactamente igual.

		- info.root ← this.findPartition(info.root)

* **Estando en la 20** La mayor parte del cambio surge en el merge:	

	- Toma dos elementos, regresa T syss pueden fusionarse las dos diferentes particiones de los elementos recibidos como párametros, y false en caso de que estén en la misma particion.

	- #1,2 Obtenemos las raices de particiones a las cuales pertenecen, si algo pasa mal con los elem1 se lanzara una excepcion
	- verificamos que no esten en la misma partición #3
		- porque si ya están en la misma no hace falta hacer la fusion
	- **#5,6: Los 2 info_i** como no están en la misma obtenemos la info de cada nodo para poder realizar la fusion, por lo que busca los nodos de información para ambas raíces.
	- **#5,6: >=** Checamos quien en el arból con el rango-rank más grande para que el árbol más pequeño se convierta en un subarbol del otro para
		- actualizar los datos: el rank y la raiz 
			- No vale la pena actualizar el rango de la otra (antigua) raíz, porque nunca se volverá a comprobar

* Seguimos recuperando los elementos de las raíces de los árboles como antes, y seguimos comprobando que no son los mismos. Pero después de eso, tenemos que recuperar la información de ambas raíces, comprobamos qué árbol es más grande: el más pequeño acabará siendo el hijo, y reasignaremos su raíz. Además, tenemos que actualizar el rango de la raíz del árbol más grande; su subárbol ahora también contendrá todos los elementos de su nuevo hijo.

# Applications

Las aplicaciones de los conjuntos disjuntos son omnipresentes como jesucristo, hahaha, y la razón por la que se han estudiado a fondo es precisamente por el número de casos en los que resultan útiles, por ejemplo en las gráficas

* Gráficos: Componentes conectados 

	- En el caso de los grafos no dirigidos, existe un algoritmo sencillo que utiliza conjuntos disjuntos para llevar la cuenta de sus componentes conectados, es decir, las zonas del grafo que están interconectadas.

	- Los componentes conectados se calculan normalmente utilizando la Búsqueda por Profundidad (DFS), podemos utilizar un conjunto disjunto para realizar un seguimiento de los componentes mientras exploramos todas las aristas del grafo. 

	- Al final, cada partición de vértices en disjointSet será un componente conectado. Cabe destacar que este algoritmo no se puede utilizar para grafos dirigidos y componentes fuertemente conectados

* Graphs: También se ocupan en el algorithm de Kruskal para sacar el árbol generador minimo de una gráfica  minimum spanning tree

	Un árbol generador de un grafo no dirigido conexo G es un árbol cuyos nodos son los vértices del grafo y cuyas aristas son un subconjunto de las aristas de G. 

	Y sabemos que si G es un grafo conexo, entonces tiene al menos un árbol de expansión y posiblemente muchos si este también tiene ciclos. Y entre todos los árboles de expansión posibles, el árbol de expansión mínima es aquel en el que la suma de los pesos de las aristas es mínima.

	- (A) Ejemplo de un grafo con varios árboles de expansión, Un grafo no dirigido, conectado, que contiene ciclos. 
	- (B) Como el grafo tiene ciclos, hay varios árboles de expansión que cubren todos los nodos. Se muestran algunos ejemplos, cada uno de ellos seleccionando sólo el conjunto más pequeño de aristas (las gruesas) que "abarcan" todos los vértices. (
	- C) Para cada conjunto de aristas, se pueden obtener varios árboles, dependiendo de la raíz del árbol y del orden de los hijos. (Sólo se muestran algunos ejemplos. Observe, no obstante, que no se limitan a árboles binarios).

	- /// El algoritmo de Kruskal está fuera del alcance de este libro. Aquí basta con decir que construye el MST de un grafo de la siguiente manera

		- Comenzando con cada vértice en un conjunto de diferencia.
		- Manteniendo un conjunto disjunto de los vértices del grafo.
		- Recorriendo las aristas del grafo en orden de peso creciente.
		- Para cada arista, si sus extremos no están en la misma partición, fusionar sus componentes.
		- Si todos los vértices pertenecen a la misma componente, parar.

* Clustering: También se puede ocupar en el clustering, este es el algoritmo de aprendizaje no supervisado más utilizado. El problema es que queremos obtener una partición de un conjunto de puntos en unos diferentes subconjuntos, normalmente disjuntos.

	- Un ejemplo: el clustering jerárquico aglomerativo comienza con cada punto en su propio cluster (partición) y fusiona continuamente dos puntos (y sus clusters) hasta que todos los clusters se fusionan en uno; la figura de abajo a la izq muestra un ejemplo de cómo funciona. 

		- El algoritmo mantiene un historial de este proceso, y es posible obtener una instantánea de los clusters creados en cualquiera de los pasos. El punto exacto en el que se toma esta instantánea se controla mediante unos pocos parámetros y determina el resultado del algoritmo. 

* Unificación: La unificación es el proceso de resolver ecuaciones entre expresiones simbólicas. Una de las formas de resolver una ecuación de este tipo es encontrar términos en ambos lados que sean equivalentes y eliminarlos de la ecuación. Por supuesto, las estrategias de solución dependen de las expresiones (términos) que pueden aparecer en la ecuación y de cómo se pueden comparar o cuándo se consideran iguales. Por ejemplo, pueden evaluarse y considerarse iguales si tienen el mismo valor, o pueden ser simbólicos y considerarse iguales si son equivalentes, posiblemente netos de alguna sustitución de variables.

Resumen: 

La belleza de esta estructura(un conjunto disjunto) es que podemos construir soluciones cada vez más complejas y eficientes para resolverlo, añadiendo pequeños cambios incrementales.

A veces podemos conformarnos con una implementación subóptima si es lo suficientemente eficiente y el rendimiento no es crítico.

Probablemente podríamos conformarnos con la solución ingenua de tiempo lineal, pero sabemos que es una parte tan fundamental de muchos algoritmos de grafos que debemos optimizarla al máximo.

Conocemos un límite inferior teórico para el tiempo de ejecución de las operaciones de un conjunto disjunto, pero no sabemos si existe un algoritmo que se ejecute con ese límite, o incluso cualquier otro algoritmo más rápido que los que conocemos.

La función inversa de Ackermann, cuyo valor no será mayor que 5 para cualquier número entero que quepa en un ordenador, modela el orden de magnitud del tiempo de ejecución de la operación de fusión en conjuntos disjuntos. 

Fusionar dos subconjuntos requerirá, por término medio, sólo cinco intercambios como máximo.

----
⌨️ with much :purple_heart: by [Jose-MPM](https://github.com/Jose-MPM) 😊⌨️