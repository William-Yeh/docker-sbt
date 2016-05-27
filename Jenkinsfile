#!groovy

node {
	
	stage 'Checkout'
	checkout scm

	stage 'Build'
	sh './ci.sh build'

	stage 'Test'
	sh './ci.sh test'

	stage 'Publish'
	sh './ci.sh publish'

}
