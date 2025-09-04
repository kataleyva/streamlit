#1. Llamar imagen base del proyecto
FROM python:3.10-slim

#2. Definir directorio de trabajo dentro del contenefot o fumas
WORKDIR /app

#3. Copiar el archivo de requerimientos y se instalan dependencias
COPY requirements.txt .
RUN pip install -r requirements.txt

#4. Copiar todos los archivos 
COPY . . 

#5. Exponer el puerto de trabajo
EXPOSE 8501

#6. Ejecutar comando para ejecutar app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
