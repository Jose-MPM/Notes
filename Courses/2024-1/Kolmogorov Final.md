La complejidad en tiempo fue un concepto ampliamente estudiado a lo largo del semestre, nos dimos cuenta que esta rama se enfoca en la eficiencia de los algoritmos en términos del tiempo necesario para resolver x problema. Esto es claro porque que abordamos algunas clases de complejidad como : P,NP, coNP.
	* Problemas en la clase P son resolubles eficientemente en tiempo polinómico, mientras que los problemas NP son aquellos para los cuales se puede verificar en tiempo polinómico si una solución dada es correcta. La clase coNP refiere a problemas cuyas soluciones pueden ser verificadas en tiempo polinómico si son incorrectas.

En la complejidad de Kolmogorov se aborda la complejidad desde una perspectiva única. Mientras que en la complejidad en tiempo se evalúa la eficiencia de los algoritmos, acá en Kolmogorov se centra en la longitud mínima de la descripción de un obj, podemos verla como la medida de cuánto se puede comprimir la información de un objeto mantiendo su esencia.

Ambas complejidades comparten fundamentos comunes al utilizar esquemas de codificación y máquinas de Turing U, aunque difieren en sus objetivos finales.

En la complejidad en tiempo, los problemas se definen mediante una codificación eficiente de sus instancias (por ejemplo, representando un grafo como una cadena) mientras que en Kolmogorov, tambien se trabaja con esquemas de codificación, pero el enfoque se desplaza hacia la longitud mínima de la descripción que genera el objeto.

Ambas complejidades utilizan máquinas de Turing como la base formal para conceptualizar el cómputo y resolver problemas. En la complejidad en tiempo, el análisis se centra en cuánto tiempo le tomaría a una máquina de Turing estándar resolver un problema en función de la entrada dada. En  Kolmogorov, nos interesa cuánto puede ser comprimida la descripción del objeto por una máquina de Turing que puede generar dicho objeto.

Estas similitudes fundamentales resaltan cómo ambas disciplinas comparten una base conceptual. Aunque se diferencian en sus objetivos finales
	* la utilización de esquemas de codificación y máquinas de Turing en la formalización subraya la conexión profunda entre la complejidad en tiempo y la complejidad de Kolmogorov

Un Ejemplo Comparativo: puede ser el problema de ordenar una lista. un algoritmo de ordenación eficiente como Merge Sort es preferible en términos de complejidad en tiempo pero en la complejidad de Kolmogorov podría destacar un programa más corto para describir una lista ya ordenada. Aquí podemos ver cómo la complejidad de Kolmogorov ofrece una perspectiva diferente al evaluar los recursos computacionales necesarios.

Podemos tener un problema en NP-complete, pero la descripción de instancias específicas puede ser sorprendentemente concisa, indicando una baja complejidad de Kolmogorov.

entre los conceptos imporantes
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
