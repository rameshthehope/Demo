pipeline{
  agent any
  environment{
      PATH = "/var/jenkins_home/apache-maven-3.6.3/bin:$PATH"
	  }
  stages{
    stage("Git_Checkout"){
       steps{
	  git credentialsId: 'Git_cred', url: 'https://github.com/rameshthehope/Demo.git'
       }
    }
	stage("Maven_Build"){
	 steps{
	   sh "mvn clean package"
	   }
	 }
  }
}
