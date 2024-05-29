# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de requerimientos y los instala
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copia todo el contenido de la carpeta actual al directorio de trabajo del contenedor
COPY . .

# Exponer el puerto que usará la aplicación
EXPOSE 5050

# Definir el comando por defecto para ejecutar la aplicación
CMD ["sh", "run.sh"]
