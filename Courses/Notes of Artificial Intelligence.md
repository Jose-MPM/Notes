# Artificial Intelligence
## Profesor: Víctor Germán Mijangos de la Cruz

El campo de la Inteligencia Artificial (IA) se enfoca tanto en el estudio como en la
construcción de entidades inteligentes. 

Podemos plantearnos las siguientes preguntas:
- ¿Qué tipo de entidades nos interesan?
- ¿Qué implica que una entidad sea inteligente?

Podemos distinguir los siguientes ámbitos:
- Considerando si se refiere al humano:
    1. Inteligencia en tanto fidelidad al actuar humano: 
        - Pensamiento del humano: Podemos decir que una entidad es inteligente si sabemos su programación es similar a la forma en que pensamos los humanos. Las ciencias cognitivas buscan construir teorías del cerebro humano.
        
        Algunos pasos que se pueden seguir son:
        - IntrospeccYa queión
        - Experimentación psicológica
        - Imágenes cerebrales

    2. Inteligencia en tanto “llegar a un buen fin” o racionalidad:
        - Pensamiento racional: Una entidad es inteligente si su pensamiento es el adecuado para llegar a la solución de un problema. Necesitamos de un pensamiento lógico que nos lleve a tomar las decisiones adecuadas.

- Considerando el punto de referencia:
    1. Inteligencia como atributo interno, como procesos de pensamiento y razonamiento.
    2. Inteligencia como atributo externo, comportamiento.

## Day 2
### Enfoques:

        -  | Interno | Exterior|
____ 
    Humano | Cognición | Racional|
___
    Racional| 
___
* Comportamiento Racional:
    - Agente: Algo que actua, a partir de su ambiente percibido y adaptandose.
        - Agente racional: Actuar de una forma óptima para obtener el mejor resultado esperado.
* Modelo Estándar: Agentes racionales que solucionen tareas de manera adecuada,
    - Las inferencias correctas son parte de sus mecanismos.
    - Adaptable a perspectivas científicas, usa formalismos matemáticos para representarlos.

* History of the AI:
    - Maquinas pensantes: Resolver problemas a partir de la lógica. _La inteligencia se asocia al pensamiento lógico_.

    - Tesis de Turing:
        > Para culquier sistema forma determinista, existe una MT formalmente equivalente.
    - **Bar-Hillel**:
        > Cualquier sistema capaz de hacer una traducción auténtica y precisa debe saber lo que sabe la gente y debe aplicar ese conocimiento de forma sensata. 
    - Métodos débiles: mecanismos con próposito general que usan pasos de razonamiento elemental para encontrar soluciones completas.[dominio específico]

    - Micromundos: Donde interactua nuestro agente, un entorno delimitado[dominio específico].
    - Sistemas expertos: limitar la actuación de la máquina a un dominio específico buscando que se comporte como un humano experto.
    - En los últimos años todo está en redes neuronales[Deep Learning]

## Monday August 22

* Agente: Entidad que tiene sensores que le ayudan a percibir el ambiente a traves de sensores
    
    - Secuencia de percepciones = historia completa de lo percibido por el agente hasta el momento actual.

    - Una **acción** depende del conocimiento que tenemos a partir de su secuencia de percepciones, *actuar* a partir de percepciones pasadas[experiencia].
        - Entre más experiencia podremos tomar una mejor decisión

    - **Función de agente:** Mapeo utilizado para pasar de la cadena de percepciones hacia las acciones. La función mapea las percepciones de las acciones:
        - input: secuencia de persepciones
        - output: acción
    Esta determinara el comportamiento de nuestro agente. (Aún tenemos limitaciones, por el determinismo)

* Racionalidad y agentes racionales:
    - Agente que realiza acciones óptimas con base en su experiencia.
        + Óptimo: El consecualismo señala que podemos evaluar el comportamiento de un agente a partir de sus consecuencias necesitando así poder medir el rendimiento:
            * Es decir, necesitamos medir nuestro rendimiento[es decir, nuestras consecuencias]
                - > Regla general: _es mejor medir la utilidad de acuerdo con lo que se quiere en el entorno, más de acuerdo con cómo se cree que el agente debe comportarse.
                - Medida de rendimiento:

    - Racionalidad: 
        1. Medida de rendimiento que define el criterio de éxito.
        2. Conocimiento previo acerca del ambiente[entorno].
        3. Acciones que se pueden realizar
        4. Secuencia de percepciones[experiencia, memoria]
    Buscando una mejora con el tiempo. 
    
    - Agente racional: Agente que selecciona la _acción_ que maximice la _medida de rendimiento_ a partir de la _experiencia_(secuencia de percepciones) y su _conocimiento previo_ a cerca del ambiente.

    - Agente omniciente: Agente que conoce  el resultado de sus acciones y puede actuar de acuerdo a esto.

    - Tipos de agente:
        1. Agente activo: Todo depende del estado actual, ya que es lo único que ve: _el entorno actual_ y a partir de ahí decide como actúa.
        2. Adente dividido por tabla: Es capaz de usar memoria

    - Racionalidad busca maximizar el rendimiento **esperado**
    - La perfección maximiza el redimiento **real**.
        + Racionalidad != Omniciencia[Dios]

## Assitant Tuesday August 23

- IA: Simular el comportamiento humano. Acciones aútonomas aunque no aprenda.
- ML: La maquina aprende, a traves de la experiencia.
- DL: Aprendizaje utilizando redes neuronales.

Un agente dentro de un determinado entorno necesita de sensores para percibir las persepciones de su entorno y de un actuador[capacidad del agente para definir x acción] que nos permite hacer acciones en nuestro entorno[modificandolo], el agente tiene una metrica de evaluación y a partir de esa evaluación tenemos una respuesta[acción] (función de transición)

## Class Wednesday August 24

* Naturaleza de los ambientes:
    - Entorno de trabajo: es especificado por la medida de rendimiento, el ambiente, así como los actuadores y los sensores del agente.
    
    - En el diseño del agente implica diseñar los elementos del entorno de trabajo:
        + Medidas de rendimiento
        + Entorno
        + Actuadores
        + Sensores
    
    - Entornos observables:
        + Entorno completamente observable:
            * El entorno es así si los sensores del agente tiene acceso a la información total de un estado del ambiente en x tiempo.
            * Toda la información **de todo el entorno** en un estado del ambiente
        + Entorno parcialmente observable: 
            + información parcial del ambiente
                * Manejo automatico de autos
        + Efectivamente totalmente observable:
            - **Todo desde la perspectiva del agente-**
            - Aparte de toda la info, tenemos la suficiente información para saber que acción realizar **la adecuada**.
            -  Si el agente detecta los aspectos relevantes para realizar una acción.
            (Si supieramos como se mueven los fantasmas podríamos decir que siempre nos movemos efectivamente.)
        + No obsevable: Si el agente no tiene sensores, el entorno es no observable.
    
    - El entorno determina si hablamos de un agente individual o multiagentes, depende de las acciones que quieramos realizar.
        + Individual: Un solo agente.
        + Multiagente: Dos o más agentes que se afecten entre sí.
            1. Competitivo: Maximizar el rendimiento de un agente implica que se minimiza el rendimiento de otros agentes.
                - Ajedrez
            2. Cooperativo: Las acciones de cada agente se orientan a maximizar el rendimiento de todos los agentes
                - Auto sin conductor
    - Entorno Determinista:
        - El estado está determinado completamente por las acciones del agente y de su estado previo(Si existen aspectos no observables, entonces es preferible tratar el entorno como estocástico)
        - Entorno Estocástico(No-Determinista):
            // Una acción puede llevar a más de un resultado
            - El estado puede cambiar no necesariamente por una acción del agente.
        - Entorno Estratégico:
            - Las acciones son deterministas pero siempre habrán resultados de otros agentes. Hay acciones de otros agentes que pueden modificar el edo del entorno.
            El entorno puede cambiar a pesar de mi si hay otros agentes.
    - Secuencia:
        - Entorno Episodico:
            - Episodios independecias entre si, entre que va a pasar en un episodio y otro, en cada uno de los cuales el agente reciba una persepción y ejecuta una acción en base en ésta.
                * Las acciones son independientes entre si. No hay correlación entre sí.
        - Entorno secuenciales:
            - La desición actual puede afectar a las futuras decisiones del agente, acciones influyentes entre si.
    - Dinamica **=!** 
        - Entorno estático: No cambia cuando el agente delibera
        - Entorno dinámico: Cambia independientemente del agente
        - Semidinámico: Cambia nuestra capacidad de reaccionar del agente y cambia el entorno
    - Discreto: estados, percepciones, y acciones finitas 
    - Continuo: Entorno cambiante, cuando es dificil definir estados entre acciones, cuando no es posible enumerar los estados no se si está bi
    [Es continuo porque siempre tenemos una desición diferente.]
        - Conocido: resultados de las acciones conocidos de antemano. [Se sabe el accionar],
        - Desconocido: No hay certeza de como se comporta el entorno, no se conocen los resultados de las acciones, cuando el agente no sabe como va a acabar.
            + Detección de spam.
    - En el modelo de lo que quieres, todo es a su conveniencia
    

## Class Monday 29 August

* El problema de un agente dirigido mediante tabla es el número de búsquedas que debe hacer en la tabla; Entorno: Completamente observable, determinista, estático, discreto. Tiene memoría peroe s

* _Agente reactivo simple_. Ignora la historia de percepciones, los agentes contienen reglas de _condición-acción_. Entorno episodico y no guarda nada, ninguna percepción, solo devuelve el estado

* _Agente reactivo basado en modelos._ es un agente que se basa en un modelo del mundo determinado por nosotros
    - Modelo de transición, actuadores: modelar las acciones/decisiones
    - Modelo de sensor: Como percibe el agente al mundo, a partir de los sensores vemos como es el mundo en ese momento.

* _Agente basado en objetivo_: Cuenta con información acerca de un objetivo. 

* _Agente basado en utilidad_: indica cúales son preferibles al comparar los resultados, busca maximizar el valor esperado de esta función.

* Agente por aprendizaje: _Que aprende_: Se aprende cuando una agente que opera sobre un entorno desconocido mejora su rendimiento a partir de observar resultados previos de sus acciones y evaluarlos.

## Class Wednesday 31 August

- Utilitarismo

- Agentes para resolver problemas:
    + Agente basado en objetivo que realiza una planeación para cumplir con los objetivos dados.
    + Para solucionar los problemas el agente se basan en la _búsqueda_.
        1. Busqueda Informada: El agente puede estimar que tan lejos se encuentra del objetivo.
        2. BUsqueda Desinformada: No es capaz de estimar su distancia del objetivo, no tenemos información precisa relacionada con el objetivo.
            
            > Si estamos fallando en planear, estamos planeando fallar.

- Para resolver el problema necesitamos definir(la planeación):
    - Formulación del objetivo: Determinar estado objetivos.
    - Formulación del problema: Descripción de estados y las acciones para alcanzar un objetivo(abstracción del mundo).
    - Búsqueda: Simula la secuencia de acciones que lleven al objetivo, elegiendo la más óptima de acuerdo a una función que decidamos.
    - Ejecución: 

- About example:
    * Las acciones mueven nuestro agente entre los estados.
        + Y las acciones del agente por edo también? 
- Sistema de ciclos:
    1. Sistema de ciclos abiertos(Open loop): Una vez que el agente ha encotrado la solución, la ejecuta ignorando las persepciones mientras lo hace.[No deja de percibir, solo las ignora.].
    2. Sistema de ciclos cerrado(Closed loop): Son aquellas en el que el agente ejecuta la solución, pero mientras lo hace moritorea las percepciones que recibe. [Podemos incorporarlas].

- Problema de búsqueda formalizado: 6-tupla = Aútomata.
    + S=s1...sn, conjunto de estados
    + S_o in S, edo inicial
    + F subconjunto S, edos finales
    + A = a1...an, conjunto de acciones
    + T: SxA -> S, modelo de transición.
    + c: función de costo

- Soluciones:
    + Camino: Secuencia de acciones.
    + Solución: Camino que te lleva a la solución, i.e. termina en un objetivo.
    + Solución óptima: Solución que minimiza la función de costo sobre el camino. 

### Class Thursday September 1

* _Agente reactivo basado en modelos._ es un agente que se basa en un modelo del mundo determinado por nosotros
    - Modelo de transición, actuadores: modelar las acciones/decisiones
    - Modelo de sensor: Como percibe el agente al mundo, a partir de los sensores vemos como es el mundo en ese momento.

El entorno va cambiando el entorno ddl agente.

* Agente basado en objetivos: 
Estado --> Cómo es el mundo ahora? **-->** Estado
Dentro de sus actuadores puede cambiar el estado 

### Class Friday September 2
* No buscamos el mínimo, si no el argumento que mínimiza la función. 
    - arg min  $x^2 + 1=1

* Algoritmo de búsqueda:
    - Problema de búsqueda -> Alg de búsqueda -> Solución

* Árbol de búsqueda: describe los caminos entre un estado inicial y el objetivo.
    - Edo inicial = raiz
    - Edo final = hoja
    - Expanción de Nodo: teniendo un nodo se dice expansión del nodo si podemos cambiar de estado a travez de la función de transcición.
    - Frontera: estados dados que no se ha expandido.
        + Siempre tenemos que revisar la frontera para ver que podemos hacer, ver cual nos conviene seguir expandir, "elegir estrategia"
        + La frontera  es una pila que guarda información de los nodos obtenidos.
            - Pila de prioridad: El tope de la pila es el elem con menor valor de acuerdo a una función de costo
            - FIFO(First-in-First Out) EL tope de la cola es el primero
            - LIFO(Last-in-First Out) EL último en entrar en la cola es el primero
            - Operaciones:
                - pop = expandir nuestro nodo
    - Algoritmo Best-First Search, busca encontrar el camino más adecuado.
        - Ocupa hacer pop al estado menos costoso y expandir ese nodo.
        - FIFO

### Class 07 Sep

* Busqueda desinformada
    - si no contamos con información de la cercanía de este estado con la meta
    - para revisar si un nodo es una meta:
        - Early Goal Test: checar si el nodo es una meta antes de expandir
        - Late Goal Test: checamos el nodo despues de eliminaf de la pila|


### Class 09 Sep
* busqueda desinformada
    EARLY: revisa antes de expandir
    Late: despues

* Breadth-FIst: algoritmo de busca desinformada, expande todos sus hijos, no toma la función de costo,frontera: pila FIFO, el primero que entre es el que sale, en un nodo de profundidad d, se han revisado los d-1 niveles.

* Dijkstra: Pila de prioridad dado por la función del costo, no podemos usarlo si no tenemos una función de costo, porque sino sería un fuerza bruta

*  Depth-First: No toma en cuenta el costo, expande primero el nodo de mayor prioridad
    - implementacion tipo árbol, no guarda una tabla de los nodos alcanzados
    - Best-First Search con función negativa(LIFO)
    - devuelve la primera solución que encuentra, no la óptima
    - solo es completo cuando tengamos una estructura de árbol, en ciclos muere, no podemos garantizar que converga.
    - Ejemplo: 15 A
        - no guarda lo que vamos alcanzando
        - abre todos los hijos de un lado

* Depth-Limited Search: es  un tipo Depth First limitando la profundidad mayor a cierta profundidad
    - (25) fuerza bruta limitada, tope de hasta donde vas a expandir
    - 30 code
    - Problema: no encontrar una solución cuando se encuentra más alla de la profundidad escogida.
        - la solución está en encontrar el diametro, pero eso puede ser imposible calcularlo

* Iterative Deepening Search[40] (mejor versión de profundidad)
    - Corta en la solución exacta, ya que no necesita explorar profundidades de más
    - Completo: porque podra encontrar la solución aunque se tarde mucho

### Class 12 Sep
* Bidirectional Search: Buscar de manera simultánea en forma de avance(desde el inicio al final) y de forma de retroceso.
    + Ejemplo:25
+ Algoritmos de búsqueda desinformada.
    - 
+ Busqueda informada (heurística): se basa en la integración de una función heurística:
    - Función heurística: 


    + Greedy Best-First Search:
        - expande en el primer lugar el nodo n con el valor h(n) más pequeño, es decir: f(n)=h(n).
        - ambicioso por llegar rápido sin tomar en cuenta los costos.
    + Busqueda A* : expande el nodo, n que minimiza la función f(n)=g(n)+h(n) donde g es el costo desde el edo init al nodo n, y h es una función heurística al costo del nodo n hacia un edo f.

    Completo: podemos garantizar que podemos llegar del edo inicial al final sin bucles.
    
### Assistant 13 Sep
algorithm DF: lo más profundo hasta encontrar la solucion
note of A*, plantilla, get_path*
En el 4 las acciones las puedes definir tu [arriba y abajo]

# Lab

* Qué significa para ti éxito? De acuerdo a eso debes de checar como serán tus recompensas. Procurar la recompensa acumulada[generada?]

* Poliza: 
    - Entrenar, nos quedamos con los mejores agentes, usas su historia para obtener una póliza, una vez hecho volvemos a entrenar pero con la poliza basada 
    - Para seguir explorarando pero teniendo una poliza suboptima.
    - Variables primitivas *X*, variable que quieres predecir *Y*.
* Entrenar, recopilar datos, quedarnos con los mejores datos y luego pasarle un modelo de machine learning.

* Cuando tienes problemas de clasificación
    - Presición: De todas las personas que la prieba dijo que tenían covid, ¿Cúantas realmente lo tenian?
    - De todas las personas que tenian covid realmente cuantas el modelo identifico.
        Cuando tenemos muchas sensibilidades también cometeras herrores de personas que tu dijiste que tenías pero no tenían. 

* Las recompensas inmediata no siempre suele ser lo mejor.

### aumento de calidad de video
Para aumentar la calidad del video debemos aumentar el número de pixeles, cada video esta dado por imagenes

Aumentar la resolución: 700p -> 1080p

- Observable:
- Agente:
- Determinista:
- Episódico:
- Estático:
- Discreto: 

------
## Expressions of gratitude 🎁
* :punch: Share and tell others about this notes 📢
* :+1: Contact and follow me :bowtie:
------
⌨️ with much :purple_heart: by [Jose-MPM](https://github.com/Jose-MPM) 😊⌨️