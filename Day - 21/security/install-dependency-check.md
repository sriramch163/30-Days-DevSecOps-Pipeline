# Install OWASP Dependency-Check

Download

https://github.com/dependency-check/DependencyCheck/releases

Extract

unzip dependency-check.zip

Verify

dependency-check.sh --version

Scan Current Project

dependency-check.sh \
--scan . \
--out reports

Generate HTML Report

dependency-check.sh \
--scan . \
--format HTML \
--out reports
