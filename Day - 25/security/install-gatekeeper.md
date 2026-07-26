# Install OPA Gatekeeper

helm repo add gatekeeper \
https://open-policy-agent.github.io/gatekeeper/charts

helm repo update

kubectl create namespace gatekeeper-system

helm install gatekeeper gatekeeper/gatekeeper \
-n gatekeeper-system

Verify

kubectl get pods -n gatekeeper-system
