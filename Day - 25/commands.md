# OPA Gatekeeper Commands

helm repo add gatekeeper https://open-policy-agent.github.io/gatekeeper/charts

helm install gatekeeper gatekeeper/gatekeeper -n gatekeeper-system

kubectl apply -f gatekeeper/

kubectl get constrainttemplates

kubectl get constraints

kubectl describe constrainttemplates

pytest tests

kubectl apply -f kubernetes/
