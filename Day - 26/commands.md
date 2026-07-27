# Falco Commands

helm repo add falcosecurity https://falcosecurity.github.io/charts

helm install falco falcosecurity/falco -n falco

kubectl get pods -n falco

kubectl logs daemonset/falco -n falco

kubectl apply -f falco/

pytest tests

kubectl apply -f kubernetes/
