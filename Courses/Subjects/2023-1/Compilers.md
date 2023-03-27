# Compilers - Lourdes del Carmen González Huesca
* NO SE GRABA-PESADO Y LARGO-Muchas entregas
* Lunes sesion pesada.
* Miercoles para dudas 
* Primera sesión jueves 2 de febrero. 

* Todas las evaluaciones deberán entregarse en equipos de 2 o 3 integrantes sin excepción.
    - 40 % 6 o 7 tareas cada dos semanas a entregarse los jueves
    - 40 % 6 o 7 prácticas cada dos semanas en racket y haskell los viernes
    - 20 % Proyecto Final a entregarse en la primera semana de finales se deja el 19 de mayo y se entrega el 9

## CODE of 08 - Feb

* 2 formas de definir:
    - (define <id> <expr>)
    - (define (<id> <id's>) <expr> +) si ponemos otra expresión en el + siempre devolvera eso.

* #f #t contantes boleanas

* ; (if <expr1> <expr2> <expr3>)

* (cond
    ((> ano 2020) "Ya estoy viejo")
    ((< ano 2020) "Todavía no"))
    (() ()))

* (define (viejo? p)
    (cond
    [(> p 2020) "Ya toy viejo"]
    [(<= p 2020) "No toy viejo"]
    [else "La verdad no"]))
        
(enter! "fstSteps.rkt")

* string? es una cadena?,
* función de orden superior: función que toma como argumento otra función
* lambda (x y)(+ x y), reciben los parámetros y los sustituye
    - ((lambda (x y) (* x y)) 10 10)


- (define (<id> <id's>*) <definiciones>* <expr> +)
    * (define (ejemplo-def np) 
        (define si "Si")   ; expresion definida para despues usar
        (define (mayor-10 n)
            [> n 10])
        (cond
            [(mayor-10 np) si] 
            [else "No"]))


- let: {[<id> <expr>]\*} <expr>+) 
        - el let normal no permite usar las definiciones de las variables definidas entre ellas, necesitas let* para que se pueda.

ejemplo:

(define exp
    (let ([x (random 10)]
           [y (random 100)]
           [yG "Y gano"])
        (cond 
            [(> x y) "X gano"]
            [else yG])))

- se puede cambiar el valor de las definiciones internas: 
    * (set! i (add1 i)) si previamente defini i

- listas:   
    - (list 1 1 2 4) 
    - '(1 2 "hola")
    - (my-map (lambda (x) (+ x 2)) listP)

- Definiones recursivas
    * (define-struct emptyL () #:transparent)
    * (define-struct consL (h t) #:transparent)
- Cazamiento de Patrones sobre la estructura
    - map 
        * (define (my-map f l)
            (match l
            [(emptyL) l]
            [(consL h t) (consL (f h) (my-map f t))]))
        * 
raco test tests/test.rkt
raco pkg install nanopass

## Feb-15 Practice 2

* : para indicar que estamos ocupando las funciones de lex-sre
    - (:+ (char-range #\a #\z))

* :: () () () () -> concatenación de c/ER en los ().

* (lambda (x) (begin (acc1)
                   (a2)
                   (a3)
                   ))

* al principio las palabras reservadas

* el lexeme es el caracter del programa fuente, lo que ocupamos para los patrones
    * input-port=lo que resta quitando la

* (set! var (newV)) para asignar un nuevo var a la var

* Tokenaizer-Lexer: su objetivo es que cada lexema del archivo fuente lo convierte a un token: 
    - Un lexer esta asociado a un AFD(automata finito determinista).
        - **Por lo tanto, un lexema induce un token**
            - lexeme
    - El lexer tratara de hacer match de abajo hacia arriba

    - Tenemos 2 tipos de tokens: if - > IF: son vaciós, 5 -> NUM(5): Contienen un tipo de dato.
        1. vacios :Palabras reservadas
            - definidos en (define-empty-tokens group-id (token-id ...))
        2. contenedores: necesitan referenciar al dato que almacenan
            - definidos en (define-tokens group-id (token-id ...))
            - lo denotado en contenedores se van a crear constructores que recibiran un argumento.

* Las acciones que generan el token pueden hacer uso de la variable lexeme para recuperar el **lexema** que está
disparando la acción

* **input-port** para referirse a la entrada que se está procesando.
    - input-port representa el resto que pasa x procesar, lo que le sigue al lexema, lo que esta delante.
    52

* https://docs.racket-lang.org/parser-tools/Lexers.html


## Mar-1

* Árbol de sintaxis abstracta
    - arbolito de como se parte de expr a la expresion que queremos mediante la gram

* Árbol de sintaxis concreta
    - 

* tokens contenedores, son aquellos que nos interesa guardar el exema al que es instancia de ese token
    - literal dentro un programa de programación, son contenedores
        - NUM, ID, BOL

* cambiar los -- por los comentarios en python

#  pract3:

- ya solo estamos trabajando con puros tokens
    1:05
    - entrada: "1+1"
    - analisis lexico(trabajo del lexer): (NUM 1) ADD (NUM 1)
    - analisis sintactico: (bin-exp '+ (numero 1) (numero 1))
- shift/reduce: el programa que realiza el analisis no sabe en un punto como debemos de proseguir porque dentro de la tabla tenemos 2 que hay un shift o un reduce y por lo tanto el programa no sabe bn como continuar posiblemente generando problemas.
    - Tenemeos una gramatica con recursión x la izq

- list* siempre regresara una lista si el ultimo elemen es una lista 
- list funciona con una expresión solita:

- (id ++) (asignacion $1 (bin-exp ´+ $1 1)) 
# Racket

* Puede cargar modulos o hacer ejecutables, es dinamico, solo hay notación prefijo

* install: sudo apt-get install racket 

* racket:

* drracket: herramienta que nos permite programar en racket
    - long

* raco: gestor de paquetes de racket
    - nos sirve para probar nuestro código

* raco pkg install nanopass

* (enter! "prac2.rkt")


## Mar15

Lo que niegas te somete. Lo que aceptes te transforma, aquello a lo que te resistes persiste

Las mentiras más común es aquella con la que las personas se engañan a si mismas.

Cultiva tu disciplina aplazando tu insatisfacción instantanea
Enriquese un mindseft, en cualquier detalle se bueno
sal constantemente de la zona de confort para progresar a nivel actual

El sabio no busca vivir la vida más prolongada, sino la más intensa

Muerte,  Dejaré de pensar en tí., pero no dejes de pasar a saludar de vez en cuando, me gusta sentirte cerca para recordar que aún quiero vivir un poco más. 

# More Ideas

Es normal caer en los excesos sin apreciar la virtud de la moderación. Los vicios son una falta de respeto a la prudencia. La carencia es una falta de respeto a las necesidades. NO IGNORES LAS MODERACIONES.

El vulgo se deja seducir siempre por la apariencia y el éxito

Diogenes: En un banquete, Si llega a ti algo que va pasado, extiende la mano y sirvete moderamente, si pasa de largo, no lo retengas. Si aún no viene no exhibas tu deseo y espera hasta que llegue a ti. Así con tus hijos, con tu mujer, con los cargos, con la riqueza y algún día serás digno de participar en el banquete digno de los dioses. Pero si no te sirves de lo que te ofrecen, sino que lo desprecias ent no solo participaras del banquete de los dioses sino también de su poder. **Manual de vida.**

**Somos lo que consumimos.**

* Acepta tu vulnerabilidad, se autentico
* Aplica la inteligencia emocional, empatiza con las demas, domina tus sentimientos
* No sigas esterotipos
* busca relaciones profundas.
* acepta el cambio y aprende del fracaso
* sientete tu libre, de verdad, se tu mismo.
    - el mejor guerrero es el educado.

## NO HAY NINGÚN VIENTO FAVORABLE PARA EL QUE NO SABE A QUÉ PUERTO SE DIRIGE.

Parate a pensar realmente a donde quieres ir y que quieres ser, donde quieres estar. Y no únicamente ver lo que estás haciendo en el presente

VOLUMEN CLEAN

NADA ES IMPOSIBLE PARA EL QUE LUCHA, si ENTRENAS TODOS LOD DÍAS!!! si das lo mejor de ti

###  NO te olvides de donde vengas. Ve con la abundancia pero no huyas de la escases
    
    - ve al momento,lugar que crees que te llenara, pero no.
        - presencia total, disfrutar todo, hasta el final. 
        - usar el corazón, dejar de uír, como eres. 
        - sentarse con el vacio, el fondo del vacio es el amor propio.
        - observar y vivir al maximo
    - to do:
        - ESTAR AQUÍ, TODO EL DÍA. 


El punto de partida de todo logro es el deseo. Mantén esto constantemente en tu mente. El deseo débil trae resultados débiles, al igual que un pequeño fuego hace una pequeña cantidad de calor. NAPOLEÓN HILL



* APRENDER RAPIDO
        - Define que quieres y necesitas aprender para mejorar y ser eficaz
        - Deseo intenso x aprender
        - Siempre estudie cuando pueda con musica clasica suave sin palabras
        - repetición del espacio, esporadica
        - toma tiempo-practica como aprender
        - variedad de estimulos que desafien(desarrolen) tu mente,
        - lapso de atención, cuando aprendes más es al inicio y al final del periodo de estudio, reposos para tener más periodos, con ello, más inicios y finales

* CyS
    - Quiero aprender a hacer un ataque x diccionario, ya encontre los puertos
    - 
