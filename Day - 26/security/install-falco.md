# Install Falco

helm repo add falcosecurity https://falcosecurity.github.io/charts

helm repo update

kubectl create namespace falco

helm install falco falcosecurity/falco \
-n falco

Verify

kubectl get pods -n falco
