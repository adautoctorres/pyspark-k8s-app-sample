FROM apache/spark:3.5.8

USER 0

# Instala Python libs (exemplo)
RUN pip install --no-cache-dir pyspark pandas

# Cria diretório da aplicação
RUN mkdir -p /opt/spark/app

# Copia o código
COPY src /opt/spark/app/src
COPY scripts /opt/spark/app/scripts

USER spark

CMD ["sleep", "infinity"]