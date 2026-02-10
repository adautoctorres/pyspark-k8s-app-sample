from pyspark.sql import SparkSession

spark = SparkSession.builder \
    .appName("pyspark-k8s-native") \
    .getOrCreate()

data = [("Spark", 1), ("Kubernetes", 2)]
df = spark.createDataFrame(data, ["tech", "valor"])

df.show()

spark.stop()
