# Recommended Structure

shared-library/

├── vars/

│   ├── buildApp.groovy

│   ├── deployApp.groovy

│   └── notify.groovy

├── src/

│   └── org/company/

└── resources/

Each Groovy file inside vars
becomes a global Jenkins step.
