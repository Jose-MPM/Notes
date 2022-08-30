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
    Angel
    - Entorno de trabajo: es especificado por la medida de rendimienot, el ambiente, así como los actuadores y los sensores del agente.
    
    - En el diseño del agente implica diseñar los elementos del entorno de trabajo:
        + Medidas de rendimiento
        + Entorno
        + Actuadores
        + Sensores
    
    - Entornos observables:
        + Entorno completamente observable:
            * El entorno es así si los sensores del agente tiene acceso a la información total de un estado del ambiente en x tiempo.
        + Entorno parcialmente observable: 
            + información parcial del ambiente
                * Manejo automatico de autos
        + Efectivamente totalmente observable:
            **Todo desde la perspectiva del agente-**
            + Si el agente detecta los aspectos relevantes para realizar una acción.
            (Si supieramos como se mueven los fantasmas podríamos decir que siempre nos movemos efectivamente.)

        + No obsevable: Si el agente no tiene sensores, el entorno es no observable.
    
    - El entorno determina si hablamos de un agente individual o multiagentes.
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

* _Agente reactivo basado en modelos._ es un agente que se basa en un modelo del mundo determinado p
    - Modelo de transición: modelar
    - Modelo de sensor: Como percibe el agente al mundo

* _Agente basado en objetivo_: Cuenta con información acerca de un objetivo. 

* _Agente basado en utilidad_: indica cúales son preferibles al comparar los resultados, busca maximizar el valor esperado de esta función.

* Agente por aprendizaje: _Que aprende_: Se aprende cuando una agente que opera sobre un entorno desconocido mejora su rendimiento a partir de observar resultados previos de sus acciones y evaluarlos.

## Lab

* Qué significa para ti éxito? De acuerdo a eso debes de checar como serán tus recompensas. Procurar la recompensa acumulada[generada?]

* Poliza: 
    - Entrenar, nos quedamos con los mejores agentes, usas su historia para obtener una póliza, una vez hecho volvemos a entrenar pero con la poliza basada 

    since 1:00 1:26

* Las recompensas inmediata no siempre suele ser lo mejor.

------
## Expressions of gratitude 🎁
* Share and tell others about this notes 📢
------
⌨️ con ❤️ por [Jose-MPM](https://github.com/Jose-MPM) 😊⌨️