pipeline{
   agent any
   
   environment{
      PATH = "/var/jenkins_home/apache-maven-3.6.3/bin:$PATH"
	  }
   stages{
     stage("Git_Checkout"){
	   steps{
	     git credentialsId: '5ab91d62-3c84-4e03-b8a6-f373abe54d4a', url: 'https://github.com/rameshthehope/Demo.git'
		 }
	   }
	 stage("Maven_Build"){
	    steps{
		    sh "mvn clean package"
		}
	 }
	stage("Upload to artifactory"){
	    steps{
		    sh '''cd /var/jenkins_home/workspace/Jfrog_Deploy/target/
		    curl -uadmin:APBNkhRt5sQ2riSCznZoVguH7oX -T Demo-0.0.1-SNAPSHOT.war "http://13.234.111.70:8081/artifactory/generic-local/Demo-0.0.1-SNAPSHOT.war"'''
		}
	}

  }
  
  }
