pipeline {
	agent {
		label {
			label "slave1"
		}
	}
	environment {
		PACKAGE = "/opt/project1/workspace/Final-Project1/target/"
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
				sh "sudo docker run -dp 8080:8080 -v ${ PACKAGE }:/usr/local/tomcat/webapps/ --name server1 tomcat:9.0"
			}
		}
		stage ("backend deployment") {
			steps {
				sh "mysql -h database-1.cayvcljjcn2k.ap-south-1.rds.amazonaws.com --user='admin' --password='admin1235' -e 'CREATE DATABASE demo;' 2>/dev/null"
				//sh "mysql -h database-1.cayvcljjcn2k.ap-south-1.rds.amazonaws.com -u 'admin' -p ; admin1235 "
				//sh "create database demo"
			}
		}
	}
}
