pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/dudssecco/Minha-Api'  // Adicione o link do seu repositório
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t hello-world-api .'
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 3000:3000 hello-world-api'
                }
            }
        }
    }
}
