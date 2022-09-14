# Notes of Operating Systems

> Mantente fuerte, positivo y nunca te rindas. ― Roy T. Bennett, The Light in the Heart

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

### Pintos
+ Sep13:
    + Cuando no hay nadie en ejecución, el idle se encarga 
    + Sacamos los stick de cada proceso
    * En la listas de pintos, dentro del elemento que quieres inser metemos el nodo, para evitar manejar memoria
        - 
    + timer_interrrupt se ejecuta cada segundo
    si queremos inicializar algo es mejor hacerlo en el init del archivo
    static para que no salga de este archivo
    backtrace build/kernel.o pila
    interrupt.c interrupciones en pintos
    * timer_sleep, dormir el thread que la invoco, sigue en ejecución, se vuelve a formar, se queda esperando utilizando recursos
    * thread: no se forma como proceso y pone a ejecutar otro
    * thread yield: se forma como proceso a ajecutar, y pone a ejecutar otro.
    * thread create: crea un nuevo proceso, aparta la memoria y al final lo desbloque

    * run_actions en init.c
        - se ejecuta en modo kernel y lo primero que hacemos es ejecutar unas pruebas
        - thread_create crea procesos
    * timer_sleep: hacer que el timer interrumpa los procesos
        -  
    * Comandos:
        - make build/thread/alarm-single.result
        - make build/tests/thread/alarm-single.result PARA REVISAR LAS PRUEBAS

    * en el tick
    si ordenamos la lista

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

## August 23 Tuesday

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
- Stack:
    * 
- Heap:

## August 25 Thursday
- Temas:
    + _malloc_: Es la forma de pedir memoria en el heap, 
        - Cuando queremos que un valor que creamos persista despues de que termine la función debemos hacerlo en el heap
    cuando tenemos: struct list_node list
    + assert() si esa validacion no pasa entonces el codigo para
    + &object nos devuelve el valor que esta en la dirección.
    + static significa que es privado.
    + Un apuntador a una funcion:

## September 06 Tuesday

Interrupciones: Operación detente para hacer otra cosa.
    - Desde software
    - 
Vector de interrupciones
Brincas y ejecutas una nueva función, para despues regresar a donde habíamos partido

Solo una interrupciones

- FIRMA: tipo de Lo que regresa, (apuntador) (* nombre), (los tipos de los parametros de la funcion)


### 08 september

Proceso 

* Cuando inicias un sistema, se crea así mismo, le digo al timer interrumpe cada x time ()

* Sistema de interrupcion, ayudandonos a paritr del timer para administrar el tiempo que estará un proceso en el procesador, para poder cambiarlos, guardandoe previamete

* Timer, cada 15 seg vas a interrumpir x proc

## Circle CIA

dckr_pat_1c7CkLRpNGBeOxNuwdQkTxD0GAA

### Mmmmmmm

Justificación de las cosas que estás haciendo? 
Todo se ha hecho, es decir puedes crear un producto, ahora, encuentra el ángulo correcto. Entiendete mejor que cualquier persona promedio, somos maquinitas de narrativas, para cualquier cosa, nos creamos una historia que justifique lo que hacemos, pero, realmente hacemos lo que queremos hacer? *Think carefully*.


### Git

- [https://es.stackoverflow.com/questions/392420/c%C3%B3mo-puedo-cambiar-de-ramas-en-git] move between branchs
* instalen zsh y un plugin para que su terminal les diga en todo momento en que rama estan parados.
    
```bash
$ git push origin main
```

* este es el plugin de zsh para que la terminal les de contexto de git https://ohmyz.sh. De todas maneras ya se los puse en el canal de general en slack 

* New branch

```bash
$ git branch <name-of-branch>
```

* Delete branch
```bash
$ git -branch d <name-of-branch>
```

* If its not been fully merged in[totalmente fusionado]
```bash
$ git -branch D <name-of-branch>
```

* To change the branch
```bash
$ git checkout <name-of-branch>
```

When we switch branches any work that we might have(que podríamos tener) in the staging area or the working directory will come over with us.

* The only side note to that is we can't switch to a new branch if any of the files in our working directory or our staging area would be overwritten.

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

## Software Engineer

* Team:
    - Responsable del equipo:
        + Construye y busca efectividad
        + Motiva al equipo a resolver los problemas
        + Documentos deacorde al programa.

### Help

* [Pull Request](https://www.freecodecamp.org/espanol/news/como-hacer-tu-primer-pull-request-en-github/)

You selected this USER-ID:
    "Manuel <jose_manuel@ciencias.unam.mx>"

Change (N)ame, (E)mail, or (O)kay/(Q)uit? o
We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
gpg: key 443EFCCC3BCA1FEA marked as ultimately trusted
gpg: directory '/home/ntory/.gnupg/openpgp-revocs.d' created
gpg: revocation certificate stored as '/home/ntory/.gnupg/openpgp-revocs.d/B03B37CCF5D33CC4A95355B9443EFCCC3BCA1FEA.rev'
public and secret key created and signed.

pub   rsa3072 2022-09-02 [SC] [expires: 2024-09-01]
      B03B37CCF5D33CC4A95355B9443EFCCC3BCA1FEA
uid                      Manuel <jose_manuel@ciencias.unam.mx>
sub   rsa3072 2022-09-02 [E] [expires: 2024-09-01]

ntory@Moonlight:~$ pass init B03B37CCF5D33CC4A95355B9443EFCCC3BCA1FEA
mkdir: created directory '/home/ntory/.password-store/'
Password store initialized for B03B37CCF5D33CC4A95355B9443EFCCC3BCA1FEA

sudo systemctl unmask docker
systemctl start docker
systemctl status docker        