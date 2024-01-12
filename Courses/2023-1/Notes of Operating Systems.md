# Notes of Operating Systems

## Lab

En C solo hay funciones.
- Todo esta en funciones, no hay garbage colector.
- Un arreglo es un apuntador a la primera dirección del elemento del arreglo. 
- Cuando pasamos un arreglo no lo pasamos todo, solo una parte, la dirección
- Numero de bytes que tiene el apuntador, movernos entre regferencias: si fuera otro tipo de dato, y sumamos 2, se suman dos veces la cantidad de bytes de ese tipo
- *array_head = array_head[0]
- gcc hello_world.c -o new_name 
- new_name

- Heap: La memoria en el heap es que no se borra, donde se guardan los objetos 
    - En java toda la memoria se asigna dentro del heap.(Todo lo que se ahga con new)
    - La memoria asignada en el heap por una función aunque termine la función no se borra.
- Stack[pila]: se ocupa para la ejecución, Todo lo que sea una variable local de algún método o función se queda en el stack
    - LLamadas a métodos de un programa, método main
        - Si yo ya termíné le devuelvo el control a lo que sigue y si la función que termina entonces se pierde la memoria. 
            - Se invalida porque potencialmente se ocupara la memoria para ejecutar otra función. 

## Pintos
- Sep13:
    + Cuando no hay nadie en ejecución, el idle se encarga 
    + Sacamos los stick de cada proceso
    * En la listas de pintos, dentro del elemento que quieres inser metemos el nodo, para evitar manejar memoria
    + timer_interrrupt se ejecuta cada segundo
    si queremos inicializar algo es mejor hacerlo en el init del archivo
    static para que no salga de este archivo
    backtrace build/kernel.o pila
    interrupt.c interrupciones en pintos
    * timer_sleep, dormir el thread que la invoco, sigue en ejecución, se vuelve a formar, se queda esperando utilizando recursos
    * thread: no se forma como proceso y pone a ejecutar otro
    * thread yield: se forma como proceso a ajecutar, y pone a ejecutar otro.
    * thread create: crea un nuevo proceso, aparta un bloque de 4k la memoria que utiliza para almacenar el struct thread y el stack, al final lo desbloque(create unblock()).

    * run_actions en init.c
        - se ejecuta en modo kernel y lo primero que hacemos es ejecutar unas pruebas
        - thread_create crea procesos
    * timer_sleep: hacer que el timer interrumpa los procesos
        -  
    * Comandos:
        - make build/thread/alarm-single.result
        - make build/tests/thread/alarm-single.result PARA REVISAR LAS PRUEBAS

- Priority Scheduling:
    + Scheduler(Calendarizador):
        - Administra el tiempo que un hilo utiliza el procesador
        - Administra el uso de CPU
        - Ser capaz:
            1. Cambiar un hilo de ejecución por otro.
                - Cambiar hilo = el hilo que tiene el control del procesador debe cederlo y colocar otro hilo en su lugar.
                    + el cambio sucede de dos maneras: Cambio/cede voluntariamente o Tiempo asignado en procesador terminado.
                        - **thread_yield** inicia el proceso de cambio de hilo, realiza el cambio de hilo
                - Cambio de contexto: guardar el estado del proceso actual y restablecer el el estado de otro proceso diferente
                    + Contexto: Valor de los registros del procesador cuando el hilo está en ejecución.
                        - Por lo que el cambio de contexto equivale a guardar los valores del registro actuar y reemplazarlos por los registros del sig hilo a ejecutar.
                            + En Pintos switch_threads se encarga de eso(del cambio de contexto).
            2. Decidir en que momento debe ocurrir el cambio de hilos.
            3. Determinar el sig hilo a ser ejecutado.
        - 2 tipos de calendarizadores:
            1. Nonpreemptive: una vez seleccionado un proceso para ejecutar lo dejamos hasta que se bloquee o voluntariamente ceda el procesador.
            2. Preemptive: seleccionamos un proceso para ejecutar y lo deja en ejecución por un tiempo fijo, si el proceso no termina en ese tiempo, se suspende y se selecciona otro proceso para ser ejecutado.
                - Permiten quitar un proceso cuando es necesario
                - Son más flexibles, permiten implementar sistemas donde requerimos tiepo de respuesta alto pero debe de ejecutarse de forma periodica
                - Timer para generar interrupciones por hardware
                    + Interrupción por hardware = señal que un dispositivo envía para detener un procesador y llamar al so para que atienda la interrupcion a traves del interruption handler
    
    + Algoritmos de calendarización: Criterio para elegir el sig hilo de ejecución, es necesario saber sobre donde utilizaremos el so.
        - Calendarizador FIFO: First in First out, el primer hilo en entrar será el primero en ejecutar, es facil de implementar pero sin embargo no puede ser muy bueno, por el tiempo de espera cuando pueden llegar a haber muchos procesos en ejecución, ya que no tenemos forma de priorizar/categorizar procesos, no hay forma de tener procesos más importarntes que otros.
            - Round Robin: caracteristica de selección en un conjunto que garantiza que todos los elementos serán seleccionados al menos una vez antes de dar la vuelta.

        - Calendarizador de prioridades: Each process have one priority, ejecutando primero los procesos con mayor prioridad.
            + _priority_ in *struct thread*.
            + 2 tipos de prioridades: _internas o externas_.
                1. Las definidas internamente utilizan medidas para calcular la prioridad.
                2. Las definidas externamente son asignadas por criterios externos al so.

        - Prioridades con derecho preferente(preemtive) o no (non preempive):
            + con derecho preferente: un hilo de la más alta prioridad siempre debe estar en ejecución(siempre que dicho hilo este listo para ejecución).

    + In Pintos
        - ready_list = hilos del sistema listos para ejecutarse
            - cuando un hilo no esta en esta lista lo consideramos bloqueado, solo con meterlo lo activamos
                - Pintos utiliza las funciones _thread_block_ y _thread_unblock_ para meter y sacar hilos de la ready_list:
        - all_list = todos los hilos de ejecución del sistema; bloqueados o listos para ejecutarse
        - thread_ticks guarda el número de ticks del hilo actual desde que éste está en ejecución
        - TIME_SLICE es una constante, el número de ticks que debe ocurrir entre cada cambio de hilo.
        - La función intr_yield_on_return la cual asigna a la variable yield_on_return el valor true.
        - thread_tick: lleva la cuenta de los ticks
        - thread_yieldcede el procesador
        - intr_yield_on_return: si esta agendada un yield invoca ese yild
            - Al finalizar la interrupcion cede el procesador
        - el objetivo _switch_thread_ es cambiar los procesos, ceder el procesador
            - el PCB ya esta en la memoria
        - timer invoca cada x tiempo thread_tick
### more info

- apuntadores: 
int value = 3 
int* pointer_to_value = &value

* Estructuras:  
    - si yo tengo algo de tipo estructura, trabajamos con el objeto, no con un apuntador.
    - &head -> estas pasando la dirección hacia donde se encuentra
- Diferencia entre paso por referencia[pasas la dirreción hacia un nodo y lo vuelves a obtener como objeto para modificarlo]

* Podemos tener dos variables con el mismo nombre, tener una var global declarada en la clase no impide tener una var local que se llame en la misma manera (en el scope normal). 
    - para marcar que una var es priv usamos *static* -> 
    - si queremos acceder a la global en lugar a la de scope y ocupamos un método para que podamos acceder.

## Classes

* August 23 Tuesday

    - la condición while(str) Para iterar sobre un arreglo de cadenas, el último término que mencionaste hace rato \0 también es interpretado como 0

    - Se utiliza un byte(8 bits) para guardar un carácter.

    - Varibales global: [global_var]
        - *static int priv_var* utilizando static podemos hacer una variable privada
        - Si tenemos una variable global no impide tener una variable local, y podemos acceder a esta variable a traves de funciones.
    - PCB: dónde se guardaban las variables globales 
    - Unic of C:
        - Directivas del procesador
            - EL preprocesador literal pre procesa, es más general, no tenemos que preocuparnos por los tipos, cuando encuentra la etiqueta en lugar de ir hasta la referencia(antes de llamar la función) pone lo definido. [antes de compilar hace todo el proceso de preprocesamiento(sistitución textual pero no resuelve)]
            - #define SUM(x,y) ((x)+(y))
                
            - #define LIMIT 5
            - ggh -E file_name.c 
    - bss:
        * one global variable in the program is stored in bss.
        * static variable which is also stored in bss.
    - variable estatica static variable which will then be stored in the Data Segment (DS)
        ```c
        #include <stdio.h>
        
        int global; /* Uninitialized variable stored in bss*/
        
        int main(void)
        {
            static int i = 100; /* Initialized static variable stored in DS*/
            return 0;
        }
        ```
    - https://www.geeksforgeeks.org/memory-layout-of-c-program/

* August 25 Thursday
- Temas:
        + _malloc_: Es la forma de pedir memoria en el heap, 
            - Cuando queremos que un valor que creamos persista despues de que termine la función debemos hacerlo en el heap
        cuando tenemos: struct list_node list
        + assert() si esa validacion no pasa entonces el codigo para
        + &object nos devuelve el valor que esta en la dirección.
        + static significa que es privado.
        + Un apuntador a una funcion:

* September 06 Tuesday

    - Interrupciones: Operación detente para hacer otra cosa.
        + Desde software
        + 
    - Vector de interrupciones
        + Brincas y ejecutas una nueva función, para despues regresar a donde habíamos partido

    - FIRMA: tipo de Lo que regresa, (apuntador) (* nombre), (los tipos de los parametros de la funcion)

* 08 september
    * Cuando inicias un sistema, se crea así mismo, le digo al timer interrumpe cada x time ()

    * Sistema de interrupcion, ayudandonos a paritr del timer para administrar el tiempo que estará un proceso en el procesador, para poder cambiarlos, guardandoe previamete

    * Timer, cada 15 seg vas a interrumpir x proc

* 27 September

    * solución de la prac sin modificar la estructura:
    * El calendarizador(25)
        - contexto = valores de los registros del procesador
        - Funciona como una estrucutra FIFO, mete al final y saca el primero que había llegado 
            - el problema es que no tomamos en cuenta la prioridad del proceso, hablando de la prioridad del kernel.
        - Se encarga del cambio del contexto, significa poner los valores del registro del siguiente proceso en los registros del procesador y guardar los registros del proceso actual en memoria, aqui verificamos que las interrupciones esten desactivadas para no ser molestados o interrumpidos en esta acción.
    * Por hacer 1:35 
    * ¿Por qué apagar las interrupciones?
        - Para que el procesador no sea interrumpido mientras un procesador este ejecutando x codigo, nos permite resolver el problema de exclusión mutua, solo funciona con un nucleo
        - Despues de apagarlas, prender las interrupciones
    * Procesos != hilos
        - Los procesos no tienen acceso a cualqueir variable de los demás procesos
    * ¿Por que no cambiamos el program counter IP? Program counter
        - Porque los hilos continuan de donde dejaron el proceso anterior, en la misma instrucción, los dos procesos trabajan sobre el mismo codigo, el primero trabaja hasta cierto punto y el segundo empieza a trabajar en ese punto por eso no es necesario que el IP apunte a otro lugar.
            - En los procesos se hace una copia del codigo.
        - Todos los hilos tienen un mismo espacio de memoria mientras que los procesos están totalmente aislados.
    * Cuando implementamos un calendarizador por prioridades necesitamos que sea preemptive porque si no podremos llegar a tener que solo algunos procesos con la más alta prioridad tengan/acaparen todo el tiempo de uso de procesador.
        - si mi calendarizador no fuera preemptive aunque un proceso termine esto no cedera  el procesador hasta que termine el timeslide, y ese es un problema cuando tenemos un proceso de mucha prioridad necesitamos que este se ejecute
        - **El calendarizador es preemptive si el proceso con más alta prioridad siempre se esta ejecutando.**
    * Mantener la lista ordenada o sacar el máximo, luego hacer que sea preemptive, es decir cuando entre un proceso a la ready list con mayor prioridad que el proceso actual este se ejecute
        - priority-preempt  debe poner en ejecución el mismo hilo ejecutar: 

* 14 October
    * _thread yield_, yo procesador cedo el procesador a traves del schedule
    * entrada por prioridad[acotada por 64]
    * en next to run recorremos todo el arreglo buscando el indice como prioridad

* 18 October
    * Buscamos resolver la hambruna generada por pr
        - Necesitamos saber cuanto llevamos esperando
            - promedio ponderado en el timpo
                - el valor de a se hace más grande con el paso del tiempo
            - se debe calcular cada segundo
        - calculo de prioridad: 
    * EN sema necesitamos siempre sacar el hilo
    * Quitar priority-condvar
    * cond wait asume que ya hemos llamado accuared

* 20 Oct
    - extraer el semaforo del elem 
    * cuando transformamos a punto fijo, hacemos un recorrido a la izquierda de 14 bits
    - macros en c, por hacerlo en tiempo de ejecución puede ser más rapido, podemos inicializarlas en thread.c 
        - static int load_avg_c1 = FIXPOINT(59,60)
        - funciones
    - load_avg
    - thread_tick
* 25 oct
    - load1, recent cpu iterar en la lista de todos los procesos 
    - int recent_cpu  debe de ir en struct thread
    - en init_thread inicialicen su cpu
    - todos los procesos que no son el thread principal le ponemos un nice de 20, nice se ocupa en recent_cpu y en la prioridad de todos
    
* 8 Nov
    - Necesitamos un lugar donde guardar lo que utilizaremos para funcionar, luego ese archivo se lo pasamos a pintos
    - La función load va al almacenamiento secundario, lee el archivo y en base al trozo de codigo 
    - Tenemos dos modos de acceder a memoria, modo real puede acceder a la memoria fisica 
    modo virtual, pasas atraves de un sistema de virtualizacion 
    - Las llamadas a sistema(mecanismo para que ) se atienden por el kernel
    - La funcion setup_stack activa los primeros 4K bytes de la parte alta para que ahí viva el stack
    - Star_process, coloca los argumentos en el stack
    - Los usuarios no pueden ocupar directamente en los dispositivos de entrada/salida, el usuario le dice al kernel que quiere imprimir, el kernel es el que escribe en la terminal

* 5 Dic

SEguridad: 

Vulneabilidades
Tener un Fire-Hardware tener todas 

# Prac:Procesos de usuarios 
1. Procesos de usuario
    En pintos se crea un hilo de kernel por cada proceso de usuario que tenemos, este se encarga de asignarle los recursos y atender las peticiones del proceso de usuario , ya que este no puede acceder directamente a los recursos.

    * No tenemos una estructura de alto nivel pero hay implementaciones que actuan sobre estos procesos:
        - start_process-crea el nuevo proceso de usuario
    
    * Al igual que los hilos su parte más importante es el entorno de ejecución
    
    * Espacio de Usuario:Ocupamos definir dentro del espacio virtual una serie de renglones y llimites ya que en el modo virtual no podemos acceder directo a la memoría física

2. Llamadas al sistema:
    Las llamadas a sistema permiten que los usuarios realizar operaciones que solamente puede realizar el kernel, buscando que el usuario no tenga un acceso directo a operaciones que pueden poner en riesgo el so, por lo que necesitaremos que un proceso de usuario ceda el control del procesador al so, implicitamente necesitamos un cambio de privilegios de ejecución.

    * Para ello ocuparemos las interrupciones por software, similares a las de hardware, pero generadas por una instrucción del procesador:
        - En la arquitectura Interl x86: _INT N_ genera una llamada al manejador de interrupciones con el operando de destino (N) con 0<=N<=255, Cuando el procesador se encuentra en modo virtual, el registro IOPL determina la acción de la instrucción INT. Si el registro IOPL es menor a 3, el procesador genera una excepción de protección general(GP). Si el registro IOPL es 3, el procesador ejecuta una interrupción de modo protegido hacia modo privilegiado de nivel 0 (modo kernel).
            + En Pintos relacionamos el N=identificador de la excepción con su manejador con la función syscall_init, para resolver esto, pintos ocupa una biblioteca que nos permite colocar los argumentos de la llamada al sistema y generar la interrupcion evitando que el usuario conozca el formato de los argumentos, atraves de syscall.c 
            - El manejador de llamadas a sistema se encuentra en syscall_handler que recibe como parametro un intr_fram que contiene los valores de los registros del proceso de usuario al momento de generarse la interrupción, pudiendo así obtener el valor del _stack pointer_ y así poder acceder a los argumentos colocados en la pila de ejecución del proceso de usuario y el identificador de la llamada.
                - Debemos de tener cuidado al modificar los valores ya que a partir de este se vuelve a costruir el entorno de ejecución del proceso de usuario al terminar la interrupción
                    + el valor de retorno de cualquier llamada se deba almacenar en el registro EAX

* Lab 15 Nov
    - Comenzar con exe wait, implementar primero la syscall exec, en syscall.c  en el handler, es el despachador de las funciones
        - el UNUSE se utiliza para que el compilador no se queje de que no ocupamos el argumento 
        - cada llamada a sistema esta asociada a un identificador unico
        - el exec ejecuta la función syscall1=macro que ejecuta codigo ensamblador a traves del ensamblador en línea asm, que mete el argumento en el registro del stack pointer, y el número de la llamada invocando al final una interrupcion por software QUE dice que es una llamada al sistema
            - en el stack guardamos los argumentos de la syscall
            - el N=0x30 solo es para que el manejo de la interrupcion sea por el syscall_handler
            - el \*esp  es el operador de desreferización

            -  cada que se ejecuta exit se imprime un mensaje de salida
            - agregar el case SYS_EXEC
        - exec-onde.put
        - exec recibe un arreglo de chars que contiene el nombre del arc
            - atraves del registro eax le pasamos la info del kernel al proceso de usuario
            - la función
    - semaforo
        - si hacemos sema_down es la función que bloquea el proceso, porque queremos entrar a la zona critica, nos deja entrar si la var es  0 el proceso se bloquea hasta que alguno de los que ya paso haga un signal o semaup 
            - algoritmo de peterson para generar atomicidad, en un sistema de multinucleo necesitamos más que solo apagar las interrupciones
            - crear nueva estructura para identificar los procesos hijos 
            - En thread.h struct process que tenga el tid, el struct thread* t, int exit_status, struct list_elem elem 1:20 y el semaforo  
                - iniciar la lista en init_thread
                - meter el semaforo en el child
* Nov 24 - New practice:
    - Goal: Amplificar la memoria de los usuarios utilizando el swapping
    - Por ver clases del 22.
    - Page directory:
    - page o frames son maneras de segmentar la memoria
    - fragmentación: Para alojar toda la memoria que un proceso podría necesitar, tenemos dos opciones, tener un tamaño fijo o variable de la memoria que ocupa.
        - interna: teniendo un tamaño fijo podemos tener espacios vacios, la diferencia entre la memoria que en realidad ocupa y la que le asignamos
        - externa: Conforme terminan los procesos, desocupamos memoria pero está no es continua, entonces podemos tener memoria libre mayor a la necesitada pero en varios "hoyos", no seguida, pero tenemos un proceso que ocupa mas memoría que la de los huecos. **Memoria disponible, pero no continua**
    -  Si tenemos paginas grandes podemos tener pocos procesos que en realidad no ocupan toda la memoría asignada
    - Si tenemos paginas muy pequeñas o la representación de una gran memoria, entonces podemos tener un page table enorme
        - Por lo que ahora tenemos un page directory, y  ahora se divira en 3: el PD Entry(este contiene la dirección de un PTA), PageTable Entry(asociacion entre el frame y la dirección) y d-offset
    - En pintos: EN realidad las paginas aparecen como subdirrección, esta empieza desde PHYS_BASE
        - ocupamos el swapping porque ocupamos 3GB de memoria y solo tenemos 64M en paginas 
        - Page_fault: Acceso a una dirección que no esta entonces buscamos en el spd para ver si esta en el swap
        - 
        - todas las paginas que tiene un proceso estan en el page directory o están en el supplemental page directory(table)
            - la recomendación es ocupar un hash table
            - una pagina en el secondary storage puede estar en el file system o el swap
            - si un proceso tiene una pagina en el swap entonces ocupamos el spd
            - upage: que proceso se asigno

### Notes:

La memoria principal y los registros son el único almacenamiento al que la CPU puede acceder directamente. El acceso a los registros en un reloj de la CPU (o menos) La memoria principal puede tardar muchos ciclos, provocando un bloqueo.

La caché se sitúa entre la memoria principal y los registros de la CPU.

El concepto de espacio de direcciones lógicas vinculado a un espacio de direcciones físicas separado es fundamental para una correcta gestión de la memoria.

1. Dirección lógica: generada por la CPU; también denominada dirección virtual
    - - Las Direcciones lógicas vinculadas a direcciones físicas
2. Dirección física - dirección vista por la unidad de memoria

Son lo mismo hasta el tiempo de ejecución

El CPU accede directamente a la memoria principal y a los registros, el SO no interviene en el acceso a memoria del CPU.

* MMU: Dispositivo de hardware que en tiempo de ejecución asigna la dirección virtual a la física dirección

El programa de usuario trata con direcciones lógicas; nunca ve las direcciones físicas reales, la vinculación en tiempo de ejecución se produce cuando se hace referencia a ubicación en memoria:

* Preguntas:
    
    *  El esquema asignación de memoria continua  y el esquema de paginación
        - En la asignación de memoria continua la fragmentacion interna no existe,  pero la fragmentacion externa si existe ya que se permite cambios dinámicos de tamaño, ya que la MMU asigna la dirección lógica dinámicamente permitiendo que el código del kernel sea transitorio y que el núcleo cambie de tamaño, mientras que en el esquema de paginacion la fragmentacion interna existe pero esta es pequeña y la fragmetacion externa no existe!
            - **Falta compartir código**
    *  El tamaño de las páginas son potencias de 2?
        - Básicamente nos facilita la traducción entre las direcciones virtuales y el número de nuestras páginas de nuestra memoria.
        - Facilita realizar los cálculos
        - Es el sistema de numeración base en las computadoras
    * diferencias entre fragmentación externa y fragmentación interna
        * La fragmentación surge cuando la memoria se descompone en piezas pequeñas, en la fragmentación externa es cuando tenemos que la memoria se divide dinamicamente, es decir, en bloques de tamaño variable en función del tamaño de la memoria requerida por los procesos, y existe la suficiente memoria para almacenar otro proceso pero no es contigua, si no en fragmentos pequeños. Mientras que en la fragmentacion internal se produce cuando la memoria se divide en bloques del mismo tamaño, es decir, tendríamos bloques un tamaño fijo y la asignación de la memoria utilizada por un proceso sería en estos terminos, pero esto provocaría que tengamos memoría desperdiciado(sin uso) dentro de estos bloques que podría ser ocupada por otros procesos.
    * Por qué en un sistema con paginación un proceso no puede acceder a memoria que no le pertenece? 
        * Por la protección contra el SO y otros procesos, ya que por seguridad un proceso no debería poder acceder a la memoria que no le pertenece, como el mapeo se le oculta al programador/usuario, y es llevado por el SO, entonces no hay forma de obtener una dirección que éste fuera de su tabla de paginación y está tabla solo incluye las páginas que le pertenecen a dicho proceso, teniendo una porción asignada aunque esté crea que esta usando toda la memoría
            - ¿Cómo el sistema operativo permite acceso a memoria adicional?
    *  propósito de paginar la tabla de páginas?
        * Disminuir la memoría fisica necesitada solo para la tabla de paginación y reducir el numero de entradas en la tabla de paginacion y asi poder aplicar el algoritmo de paginación de dos niveles
    
    - poder compartir codigo comun a traves de paginas comparatidas

    * Qué es la compactación? 
        *  La compactacion representa una solucion a la fracmentación externa, es una técnica utilizada para compactar toda la memoria usada en un lado teniendo la memoría disponible fragmentada(en fragmentos) en un gran bloque contiguo de memoria libre en lugar de tenerla segmentada en espacios de menor tamaño.
    
    * identificadores de espacios de direcciones son usados los TLBs
        * Los TBLs usan identificadores de espacios de direcciones para permitir entradas de procesos diferentes de forma simultanea ya que se asegura de que el número de página corresponda con el ASID de la pagina virtual.

    * ¿Por qué los sistemas operativos móviles no soportan el swapping?
        * Los sistemas operativos móviles usan memoria flash, tienen un espacio limitado lo cual hace que tenga un bajo rendimiento entre la memoria flash y la memoria principal y no soportan el swapping ya que el espacio de memoria con el que se cuenta es limitado  y la memoría utilizada para hacer el swapping ocupa mucha memoría, es muy pesado realizar esto.
    * ¿Por qué los sistemas operativos móviles no permiten el swapping en su disco de inicio pero si lo permiten en un disco secundario?
        * Porque la memoría utilizada para hacer el swapping es mucha, es muy pesado realizar esto y la memoría que ocupan los so móviles es flash y es muy pequeña, usar el swapping podría ser contraproducente ya que tendríamos una baja en el rendimiento mientras que en el disco secundario, tienen otro tipo de memoria y podríamos hacer un apartado para guardar la memoria necesaria en el swapping.
    * Considere un sistema ...
        - Ventajas: Que es eficaz para compartir código y datos y proteger el código de modificaciones 
        Desventajas: Que el código y datos debe estar separado
* ransonware: archivo que ejecuta   

- Root Kids
- Esquema de seguridad por usuarios
## Commands
* Los procesos AMD estan configurados para siempre trabajar en su máximo potencial.
* Qué es mejor? Para que se va a usar.

```bash 
/proc$ less /proc/cpuinfo
/proc$ grep ctxt status
uname -a
grep SMP /boot/config-5.15.0-46-generic ## 
/boot$ grep SMP /boot/config-5.15.0-46-generic 
```
```bash 
mkfifo pipe1
ls -l   
```

### Help

* [Pull Request](https://www.freecodecamp.org/espanol/news/como-hacer-tu-primer-pull-request-en-github/)

You selected this USER-ID:
    "Manuel <jose_manuel@ciencias.unam.mx>"


ntory@Moonlight:~$ pass init B03B37CCF5D33CC4A95355B9443EFCCC3BCA1FEA
mkdir: created directory '/home/ntory/.password-store/'
Password store initialized for B03B37CCF5D33CC4A95355B9443EFCCC3BCA1FEA

sudo systemctl unmask docker
systemctl start docker
systemctl status docker        

make build/tests/threads/mlfqs-load-1.result 
53
https://github.com/tssurya/Pintos_Project/blob/master/pintos/src/threads/fixed-point.h

https://github.com/tssurya/Pintos_Project/blob/master/pintos/src/threads/thread.c
https://github.com/tssurya/Pintos_Project/tree/master/pintos/src
https://www.youtube.com/user/soon35/about

make build/tests/threads/mlfqs-load-avg.result 