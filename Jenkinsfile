pipeline {
	agent {
		label {
			label "slave1"
		}
	}
	environment {
		package="/opt/project1/workspace/Final-Project1/target/LoginWebApp.war"
	}
	tools {
		jdk "java-8"
		maven "maven-3.9"
		git "git-1.0"
	}
	stages {
		stage ("clean workspace") {
			steps {
				cleanWs ()
			}
		}
		stage ("checkout code from scm") {
			steps {
				checkout scm
			}
		}
		stage ("packaging project ") {
			steps {
				sh "mvn clean package"
			}
		}
		stage ("deploy on docker conatiner") {
			steps {
				sh "sudo yum install docker -y"
				sh "sudo service docker start"
				sh "sudo docker rm -f server1"
				sh "sudo docker run -dp 8080:8080 -v ${{package}}:/usr/local/tomcat/webapps/ --name server1 tomcat:9.0"
			}
		}
	}
}
