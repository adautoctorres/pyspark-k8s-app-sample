# Chart RBAC PySpark Native

Este chart provisiona a service account e o RBAC necessarios para o spark-submit nativo no Kubernetes. O namespace deve existir ou ser criado pelo Helm com --create-namespace.

## Instalacao

```sh
make install
```

## Values

Edite o `values.yaml` para mudar o namespace ou nomes da service account e recursos de RBAC.
