pipeline {
    agent any

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sarvi32/welcome-2024.git'
            }
        }
        stage('build image'){
            steps {
                sh 'docker build  -t image1:$BUILD_NUMBER . '
            }
        }
        stage('Run') {
            steps {
                sh 'docker rm -f test'
                sh 'docker run -d -p 80:80 --name test image1:$BUILD_NUMBER'
            }
        }
        stage('test') {
           steps {
                sh 'curl http://127.0.0.1:80'
            }
        }
        
    }
}
