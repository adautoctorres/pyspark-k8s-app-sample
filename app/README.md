# App PySpark

Aplicação PySpark simples usada pelo chart Helm na raiz do repositório.

## Funcionamento

Esta aplicação PySpark realiza processamento de dados distribuído. Ela é containerizada e gerenciada pelo chart Helm, permitindo deployment automatizado em clusters Kubernetes. A aplicação executa jobs Spark que processam dados em paralelo utilizando os recursos do cluster.

## Build

```sh
make build
```

## Execução

Para rodar a aplicação, entre no shell do pod e execute:

```sh
bash /opt/spark/app/scripts/run-submit.sh
```

