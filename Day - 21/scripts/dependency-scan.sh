#!/bin/bash

mkdir -p reports

dependency-check.sh \
--project FlaskDemo \
--scan app \
--out reports \
--format HTML

dependency-check.sh \
--project FlaskDemo \
--scan app \
--out reports \
--format JSON

dependency-check.sh \
--project FlaskDemo \
--scan app \
--out reports \
--format XML

dependency-check.sh \
--project FlaskDemo \
--scan app \
--out reports \
--format SARIF

echo "Dependency Scan Completed"
