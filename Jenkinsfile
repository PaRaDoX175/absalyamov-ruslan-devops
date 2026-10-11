pipeline {
    agent any

    options {
        skipDefaultCheckout(true)
    }

    environment {
        STUDENT_NAME = 'Ruslan'
        STUDENT_SURNAME = 'Absalyamov'
        STUDENT_GROUP   = 'IT2-2313'
        STUDENT_ID      = '37044'
        IMAGE_NAME      = 'absalyamov-ruslan-devops'
        CONTAINER_NAME  = 'absalyamov-ruslan-container'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                sh 'git log -1 --oneline'
            }
        }

        stage('Build') {
            steps {
                echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                echo "Group: ${STUDENT_GROUP}"
                echo "Student ID: ${STUDENT_ID}"
                sh 'chmod +x scripts/Absalyamov_Ruslan_system.sh'
                sh 'ls -la'
            }
        }

        stage('Test') {
            steps {
                sh 'test -f Dockerfile'
                sh 'test -f app/app.py'
                sh 'bash -n scripts/Absalyamov_Ruslan_system.sh'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Docker Run') {
            steps {
                sh 'docker rm -f $CONTAINER_NAME || true'
                sh '''
                    docker run -d --name $CONTAINER_NAME \
                      -e STUDENT_NAME=$STUDENT_NAME \
                      -e STUDENT_SURNAME=$STUDENT_SURNAME \
                      -e STUDENT_GROUP=$STUDENT_GROUP \
                      -e STUDENT_ID=$STUDENT_ID \
                      $IMAGE_NAME
                '''
                sh 'sleep 2'
                sh 'docker logs $CONTAINER_NAME'
                sh 'docker ps -a --filter name=$CONTAINER_NAME'
            }
        }
    }
}