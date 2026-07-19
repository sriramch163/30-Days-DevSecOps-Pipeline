# Trivy Commands

docker build -t flask-demo:1.0.0 app

trivy image flask-demo:1.0.0

trivy image \
--severity HIGH,CRITICAL \
flask-demo:1.0.0

trivy image \
--format json \
-o reports/trivy-report.json \
flask-demo:1.0.0

trivy image \
--format table \
-o reports/trivy-report.txt \
flask-demo:1.0.0

pytest tests

kubectl apply -f kubernetes/
