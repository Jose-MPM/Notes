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
        2. Conocimiento previo acerca del ambiente
        3. Acciones que se pueden realizar
        4. Secuencia de percepciones[experiencia]
        Buscando una mejora con el tiempo. 
    
    - Agente racional: Agente que selecciona la _acción_ que maximice la _medida de rendimiento_ a partir de la _experiencia_(secuencia de percepciones) y su _conocimiento previo_ a cerca del ambiente.

    - Agente omniciente: Agente que conoce  el resultado de sus acciones y puede actuar de acuerdo a esto.

    - Racionalidad busca maximizar el rendimiento **esperado**
    - La perfección maximiza el redimiento **real**.
        + Racionalidad != Omniciencia[Dios]


------
## Expressions of gratitude 🎁
* Share and tell others about this notes 📢
------
⌨️ con ❤️ por [Jose-MPM](https://github.com/Jose-MPM) 😊⌨️