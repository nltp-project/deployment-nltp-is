# Deploy 3rd party requirements
kubectl apply -f https://github.com/knative/eventing/releases/download/knative-v1.7.3/eventing-crds.yaml
kubectl wait --for=condition=Established --all crd
kubectl apply -f https://github.com/knative/eventing/releases/download/knative-v1.7.3/eventing-core.yaml
kubectl apply -f https://github.com/rabbitmq/cluster-operator/releases/download/v1.14.0/cluster-operator.yml
kubectl apply -f https://github.com/rabbitmq/messaging-topology-operator/releases/download/v1.7.1/messaging-topology-operator-with-certmanager.yaml
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.5.4/cert-manager.crds.yaml
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.5.4/cert-manager.yaml
kubectl apply -f https://github.com/knative-sandbox/eventing-rabbitmq/releases/download/knative-v1.7.1/rabbitmq-broker.yaml
kubectl apply -f https://github.com/knative-sandbox/eventing-rabbitmq/releases/download/knative-v1.7.1/rabbitmq-source.yaml
kubectl wait --for=condition=Established --all crd

# Deploy NLTP
kubectl apply -f config-sample # change according env
kubectl apply -f components