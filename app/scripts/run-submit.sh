#!/usr/bin/env bash
set -euo pipefail

spark-submit \
  --master k8s://https://kubernetes.default.svc \
  --deploy-mode cluster \
  --name pyspark-k8s-native \
  --conf spark.kubernetes.namespace=pyspark-app \
  --conf spark.kubernetes.authenticate.driver.serviceAccountName=spark-sa \
  --conf spark.kubernetes.container.image=pyspark-app:latest \
  --conf spark.eventLog.enabled=true \
  --conf spark.eventLog.dir=file:/opt/spark/history \
  --conf spark.kubernetes.driver.volumes.persistentVolumeClaim.history-logs.mount.path=/opt/spark/history \
  --conf spark.kubernetes.driver.volumes.persistentVolumeClaim.history-logs.options.claimName=spark-history-logs \
  --conf spark.executor.instances=3 \
  --conf spark.executor.memory=1g \
  --conf spark.executor.cores=1 \
  local:///opt/spark/app/src/app.py
