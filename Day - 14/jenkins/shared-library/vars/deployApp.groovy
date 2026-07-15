def call(environment){

    echo "Deploying Application"

    echo "Environment : ${environment}"

    sh "kubectl apply -f kubernetes/"

}
