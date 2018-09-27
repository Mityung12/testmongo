pipeline {
    agent any
    stages {
    stage('Create Mongo Docker Image and restore DB') {
	steps{
    	script {
	  def app = docker.build "amsys/mongo:v1"
    	}
  	}
    }
    stage('Start Mongo Docker') { 
            steps {
		sh 'chmod +x start_docker.sh' 
		sh './start_docker.sh'
            }
        }
    }
}
