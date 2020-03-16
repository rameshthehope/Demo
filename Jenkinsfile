pipeline{
  agent any
  stages{
    stage("Git_Checkout"){
       steps{
	  git credentialsId: 'Git_cred', url: 'https://github.com/rameshthehope/Demo.git'
       }
    }
  }
}
