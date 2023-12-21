# Expo Proyecto

## INTRODUCCIÓN

En este proyecto exploraremos cómo podemos mejorar la capacidad de un autoencoder para eliminar el ruido en imágenes, es decir mejorar la calidad de imágenes.

Un autoencoder es una topología(arquitectura) de red neuronal que intenta reconstruir sus propias entradas mientras busca una representación compacta de la información dada y es entrenada copiando su entrada a la salida, estos pueden verse como un caso especial de FFN(Feed Forward Networks), para así poder hacer uso de funciones no lineales, intercalándolas entre las capas lineales con el fin de consiguir una transformación generalizada no lineal más potente.

Los autoencoder tienen dos partes principales: un codificador que comprime la entrada a un espacio de representación de dimensionalidad inferior (llamado espacio latente), y un decodificador que intenta reconstruir la entrada original a partir de esta representación comprimida. 

El espacio latente contiene una representación comprimida de la entrada, recogiendo determinada información, que será la única información que el decodificador podrá usar para reconstruir la entrada en la salida con la mayor lealtad posible.

* Los autoencoders son ampliamente utilizados para aprendizaje no supervisado, reducción de dimensionalidad y denoising.

### dataset

Ocupe el conjunto de datos MNIST, uno de los conjuntos de datos utilizados en clase, además de que en el campo del aprendizaje automático y la visión por computadora es muy ocupado. Consiste en un conjunto de 70,000 imágenes de dígitos escritos a mano (0 al 9), cada una de 28x28 píxeles en escala de grises. Sin embargo nosotros ocupamos 60,000 imágenes con ruido para entrenar nuestro modelo y 10,000 para probar que tan bueno es nuestro modelo. 

El ruido se agrega a las imágenes originales para entrenar al autoencoder en la tarea de denoising, es decir, para aprender a reconstruir las imágenes originales a pesar de la presencia de ruido. Utilizamos un factor de ruido que multiplica una distribución normal generada aleatoriamente.

Se agrega ruido durante el entrenamiento para enseñarle al autoencoder a ser robusto y capaz de recuperar información importante a pesar de la presencia de distracciones o perturbaciones en los datos de entrada. Con el fin de prevenir el sobreajuste y a mejorar la capacidad del modelo para generalizar a datos ruidosos del mundo real.

# def autoencoder

Como estamos trabajando  con datos estructurados(imágenes) entonces las capas convuncionales caen como anillo al dedo porque permiten capturar patrones locales y jerarquías de características,  

En nuestro caso tenemos 2 capas convolucionales en el codificador junto con un Capa de dropout para regularización en el decodificador, pero solo puse uno porque no quería perder mucho más información

De entre sus capas ocultas, una de ellas describe un código que representa la entrada, pero también tenemos Flaten como una capa de aplanado que convierte la salida tridimensional de las capas de convolución en un vector unidimensional, preparándolo para la capa densa.

Capa Densa (Dense): La capa densa proyecta el vector aplanado en el espacio latente, que representa la versión comprimida de la entrada original. Con 16 (valor de latent_dim)

Para el decodificador: 
Primero tenemos una capa Dense para tomar el vector latente y expandirlo para coincidir con la forma antes de la capa plana en el codificador.

Seguida de un Reshape para que la salida de la capa densa cambie de modo que tengamos la forma tridimensional requerida por las 2 capas deconvolucionales(también conocidas como transpuestas) estas aprenden a reconocer patrones locales en la entrada, por último tenemos otra capa deconvolucionale de salida que utiliza una función de activación sigmoide con 1 neurona. para producir valores en el rango [0,1] que representan los píxeles de la imagen reconstruida.

Las funciones de activación son el secreto que hace que las redes neuronales sean
capaces de resolver problemas complejos.

ReLU:  introduce no linealidad en el modelo, lo que permite al autoencoder aprender patrones y características no lineales en los datos. 

Como las relaciones entre los píxeles de una imagen no suelen ser lineales, ocupamos ReLU porque ayuda a capturar estas relaciones no lineales mucho mejor que funciones lineales.
	- Además proporciona una respuesta no saturada para activaciones positivas y es eficiente en terminos computacionales.
	- Además creo que contribuye a que el autoencoder aprenda representaciones más ricas y no lineales de las imágenes.

Sigmoid: para producir valores en el rango [0,1] que representan los píxeles de la imagen reconstruida.
En todo ocupamos 'same' (para mantener el tamaño de la entrada)

Para compilar ocupamos el optimizador Adam  para ajustar los pesos del modelo durante el entrenamiento y Means Square Error como función de perdida, es decir como una medida de cuán bien el autoencoder está reconstruyendo las imágenes.
	-  integramos la callback ReduceLROnPlateau de Keras, para ajustar automáticamente el learning rate cuando nuestra métrica _val_loss_ deje de disminuir(mejorar), asi cuando la pérdida de validación no mejora después de 3 épocas (patience=3), el learning rate se reducirá a factor=0.2 veces su valor actual, mientras que min_lr=0.0001 establece el límite inferior para el learning rate. Sin embargo esto creo que estuvo de más porque no fue necesario esté.

Cabe recalcalcar que naturalmente Una reducción de la dimensionalidad implica que se pierde información por el camino, que estos datos ya no están completos.

# Resultados y conclusión
- Visualizando las imágenes originales, las imágenes con ruido y las imágenes reconstruidas podemos tener una comprensión visual del rendimiento del autoencoder para así tener una evaluación cualitativa del rendimiento de neustro modelo. 

Al final obtuvimos un MSE = 0.013719023205339909, los cual nos indica que tuvimos una reconstrucción precisa, las diferencias entre las imágenes originales y reconstruidas son más pequeñas.
	- En el caso del conjunto de datos MNIST, donde las imágenes están normalizadas en el rango [0, 1], nuestro MSE nos dice que hay una cantidad poco significativa de diferencia entre las imágenes originales(sin ruido) y las imágenes reconstruidas a partir de las que si tienen ruido.

Teniendo así que nuestro autoencoder entrenado ha demostrado ser capaz de reducir el ruido de las imágenes con (grán) éxito.

- RESULTADOS:  La capacidad del modelo para aprender una representación latente eficiente ha permitido la reconstrucción de imágenes originales a partir de versiones ruidosas, naturalmente ibamos a perder un poco de información, PERO en algunas imagenes, como las de los 6's y 9's pero pese a eso también podemos observar que algunas partes(mal dibujadas) se mejoraron.

- Conclusión: La utilización de capas convolucionales y la reducción de la dimensión latente contribuyen a la capacidad del modelo para capturar patrones relevantes, esto se refleja en las imágenes visualmente y en nuestro MSE.

La adición de ruido a las imágenes de entrada como parte del proceso de entrenamiento resulto ser una gran estrategia para mejorar la capacidad del autoencoder para generalizar y eliminar el ruido de nuevas imágenes.

- La implementación de un callback (ReduceLROnPlateau) para ajustar dinámicamente la tasa de aprendizaje en función de la pérdida en el conjunto de validación pese a que es una práctica recomendada para mejorar la convergencia del modelo en este caso no tuvimos una mejora muy significante ocupando esto. Creo que estamos intentando matar ganzos con bazokas. Y eso que no ocupamos tranfer learning y data augmentation. Tampoco empleamos algún regularizador, solo agregamos un pequeño Dropout de .2 que nos ayudo a prevenir la dependencia excesiva entre las unidades empleadas en el entrenamiento y mejora la robustez del modelo.
	- cabe resaltar que no ocupamos Transfer Learning porque MNIST es un conjunto de datos relativamente simple ya que solo consiste de imágenes en escala de grises de dígitos(del 0 al 9) escritos a mano, y solo le agregamos ruido, no requerimos características de alto nivel aprendidas en conjuntos de datos más grandes y complejos
		* Transfer Learning se beneficia más cuando se tiene acceso a grandes(muy grandes) conjuntos de datos, mientras que MNIST es un conjunto de datos pequeño(relativamente, porque en realidad tiene un tamaño considerable, necesario para el autoencoder) y muy específico.
		* No necesitamos aprovechar conocimientos previos sobre características visuales de estos números para poder eliminar el ruido de este.


La principal ventaja de este método es que no tenemos que preocuparnos del tipo de filtro que debemos aplicar ya que que la red neuronal aprenderá sola cuál es el conjuno de filtros más óptimos a aplicar para obtener el resultado esperado.
y la principal desventaja de este método es que se necesita una gran cantidad de imágenes (más de 1000) para entrenar la red neuronal. Afortunadamente si contamos con un conjunto grande de imágenes para entrenar la red, en estos casos si podemos decir que es preferible utilizar autoencoders antes de cualquier otro método para reducir el ruido de las imágenes.