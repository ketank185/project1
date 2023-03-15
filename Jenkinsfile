pipeline {
	agent {
		label {
			label "slave1"
		}
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
				sh "docker rm -f server1"
				sh "docker run -dp 8080:8080 tomcat:9.0 --name server1"
			}
		}
	}
}
