#!groovy

String IMAGE_NAME = "finodigital/nexus3-keycloak"
String IMAGE_VERSION = "3.28.0"

node {
    try {
        stage('Checkout') {
            checkout(scm)
        }

        stage('Build') {
            sh("docker build -t ${IMAGE_NAME}:${IMAGE_VERSION} --build-arg NEXUS_VERSION=${IMAGE_VERSION} -f docker/Dockerfile .")
        }

        stage('Push') {
            sh("docker push ${IMAGE_NAME}:${IMAGE_VERSION}")
        }
    }
    finally {
        sh("docker rmi ${IMAGE_NAME}:${IMAGE_VERSION} || true")
        cleanWs()
    }
}
