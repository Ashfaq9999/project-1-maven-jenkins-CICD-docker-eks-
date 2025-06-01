pipeline {
    agent any

    environment {
        TOMCAT_URL = 'http://3.110.55.31:8080/manager/text/deploy?path=/sample&update=true'
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Ashfaq9999/project-1-maven-jenkins-CICD-docker-eks-.git'
            }
        }

        stage('Build WAR') {
            steps {
                sh 'mvn clean package'
                sh 'ls -l webapp/target'  // Just to confirm the file is there
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'TOMCAT_DEPLOY_USER', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh 'curl -u $USER:$PASS --upload-file webapp/target/webapp.war "$TOMCAT_URL"'
                }
            }
        }
    }
}
