#!/usr/bin/env groovy

//Pipeline as Code for Edureka DevOps Project

node {
    stage('Git Checkout'){
        git 'https://github.com/rakeshdhull/projCert.git'
    }
    stage('TestServer Provisiong'){
        sh 'sudo ansible-playbook testserver-install.yml'
        sh 'sudo ansible-playbook docker-install.yml'
    }
    
    stage('Package & Deployment'){
        sh 'sudo docker stop edureka-project'
        sh 'sudo docker rm edureka-project'
        sh 'sudo docker build . -t edureka-project:$BUILD_NUMBER'
        sh 'sudo docker run -itd --name edureka-project -p 80:80 edureka-project:$BUILD_NUMBER'
    }
    
   
    
}
