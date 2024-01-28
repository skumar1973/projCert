pipeline {
    agent any

    environment {
        GIT_SSH_KEY = credentials('projCert')  // ID of the SSH key added in Jenkins credentials
    }

    stages {
        stage('Checkout from GitHub') {
            steps {
                script {
                    // Define custom GIT SSH command
                    sh "ssh-agent bash -c 'ssh-add ${GIT_SSH_KEY}; git clone git@github.com:skumar1973/projCert.git'"
                }
            }
        }
    }
}
