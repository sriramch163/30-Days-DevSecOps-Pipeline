# Credentials Binding Plugin

Purpose

Inject Jenkins credentials into
environment variables during pipeline execution.

Example

withCredentials([
string(
credentialsId: 'github-token',
variable: 'TOKEN'
)
])

echo "Credential Loaded"

The secret is automatically masked
in the Jenkins console output.
