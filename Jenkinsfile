pipeline {

    agent any


    environment {

        IMAGE_NAME = "employee-api"

        IMAGE_TAG = "v1"

        DOCKER_REGISTRY = "your-dockerhub-user"

    }


    stages {


        stage('Checkout Code') {

            steps {

                git branch: 'main',
                    url: 'https://github.com/company/employee-management-api.git'

            }

        }



        stage('Maven Build') {

            steps {

                sh 'mvn clean package -DskipTests'

            }

        }



        stage('Unit Testing') {

            steps {

                sh 'mvn test'

            }

        }



        stage('SonarQube Analysis') {

            steps {

                sh '''
                mvn sonar:sonar \
                -Dsonar.projectKey=employee-api \
                -Dsonar.host.url=http://sonarqube:9000
                '''

            }

        }



        stage('Docker Build') {

            steps {

                sh """

                docker build \
                -t ${DOCKER_REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG} .

                """

            }

        }



        stage('Docker Push') {

            steps {

                sh """

                docker push \
                ${DOCKER_REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}

                """

            }

        }



        stage('Deployment') {

            steps {

                echo "Deployment will happen through Kubernetes"

            }

        }

    }


    post {


        success {

            echo "CI/CD Pipeline Completed Successfully"

        }


        failure {

            echo "Pipeline Failed"

        }


    }

}