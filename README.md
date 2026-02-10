# Chart RBAC PySpark Native

Este chart provisiona uma aplicação PySpark simples que executa no Kubernetes, junto com a service account e o RBAC necessários para o spark-submit nativo. O namespace deve existir ou ser criado pelo Helm com `--create-namespace`.

## Estrutura

- **app/**: Contém a aplicação PySpark simples que será executada no cluster Kubernetes
- **/**: Helm Chart com as configurações de permissões necessárias para o spark-submit native

## Aplicação PySpark

Aplicação PySpark simples usada pelo chart Helm na raiz do repositório.

### Funcionamento

Esta aplicação PySpark realiza processamento de dados distribuído. Ela é containerizada e gerenciada pelo chart Helm, permitindo deployment automatizado em clusters Kubernetes. A aplicação executa jobs Spark que processam dados em paralelo utilizando os recursos do cluster.

### Execução

Para rodar a aplicação, entre no shell do pod e execute:

```sh
bash /opt/spark/app/scripts/run-submit.sh
```

## Instalação

```sh
make install
```

## Values

Edite o `values.yaml` para mudar o namespace ou nomes da service account e recursos de RBAC.

## Spark History Server

O chart pode subir o Spark History Server com PVC e Ingress. Os valores ficam em `historyServer` no `values.yaml`.

Endereco do History Server (Ingress): http://spark-history.local

Para que o History Server exiba as aplicacoes, habilite event logs no `spark-submit` e aponte para o mesmo diretorio configurado em `historyServer.logDirectory`. Em Kubernetes isso requer armazenamento compartilhado (PVC RWX ou object storage).

Exemplo de configuracao no submit:

```sh
--conf spark.eventLog.enabled=true \
--conf spark.eventLog.dir=file:/opt/spark/history
```

## Referências

- [Apache Spark on Kubernetes](https://spark.apache.org/docs/latest/running-on-kubernetes.html#how-it-works)


