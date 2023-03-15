pipeline {
	agent {
		label {
			label "slave1"
		}
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
				sh "mvn clean package"
			}
		}
	}
}
