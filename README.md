# PySpark Native RBAC Chart

This chart provisions the namespace, service account, and RBAC needed for native Spark submit on Kubernetes.

## Install

```sh
helm install pyspark-native ./app-chart
```

## Values

Edit `values.yaml` to change the namespace or names for the service account and RBAC resources.
