pipeline {
    agent any

    stages {

        stage('Build Image') {
            steps {
                sh 'docker build -t pooja029/hello-world:latest .'
            }
        }

        stage('Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-creds', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh 'echo $PASS | docker login -u $USER --password-stdin'
                }
            }
        }

        stage('Push') {
            steps {
                sh 'docker push pooja029/hello-world:latest'
            }
        }
    }
}
