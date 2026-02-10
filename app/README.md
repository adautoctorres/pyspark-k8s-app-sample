# App PySpark

Aplicacao PySpark simples usada pelo chart Helm na raiz do repositorio.

## Funcionamento

Esta aplicação PySpark realiza processamento de dados distribuído. Ela é containerizada e gerenciada pelo chart Helm, permitindo deployment automatizado em clusters Kubernetes. A aplicação executa jobs Spark que processam dados em paralelo utilizando os recursos do cluster.

## Build

```sh
make build
```
