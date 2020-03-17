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
	stage("Uploading package to Jfrog"){
	  steps{
	    sh '''cd /var/jenkins_home/workspace/Demo_Merrill/target/
		curl -uadmin:password -T Demo-0.0.1-SNAPSHOT.war "http://192.168.33.11:8081/artifactory/ext-release-local/Demo-0.0.1-SNAPSHOT.war"'''
  }
}

}

}
