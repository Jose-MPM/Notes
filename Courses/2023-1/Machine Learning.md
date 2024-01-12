## Patters Recognition and Machine Learning - Sergio Hernández López

https://www.kaggle.com/code/jaytee691/melanoma-cnn-pytorch-f1-score-92
https://www.kaggle.com/datasets/mohamedhanyyy/chest-ctscan-images
https://docs.google.com/document/d/1BZ5__JB77rZlZS2ZNUrV0SEB7Cw0vP9AeAD58SSc15s/edit#
https://docs.google.com/presentation/d/1NJG6PRw2F6pn9TU8B4ZLJ-LPIZDYnxGkLku_v0fTVCo/edit#slide=id.gc6f90357f_0_0

- resaltar la diferencia entre hacer fine tuning de un LLM para tareas de lenguaje natural, y hacerlo con los mismos datos de entrenamiento pero sin un LLM previo.}
	- fine tuning de GPT-2 
		- completo
	-  modelo desde cero con los mismos datos de entrenamiento. 
		- Podría ser uno basado en LSTMs o en transformadores también.
		- Igual no tienen que usar LSTMs, lo que a ustedes les parezca bien (mientras no esté pre-entrenado)
		- redes recurrentes
		- una capa de embeddin
- nuestro code
	- utiliza TensorFlow y Keras para construir y entrenar un modelo de red neuronal recurrente (RNN) bidireccional para un problema de inferencia, donde tenemos un dataset que contiene un string que representa los sintomas de una enfermedad con su respectiva enfermedad en otra columna en un string, el dataset es:
	dataset = load_dataset('celikmus/mayo_clinic_symptoms_and_diseases_v1')

	puedes rescatar algo de aqui? y el contexto de este chat?

# Expo

* Este modelo sigue la arquitectura de una Red Neuronal Recurrente de Long Short-Term Memory (LSTM) bidireccional, 

## razón de elección

- estos modelos destacan por su capacidad de entender las dependencias de largo plazo en los datos de secuencia, considerando tanto el contexto pasado como el futuro de cada punto en la secuencia de texto.
	- Recurrent neural networks: cada componente comparte los mismos pesos.
	- las redes neuronales estándar feedforward cada componente del vector de entrada tiene sus pesos

El núcleo del modelo es la capa LSTM bidireccional. A diferencia de las LSTMs estándar que solo consideran el contexto pasado de una secuencia, las LSTMs bidireccionales también tienen en cuenta el contexto futuro. 

Esto se logra alimentando la secuencia de entrada en dos LSTMs diferentes, una que procesa la secuencia de entrada en el orden original y otra que la procesa en orden inverso. Las salidas de ambas LSTMs se combinan antes de pasar al siguiente nivel de la red.

El modelo procesa el texto de entrada mediante tres pasos clave: el \textit{tokenizer}, el \textit{padding} y el \textit{embedding}.

La implementación de \textit{tokenizer} en este caso es proporcionada por Keras y es específica para el conjunto de datos de entrenamiento. Posteriormente se realiza el \textit{padding} para asegurar que todas las secuencias de palabras tengan la misma longitud. Para este modelo, la longitud máxima se establece en base al texto más largo en el conjunto de datos. 

Después se lleva a cabo el \textit{embedding}, la capa de \textit{embedding} se entrena junto con el modelo para aprender representaciones vectoriales semánticamente significativas de las palabras.

Por último tenemos una capa densa con activación softmax que clasifica la salida de la LSTM bidireccional en una de las categorías de etiquetas, que representan diagnósticos médicos en este caso. La función softmax asegura que las salidas del modelo sean probabilidades que suman 1, y la categoría con la mayor probabilidad se elige como la predicción del modelo. Para el entrenamiento se utiliza el optimizador Adam y la función de pérdida de entropía cruzada categórica para etiquetas codificadas como números enteros. La métrica de evaluación es la precisión. Los pesos del modelo se actualizan mediante retropropagación a lo largo de múltiples épocas, establecido en 32.

Los datos de entrada para el entrenamiento son la descripción de los síntomas, y las salidas esperadas son los diagnósticos correspondientes, lo que permite un entrenamiento supervisado.

vocab_size: Este es el tamaño de tu vocabulario, que es el número total de palabras únicas en tu conjunto de datos. La capa de embedding necesita saber esto para crear la matriz de embedding.

label_size: El número de etiquetas o clases únicas en tus datos. La capa densa de salida necesita saber esto para poder clasificar cada entrada en una de estas categorías.

150
embedding_dim: Este es el tamaño del vector de embedding que se utilizará. Cada palabra del vocabulario será representada por un vector de este tamaño en el espacio de embedding.

256
rnn_units: Este es el número de unidades (neuronas) que se utilizarán en las capas LSTM. Una mayor cantidad de unidades puede aumentar la capacidad del modelo para aprender de los datos, pero también puede hacer que el entrenamiento sea más lento y que el modelo sea más propenso al sobreajuste.

64
batch_size: Este es el número de ejemplos que se procesarán simultáneamente durante el entrenamiento. Un tamaño de lote más grande puede hacer que el entrenamiento sea más rápido, pero también puede requerir más memoria.

Ahora, respecto a las capas del modelo:

Embedding: Esta capa transforma cada entrada (un entero que representa una palabra) en un vector denso de longitud fija (el embedding). Este embedding se aprende durante el entrenamiento.

Bidirectional(LSTM): Esta capa pasa las secuencias de embeddings tanto hacia adelante como hacia atrás a través de una capa LSTM y luego concatena la salida. Esto permite que la capa LSTM aprenda de los datos tanto en el orden normal como en el inverso.

Dense: Esta es la capa de salida del modelo. Tiene tantas unidades como etiquetas y utiliza la función de activación softmax para producir una distribución de probabilidad sobre las etiquetas.

**Finalmente, el modelo se compila con la función de pérdida sparse_categorical_crossentropy, que es apropiada para problemas de clasificación multiclase con etiquetas enteras. El optimizador adam se utiliza para ajustar los pesos del modelo durante el entrenamiento, y la métrica de 'accuracy' (exactitud) se utilizará para evaluar el rendimiento del modelo.**

Pérdida (Loss): Esta es la función de pérdida que el modelo trata de minimizar durante el entrenamiento. Un valor alto de pérdida sugiere que el modelo no está haciendo un buen trabajo al predecir las etiquetas correctas durante el entrenamiento.

Precisión (Accuracy): Esta métrica mide el porcentaje de predicciones correctas del modelo. En tu caso, la precisión es 0.0, lo que significa que el modelo no ha hecho ninguna predicción correcta.

Perplejidad (Perplexity): Esta es una métrica comúnmente utilizada en el modelado del lenguaje. Una perplejidad más baja es mejor, y una perplejidad infinita, como la que estás obteniendo, indica que el modelo está realizando muy malas predicciones.

**No hicimos un gran preprocesmiento en los datos, seguro nos falto limpiarlo, o pudo ser demasiado simple y por ello no aprendio patrones completos, pero lo dudamos, sinceramente el tamaño del dataset no fue tan grande**, el número 

Tasa de aprendizaje: Si la tasa de aprendizaje es demasiado alta, el modelo puede estar saltando el mínimo global durante el entrenamiento. Si es demasiado baja, el modelo puede requerir muchas épocas para converger o incluso puede quedar atrapado en un mínimo local.

Número de épocas: Si el número de épocas es demasiado bajo, el modelo puede no tener suficiente tiempo para aprender. Si es demasiado alto, el modelo puede sobreajustar a los datos de entrenamiento.