# Complejidad de Kolmogorov

## 2. RELACIÓN CON LA COMPLEJIDAD EN TIEMPO y otros conceptos importantes
2. Relación con la Complejidad Computacional:

	- 2.1 Comparación con la complejidad en tiempo (P, NP, coNP) que los estudiantes ya han estudiado.
		- Defs breves:
			- Recapitulación rápida de la complejidad en tiempo (P, NP, coNP).
				- La complejidad en tiempo, que ya han explorado en sus clases, se centra en la eficiencia de los algoritmos en términos del tiempo necesario para resolver un problema. 
					- En este contexto, problemas en la clase P son aquellos que pueden resolverse eficientemente en tiempo polinómico, mientras que los problemas NP son aquellos para los cuales, dado una solución, se puede verificar en tiempo polinómico si es correcta. coNP se refiere a los problemas cuyas soluciones pueden ser verificadas en tiempo polinómico si son incorrectas.
			- Recordatorio de que estos conceptos se centran en el tiempo necesario para resolver un problema.
		
		- Enfoque Diferente de Kolmogorov:
			- Y como ya hemos visto, la complejidad de Kolmogorov aborda la complejidad desde una perspectiva diferente, mientras que la complejidad en tiempo se enfoca en la eficiencia de los algoritmos, Kolmogorov se centra en la longitud mínima de descripción. 
				- NOS permite medir la complejidad de un concepto.
			- **Imaginemos la complejidad de Kolmogorov como la medida de cuánto se puede comprimir la información de un objeto manteniendo su esencia.** A diferencia de la complejidad en tiempo, que se concentra en cómo los algoritmos resuelven problemas, la complejidad de Kolmogorov mira cuánto podemos simplificar la descripción del objeto en sí mismo.
					- en su Def 
						- C_{(x)} >=  |x|

		- Ambas complejidades comparten un fundamento común al utilizar esquemas de codificación y máquinas de Turing, aunque se enfocan de manera distinta en sus objetivos. 
			- Esquemas de Codificación:
				- En la complejidad en tiempo: los problemas se definen mediante una codificación eficiente de sus instancias. Por ejemplo, representamos un grafo como una cadena. La clave radica en cómo representamos la información de manera compacta y eficaz para que la máquina de Turing pueda procesarla en un tiempo polinómico.
				- Mientras que en la complejidad de Kolmogorov: También trabajamos con esquemas de codificación, pero el enfoque se desplaza hacia la longitud mínima de la descripción que genera el objeto. En lugar de preocuparnos por la eficiencia de la representación para la resolución, nos preguntamos cuánta información esencial se necesita para describir el objeto.

			- En ambos casos: Las máquinas de Turing son la base formal para conceptualizar el cómputo y resolver problemas. *Estas máquinas proporcionan un marco teórico sólido que nos permite analizar y comprender la naturaleza de los algoritmos.*
				* . La complejidad algorıtmica de una cadena es el programa mas corto, medido en número de bits, que produce una cadena dada cuando se ejecuta en una maquina universal de Turing. 
				- En la complejidad en tiempo: El análisis se centra en cuánto tiempo tomaría a una máquina de Turing estándar resolver un problema en función de la entrada dada. La eficiencia temporal es el criterio principal.
				- En la complejidad de Kolmogorov: Aquí, nos interesamos en cuánto puede ser comprimida la descripción del objeto por una máquina de Turing que puede generar dicho objeto. La atención recae en la longitud mínima de la descripción, revelando cuánto podemos simplificar la información esencial del objeto.
		
		* Ejemplo comparativo:	
			- Consideremos un problema simple de ordenar una lista. En términos de complejidad en tiempo, un algoritmo de ordenación eficiente como Merge Sort sería preferido ya que tiene un tiempo de ejecución en O(n log n). Sin embargo, si nos enfocamos en la complejidad de Kolmogorov, podríamos tener un programa más corto para describir una lista ya ordenada. 
			- Esto destaca cómo la complejidad de Kolmogorov ofrece un enfoque diferente al evaluar los recursos computacionales necesarios.
				- Cabe Destacar que, aunque NP-complete, la descripción de las instancias específicas puede ser sorprendentemente concisa. Aquí podemos ver la independencia entre ambas teorías.
					- **Destacar que, aunque NP-complete, la descripción de las instancias específicas puede ser sorprendentemente concisa. Es decir, una complejidad de Kolmogorov baja.**
			
		* Estas similitudes fundamentales resaltan cómo ambas disciplinas comparten una base conceptual. Aunque se diferencian en sus objetivos finales, la utilización de esquemas de codificación y máquinas de Turing en la formalización subraya la conexión profunda entre la complejidad en tiempo y la complejidad de Kolmogorov
			* Esto nos lleva a la pregunta fundamental: ¿cómo podemos entender y medir la complejidad de un objeto no solo por la eficiencia de los algoritmos, sino también por la longitud mínima de su descripción? Aquí es donde la complejidad de Kolmogorov entra en juego, proporcionando una perspectiva única en la teoría de la computación.

	- Relación con Recursos:
        - Destacar que tanto la complejidad en tiempo como la de Kolmogorov están relacionadas con recursos computacionales, pero de manera diferente.
        - La complejidad de Kolmogorov se centra en los recursos necesarios para describir un objeto, no en el tiempo de ejecución.
        
# Conceptos importantes

- funcion K:
	- Si una descripción d(s) de una cadena s tiene una longitud mínima, es llamado una descripción mínima de s, 
		- (es decir, usa la menor cantidad de bits)
	- y la longitud de d(s) (es decir, el número de bits en la descripción mínima) es la complejidad de Kolmogorov de s, escrita K(s). 
		- Simbólicamente: K()s.d()s.
	- la complejidad de Kolmogorov es la longitud de la descripción mínima de un lenguaje.
	* La complejidad de Kolmogorov es esencialmente la longitud de la descripción mínima de una cadena en algún lenguaje de descripción universal fijo. Entre más chica mejor.

- Condición de aleatoriedad  o compresion en la complejidad de kolmogorov.
	
	- La complejidad de Kolmogorov también se utiliza para evaluar el grado de aleatoriedad de una cadena. Una cadena se considera más aleatoria si su K(x) es grande, es decir, si se necesita una descripción más larga para generarla.
    
    - Evaluación de la Aleatoriedad: La complejidad de Kolmogorov se utiliza para evaluar el grado de aleatoriedad de una cadena. 
    	- K(x) es grande para cadenas más aleatorias, indicando que se necesita una descripción más larga para generarlas.
    		- significa que no hay patrones evidentes en xx, ya que se necesita más información para describirlo de manera concisa.
        - En contraste, si K(x) es pequeño, podría sugerir que x tiene estructuras o patrones que permiten una descripción más corta.

    * Relación con otros Conceptos:
        - La relación entre aleatoriedad y K(x) a menudo se vincula con la imprevisibilidad y la falta de regularidad en una cadena. 
        	* En términos prácticos, esto significa que una cadena considerada más aleatoria según la función K puede ser menos compresible y, por ende, más difícil de predecir o explicar.

- El lenguaje de descripcion:
	- La complejidad de Kolmogorov se puede definir para cualquier objeto matemático, pero por simplicidad,  se restringe a las cadenas
		- Aunque la complejidad de Kolmogorov se calcula para cualquier objeto, estos se codifican en cadenas.

	- La complejidad de una cadena es la longitud de la descripción más breve posible de la cadena en algún lenguaje de descripción universal fijo
		- Primero debemos especificar un lenguaje de descripción para las cadenas. Dicho lenguaje de descripción puede basarse en cualquier lenguaje de programación de computadoras, como Lisp, Pascal o Java. Sin embargo siempre buscamos un lenguaje óptimo, el que produzca la descripción de menor longitud
			* Si P es un programa que genera una cadena x, entonces P es una descripción de x. La longitud de la descripción es solo la longitud de P como una cadena de caracteres, multiplicada por la cantidad de bits en un carácter 
		- La longitud de la descripción más corta dependerá del lenguaje de descripción elegido.
			- pero el efecto de cambiar de idioma está acotado (un resultado llamado teorema de invariancia). 
				- teorema de invariancia: se sale?
				-  garantiza que los valores de la complejidad convergen a pesar de la eleccion arbitraria de lenguajes de programacion o la utilizacion de maquinas de Turing truqueadas
		- Se puede demostrar que la complejidad de Kolmogorov de cualquier cadena no puede ser más de unos pocos bytes mayor que la longitud de la propia cadena. Las cadenas como el ejemplo anterior de abab, cuya complejidad de Kolmogorov es pequeña en relación con el tamaño de la cadena, no se consideran complejas. 

- Comprensión: Encontrar una descripción óptima de una cadena se logra mediante algoritmos de compresión de cadenas.
	* La forma de abordar la complejidad algorıtmica de una cadena es por medio del uso de algoritmos de compresion sin perdida. 
		- Sin perdida significa que se puede recuperar la cadena original a partir de la version comprimida por mediode un programa de descompresion. Entre mas compresible se considera menos compleja la cadena. Por el contrario, si no es compresible, se le considera a la  cadena como aleatoria o maximamente compleja. El resultado de un algoritmo de compresion es una cota superior de su complejidad algorıtmica, por lo que se dice que la complejidad de Kolmogorov es computable por arriba.
			* Un algoritmo de compresióon transforma una cadena comprimida en dos partes: una parte es la version comprimida del objeto original, y la otra las instrucciones para descomprimir la cadena. 
	* Es sencillo calcular los límites superiores para K(s): simplemente comprima la cadena s con algún método, implemente el descompresor correspondiente en el idioma elegido, concatene el descompresor a la cadena comprimida y mida la longitud de la cadena resultante, concretamente, el tamaño de un archivo autoextraíble en el idioma dado. 

	- Una cadena s es comprimible por un número c si tiene una descripción cuya longitud no exceda |s| − bits c. Esto es equivalente a decir que K(s) ≤ |s| − c. De lo contrario, s es incompresible por c. Se dice que una cadena incompresible por 1 es simplemente incompresible 
	- Por la misma razón, la mayoría de las cadenas son complejas en el sentido de que no pueden comprimirse significativamente: su K(s) no es mucho más pequeña que | s|, la longitud de s en bits.
	- La relación entre aleatoriedad y K(x) se vincula con la imprevisibilidad y la falta de regularidad en una cadena.
    	- K(x) pequeño facilita la compresión, ya que sugiere patrones o estructuras que permiten una descripción más corta.

* Reflexión sobre Limitaciones: Es importante resaltar que la complejidad de Kolmogorov no proporciona una visión completa. Reconocimiento de que estos conceptos son herramientas distintas y tienen limitaciones específicas.
	- La Complejidad de Kolmogorov, a través de la función KK, ofrece una visión única al medir la esencia y la aleatoriedad en las cadenas. 
* Importancia en la Teoría de la Información: La idea de usar la Complejidad de Kolmogorov para medir la aleatoriedad se conecta con la teoría de la información. Cuanto más aleatoria es una cadena, más información nueva aporta, y su K(x)K(x) refleja cuánta información esencial necesitamos para representarla. Esta perspectiva ofrece una herramienta poderosa para comprender y cuantificar la aleatoriedad en la teoría de la información y la teoría de la complejidad computacional.	

# RESUMEN-PULIDO

- La complejidad en tiempo fue un concepto ampliamente estudiado a lo largo del semestre, nos dimos cuenta que esta rama se enfoca en la eficiencia de los algoritmos en términos del tiempo necesario para resolver x problema. Esto es claro porque que abordamos algunas clases de complejidad como : P,NP, coNP.
	* Problemas en la clase P son resolubles eficientemente en tiempo polinómico, mientras que los problemas NP son aquellos para los cuales se puede verificar en tiempo polinómico si una solución dada es correcta. La clase coNP refiere a problemas cuyas soluciones pueden ser verificadas en tiempo polinómico si son incorrectas.

En la complejidad de Kolmogorov se aborda la complejidad desde una perspectiva única. Mientras que en la complejidad en tiempo se evalúa la eficiencia de los algoritmos, acá en Kolmogorov se centra en la longitud mínima de la descripción de un obj, podemos verla como la medida de cuánto se puede comprimir la información de un objeto mantiendo su esencia.

Ambas complejidades comparten fundamentos comunes al utilizar esquemas de codificación y máquinas de Turing U, aunque difieren en sus objetivos finales.

En la complejidad en tiempo, los problemas se definen mediante una codificación eficiente de sus instancias (por ejemplo, representando un grafo como una cadena) mientras que en Kolmogorov, tambien se trabaja con esquemas de codificación, pero el enfoque se desplaza hacia la longitud mínima de la descripción que genera el objeto.

Ambas complejidades utilizan máquinas de Turing como la base formal para conceptualizar el cómputo y resolver problemas. En la complejidad en tiempo, el análisis se centra en cuánto tiempo le tomaría a una máquina de Turing estándar resolver un problema en función de la entrada dada. En  Kolmogorov, nos interesa cuánto puede ser comprimida la descripción del objeto por una máquina de Turing que puede generar dicho objeto.

- Estas similitudes fundamentales resaltan cómo ambas disciplinas comparten una base conceptual. Aunque se diferencian en sus objetivos finales
	* la utilización de esquemas de codificación y máquinas de Turing en la formalización subraya la conexión profunda entre la complejidad en tiempo y la complejidad de Kolmogorov

Un Ejemplo Comparativo: puede ser el problema de ordenar una lista. un algoritmo de ordenación eficiente como Merge Sort es preferible en términos de complejidad en tiempo pero en la complejidad de Kolmogorov podría destacar un programa más corto para describir una lista ya ordenada. Aquí podemos ver cómo la complejidad de Kolmogorov ofrece una perspectiva diferente al evaluar los recursos computacionales necesarios.

Podemos tener un problema en NP-complete, pero la descripción de instancias específicas puede ser sorprendentemente concisa, indicando una baja complejidad de Kolmogorov.

3.1 La Función K nos regresa un natural asociado a la complejidad de Kolmovorov:

Si una descripciónde una cadena s tiene una longitud mínima, se denomina una descripción mínima de s, digamos d(s)
	* es decir, el número de bits en la descripción mínima) 
y la longitud de esa descripcion d(s) es la complejidad de Kolmogorov de s, escrita K(s). Simbólicamente: K(s)=∣d(s)∣. 

La complejidad de Kolmogorov es esencialmente la longitud de la descripción mínima de una cadena en algún lenguaje de descripción universal fijo.

El Lenguaje de Descripción

La complejidad de Kolmogorov se define para cualquier objeto matemático, pero por simplicidad, se restringe a las cadenas. Aunque se puede calcular para cualquier objeto, solo que la codificación se realiza en cadenas.

Primero hay que mencionar que como medio de descripción ocuparemos un lenguaje formal, uno de programación, principalmente porque el natural puede ser demasiado ambiguo al momento de dar las descripciones,esto es porque esta elección afecta la longitud de la descripción, buscamos la minima, pero este cambio está acotado por el teorema de invariancia. Que tocará mi compañero más adelante.

* Y como La complejidad de una cadena es la longitud de la descripción más breve posible de la cadena en algún lenguaje entonces buscamos un lenguaje de descripción universal fijo, un óptimo. 

3.2 Condición de Aleatoriedad 

La complejidad de Kolmogorov se puede utilizar para evaluar el grado de aleatoriedad de una cadena. Una cadena s se considera más aleatoria si su K(s) es grande, osea, que se necesita una descripción más larga para generarla. y si K(x) es pequeño, entonces se  podría decir o sugerir que s tiene estructuras o patrones que permiten una descripción más corta

* La relación entre aleatoriedad y K(x) se vincula con la imprevisibilidad y la falta de regularidad en una cadena. En términos prácticos, esto significa que una cadena considerada más aleatoria según la función K puede ser menos compresible y, por ende, más difícil de predecir o explicar.

Compresión en la Complejidad de Kolmogorov: 

Para encontrar una descripción óptima de una cadena se logra mediante algoritmos de compresión de cadenas. La complejidad algorítmica de una cadena se aborda mediante el uso de algoritmos de compresión sin pérdida, que transforman una cadena comprimida en dos partes: la versión comprimida y las instrucciones para descomprimirla.

Entre mas compresible se considera menos compleja la cadena. Una K(s) pequeña facilita la compresión, ya que sugiere patrones o estructuras que permiten una descripción más corta.

Por el contrario, si no es compresible, se le considera a la  cadena como aleatoria o maximamente compleja.

* El resultado de un algoritmo de compresi´on es una cota superior de su complejidad algor´ıtmica, por lo que se dice que la complejidad de Kolmogorov es computable por arriba.

* La relación entre aleatoriedad y K(x) se vincula con la imprevisibilidad y la falta de regularidad en una cadena.

La complejidad de Kolmogorov se conecta con la teoría de la información al medir la aleatoriedad. Cuanto más aleatoria es una cadena, más información nueva aporta, y su K(x) refleja cuánta información esencial necesitamos para representar

Es crucial reconocer que la complejidad de Kolmogorov no proporciona una visión completa. Aunque es una herramienta poderosa para medir la esencia y la aleatoriedad en las cadenas, tiene limitaciones específicas.