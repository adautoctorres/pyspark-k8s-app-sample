# Chart RBAC PySpark Native

Este chart provisiona uma aplicação PySpark simples que executa no Kubernetes, junto com a service account e o RBAC necessários para o spark-submit nativo. O namespace deve existir ou ser criado pelo Helm com `--create-namespace`.

## Estrutura

- **app/**: Contém a aplicação PySpark simples que será executada no cluster Kubernetes
- **/**: Helm Chart com as configurações de permissões necessárias para o spark-submit native

## Instalação

```sh
make install
```

## Values

Edite o `values.yaml` para mudar o namespace ou nomes da service account e recursos de RBAC.

