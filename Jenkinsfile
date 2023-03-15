pipeline {
	agent {
		label {
			label "slave1"
		}
	}
	tools {
		jdk "java-8"
		maven "maven-3.9"
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
		stage ("packaging project and deploy") {
			steps {
				//sh "JAVA_HOME=/opt/project1/tools/hudson.model.JDK/java-8"
				sh "mvn clean package"
			}
		}
	}
}
