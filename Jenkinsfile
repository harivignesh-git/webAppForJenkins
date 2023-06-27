pipeline {
    agent any
    tools {
        maven 'apache-maven-3.9.3'
    }
    stages {
        stage('Clean and Install') {
            steps {
               bat 'mvn clean install'
            }
        }
        stage('Package') {
            steps {
               bat 'mvn package'
            }
        }
        stage('Deploy'){
            steps{
                deploy adapters: [tomcat9(credentialsId: '69b24a2b-6819-4af7-bc7a-a10831f8c832', path: '', url: 'http://localhost:8081/')], contextPath: 'mvnwebapp', war: '**/*.war'
            }    
        }    
    }
}
