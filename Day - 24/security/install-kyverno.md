# Install Kyverno

kubectl create namespace kyverno

helm repo add kyverno https://kyverno.github.io/kyverno/

helm repo update

helm install kyverno kyverno/kyverno \
-n kyverno

Verify

kubectl get pods -n kyverno
