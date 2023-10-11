# Quantum Computation
- QUiski
	- https://qiskit.org/documentation/getting_started.html

- conferencias: https://unam.us4.list-manage.com/track/click?u=cad43f733f26abdad564c9736&id=5214c35aba&e=749b406abb

- curso-zoom: https://unam.us4.list-manage.com/track/click?u=cad43f733f26abdad564c9736&id=277aeb7437&e=749b406abb

escuelaicm

- QURECA

- Qubit:
	- sistema de dos niveles:	
		- 2 opciones de representación.
		- 2d
		- Bloch Sphere: esferas como la tierra, un polo norte con el 0,y el sur con el 1 pero tambien podremos tener acceso a la superficie.
	- necesitamos una base de espacio para los qubits donde trabajemos que son un conjunto de vectores ortogonales.
		- ortogonales:
			- ortogonormales
				- producto punto  = 0
			- en todo momento, el vector siempre debe tener norma = 1.
- de compuertas logicas a cuanticas:
	- son reversibles
	- pueden interpretarse como una matriz
	- rotaciones
	- examples:
		- identidad
		- not gate-single qubit
			- cambia la direccion del 0 al 1 en la esfera.
		- hadamard gate
			- nos permite acceder a la superposición, al estado 0 genera una combinación de 0's y 1's.
		- CNOT-gate-control note
			- 2 Qubits
			- entrelazadora-forma parte del circuito entralazador
			- 
		- producto interno: recibe 2 matrices y regresa un núm:
			- implica una proyección, cuanto es en x dirección.
				-  se usan en las mediciones proyectivas
		- tensor product
			- operacion que recibe dos matrices y regresa otra matriz, con la dimensión
				- no es la misma a la multiplicación donde se ocupa la conicidencia de matrices.
				- metemos la de la derecha a la izq
			- nos permite trabajar con varios qubits
		- separabilidad del sistema
			- sistema que consta de 
			- si el sistema de ecuaciones tiene solución ent si es separable
			- estado cuantico:
				- contiene toda la info
				- aplicando puertas y operaciones podemos extraer información que nos interese
				
# 2 day
- ket-estado cuantico  | >
	- columna vector
- bra-  < | :  es <  psi |
	- row vector-
	- es un objeto matemtico relacionado con el "ket" :S
	- transpuesto conjugado del vector inicial
	- un "bra" es el adjunto hermítico de un ket. Esto significa que es el conjugado complejo del ket y se representa como un vector fila en lugar de un vector columna. Se denota con el símbolo ⟨ψ|
- bracket <|> return a number
- ketbra | > < |
- medición: 
	- colapso: estado de un Qubit
		- perdemos información, perdiendo las ventajas
		- fisicamente tenemos un sistema que no esta interactuando con nada más, pero cuando realizamos una medición, al interactuar con el sistema grande lo modificamos.
	- projective measurements
		- otro estado cuantico al hacer una projective
		- propiedades
			- idempotent ie their powers p^2 = p^1
		- proyectores ortogonales entre si, syss vienen de la misma base
- estado entrelazador


## LAB
- las compuertas son matrices aplicadas al Qubit
- la identidad nos sirve porque no podemos decir que solo le queremos aplicar una compuerta a un qubit que esta con otro.
- clase Operator
	- para obtener las matrices
- compuertas de dos qutis si necesitan 2 qubits, no debemos preocuparnos por las compuertas de un qubit que van sobre una y otra.
- estados de bell: estados de 2 qubits entrelazados
	- un estado entrelazado no se puede separar.
	- 
	- fase; phi
- simular: programando vectores  y matrices.
	- quiskit: 
		- como ventaja nos deja simular-usando sampler, simula(más complicada que solo random en python) de acuerdo a la proba calculada matematicamente, de 100 0's obtuve 98 y 2 1's.

- https://qiskit.org/learn
- cualquier servicio que con la atención se capitalice

# with comics
quander-lite.s3-website-us-east-1.amazonaws.com

* estado de superposición: que si no abrimos la caja, tenemos dos opciones con 50%
* alpha y beta son la amplitud de probabilidad

* podemos pasar de un edo base o excitado podemos pasar a un estado de superposición a traves de Hadamard
* todas las compuertas son reversibles, 



 Los pastitos del P pa dormir

 brian traicy

# Day 4 

- Un qubit es una onda!
	- tiene más información que un bit
	- las ondas permiten
		- la onda se expresa en sin and cos, ya que estan relacionadas con la amplitud de probabilida
	- Deutshch
		- superposición-multiverso
		- estructura de la realidad
- Correlaciones cuánticas.
	- en la IA tenemos correlaciones
		- datos de entrada
		- Análisis y correlación
			- se enfoca en buscar las correlaciones ya sea del input al ouput
		- Creación del Modelo
	- pero tenemos correlaciones cuánticas
		- coherencia
		- discordia en base a una info
		- entrelazamiento
		- not located- no localidad
	- cuando medimos un sistema cuantico perdemos info(colapso de onda)

- un estado puro puede estar compuesto de subsistemas, no es individual
- info mutua
	- 2 subsistemas no estan separados porque hay un flujo que los conecta

- el cmputo cuantico es reversible?
	- por que la importancia de que el qc sea reversible
	- reversibilidad es biyectividad
	- si puedes  hacer 

- rotar nuestros estados con una Hadamart para obtener la base
- cuantas veces debo de correr el oraculo
- el qubit itera en las 4 dimenciones
- la complejidad clásica es 0(2) y  la del algoritmo de Deutsh O(1).
- entropia:
	- ver como fluye la info en el circuito
	- en el oraculo la info
	- info del sistema mutua = entropia individual menos conjunta
		- la entropia
			- La entropía es una medida de información
				- una forma de cuantificar las correlaciones cuánticas entre sistemas
			- es el vinculo inherente que tienen los qubits?
### lab
- algoritmos cuanticos
- si usamos la superposición podremos acceder a un stack de info
respecto a la imagen.



#
- enredamiento, 
Pero mi punto es que: hay que tener la capacidad de entender de lo que se nos habla, ser resilientes y tener la capacidad de solucionar problemas	

# PERDONAR
“Hay que pagar con la misma moneda” es lo que dicen...
Y por mucho tiempo lo creí.
Te hacen mal, lo devuelves.
Ojo por ojo, diente por diente, es lo adecuado, pensaba.
Pero saben algo?
Ojo por ojo, un día el mundo va a quedar ciego.
Y después de vivir algunos años, noté que el mal que te hacen y uno devuelve, anda por ahí, girando, circulando, lastimando otras personas que nada tienen que ver.
Muchas veces a las personas que más te importan, en un daño colateral que es imposible de detener. 
Porque el mal que uno recibe y decide devolver nunca es el mismo.
Esa porquería siempre crece. 
Crece como el arroyo que se vuelve rio y más tarde se hace mar.
Así que un buen día, decidí que no quería eso en mi conciencia.
Para qué? 
Decidí que el mal que yo recibiera, me lo iba a guardar.
Ese mal que me llegara me lo iba a quedar para mí y lo iba a transformar en letras, para que no ande por ahí jodiendo la vida a nadie más.
Aunque eso significara que de tanto guardar mierda sin dejarla salir, un día explotara.
Pero por lo menos mi conciencia estaría tranquila.
Curiosamente no pasó.
Noté que el mal que uno guarda, si uno lo deja ahí encerrado, pierde su fuerza. 
Se va poniendo cada vez más chiquito, hasta que un buen día, simplemente, ya no está.
Descubrí que tenía ese poder.
Me siento muy especial ahora, porque me consta que no todo el mundo puede hacerlo.
Encontré la forma de cortar ese círculo vicioso que alimenta el mal en mi vida, aunque me costó más de media vida aprenderlo.
A ese poder le puse un nombre.
Lo llamé...
Perdonar.