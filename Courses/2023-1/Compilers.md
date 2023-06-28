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

EXE3: del libro del dragón, depende de la edición puede cambiar la página. Está en el capítulo 6, sección 4.


* Análisis Léxico: 
* Análisis semántico: donde checamos el contexto y determinamos los tipos y la correctud de un programa.
    - Se incluye información significativa en el árbol obtenida de la fase anterior
        - atributos de los tokens
        - valores que no son libres de contexto
* Front-End: ultima fase del compilador que verificará la correción del programa más alla de la forma, a nivel semántico

* Un lenguaje de programación se define mediante:
    - Reglas sintácticas, mediante gramáticas libres de contexto
        - simbolos y reglas de estos
    - Reglas semánticas:
        - estaticas: propiedades de los programas que serán verificadas en tiempo de compilación.
        - dinámicas: describen como se ejecutará el programa
    - El “significado real” de un programa se estudia a través la semántica denotacional que permite asociar un objeto matemático a cada construcción sintáctica del lenguaje a través de funciones semánticas que describen el efecto de ejecutar dicha construcción.
- Los resultados de la fase del análisis dependiente del contexto constan de
    1. anotar el árbol sintáctico con atributos, por ejemplo al usar apuntadores a identificadores en la tabla de símbolos;
    2. recorrer el árbol para generar una representación intermedia alternativa que describa el control de flujo del programa.

- Una gramática con atributos es un complemento a una gramática
libre de contexto al anotar las producciones con atributos.
    - Estas gramáticas no especifican el significado del programa sólo ayudan a asociarlo con valores que explican su significado o asociar valores que serán útiles en las siguientes fases de compilación.

# código de 3 direcciónes 

# los diagramas de flujo

lexer y parser agregar lo del for
despues traducir los fors a whiles
2. antes de realizar la verificación de tipos debes de agregar los primeros

3 y 4

7- 5:00



Este código es una implementación de un traductor o compilador que transforma código en un lenguaje personalizado (denotado como "jelly" en este script) a un lenguaje intermedio utilizando el marco de trabajo nanopass, en el cual cada paso de la transformación es pequeño y fácil de entender y razonar sobre él.

El código está escrito en Racket, un dialecto de Lisp, y utiliza la extensión Nanopass para definir cada paso en la transformación de código fuente a un árbol de sintaxis abstracta (ASA o AST en inglés).

El script está compuesto de varias partes:

Definición de la gramática del lenguaje origen en términos de nanopass. Esto está representado por la declaración define-language.
Definición de la función que transforma la estructura del lenguaje origen a una estructura intermedia. Esto está representado por la función (->nanopass e).
Funciones de ayuda para verificar el tipo de ciertos elementos de la gramática (constante? c), (id? i), (tipo? t), (operador? op), (my-boolean? c).
Parseo y transformación del código fuente utilizando la gramática definida y la función de transformación, y la representación de estos datos en la forma deseada.
El script podría llamarse "compilador_nanopass_jelly" para describir de manera efectiva su propósito y funcionalidad. Esto destaca el uso del marco de trabajo nanopass para la compilación y el lenguaje origen "jelly" que se está traduciendo.






El código presentado está en Racket, un lenguaje de programación funcional de la familia Lisp. Aquí se usa la biblioteca nanopass para implementar un compilador de pases múltiples que realiza análisis y transformaciones en el lenguaje intermedio Jelly.

El archivo renombrado.rkt es el que realiza el renombramiento de las variables en un programa. Para ello:

Define una función nueva-variable que crea una nueva variable con un nombre único cada vez que se llama.
Define una función asignar-variables que crea un mapeo de un conjunto de variables a un conjunto de nuevas variables.
Define un conjunto de pases de compilación para renombrar las variables en un programa.
La parte principal de este archivo es el pase de compilación rename-var, que renombra las variables en cada parte de un programa Jelly. Para ello, utiliza funciones definidas en el archivo variables.rkt para recoger todas las variables en cada parte del programa.

El archivo variables.rkt es responsable de recoger todas las variables en un programa Jelly. Para cada parte del programa, define una función (como vars-programa, vars-main, vars-cuerpo, vars-func, vars-met, vars-sent, vars-decla, y vars-expr) que recoge todas las variables en esa parte del programa.

En resumen, el código presentado realiza un análisis y transformación del lenguaje intermedio Jelly, renombrando todas las variables en un programa a variables únicas. Esto puede ser útil en un compilador para facilitar la optimización y el análisis de alias, entre otras cosas.





