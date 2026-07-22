# OWASP Dependency-Check Commands

docker build -t flask-demo:1.0.0 app

dependency-check.sh --version

dependency-check.sh \
--project FlaskDemo \
--scan app \
--out reports

dependency-check.sh \
--project FlaskDemo \
--scan app \
--format HTML \
--out reports

dependency-check.sh \
--project FlaskDemo \
--scan app \
--format JSON \
--out reports

dependency-check.sh \
--project FlaskDemo \
--scan app \
--format SARIF \
--out reports

pytest tests

kubectl apply -f kubernetes/
