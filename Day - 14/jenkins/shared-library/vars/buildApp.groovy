def call() {

    echo "Building Application"

    sh "python3 -m pip install -r app/requirements.txt"

    sh "pytest tests"

    sh "docker build -t shared-library-demo:v1 app"

}
