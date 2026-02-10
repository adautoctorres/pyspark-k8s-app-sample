NAMESPACE := pyspark-app
RELEASE := pyspark-native

install:
	helm upgrade --install $(RELEASE) . --namespace $(NAMESPACE) --create-namespace

uninstall:
	helm uninstall $(RELEASE) --namespace $(NAMESPACE)

template:
	helm template $(RELEASE) . --namespace $(NAMESPACE)

lint:
	helm lint .

values:
	helm show values .
