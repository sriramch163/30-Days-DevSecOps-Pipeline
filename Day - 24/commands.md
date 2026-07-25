# Kyverno Commands

helm repo add kyverno https://kyverno.github.io/kyverno/

helm install kyverno kyverno/kyverno -n kyverno

kubectl apply -f kyverno/

kubectl get clusterpolicy

kubectl describe clusterpolicy require-signed-images

pytest tests

kubectl apply -f kubernetes/
