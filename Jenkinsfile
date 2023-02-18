pipeline{

    agent any

    stages{


        stage('Docker Build and Tag'){

            steps{

                sh 'docker build -t djangocicd:latest .'
                sh 'docker tag djangocicd ajaymagar/jenkins:latest'
                sh 'docker tag djangocicd ajaymagar/jenkins:$BUILD_NUMBER'

            }
        }

        stage('publish image to Docker Hub '){
                steps{

                    withDockerRegistry([credentialsId:'dockerhub', url:""]){
                        sh 'docker push ajaymagar/jenkins:latest'
                        sh 'docker push ajaymagar/jenkins:$BUILD_NUMBER'

                    }

                }

        }


    }



}