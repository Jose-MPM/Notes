#!/bin/bash

# Verificar si se proporcionó un comentario para el commit
if [ -z "$1" ]; then
  echo "Por favor, recuerda proporcionar un comentario para el commit."
  exit 1
fi

# Mensaje de commit proporcionado como argumento
COMMIT_MESSAGE=$1

# Añadir todos los cambios
git add .

# Realizar el commit con el mensaje proporcionado
git commit -m "$COMMIT_MESSAGE"

# Hacer push a la rama actual
git push

# Mensaje de éxito
echo "Cambios subidos exitosamente, commit: '$COMMIT_MESSAGE'"