pipeline {
    
    //environment {
    //    IMG_TAG="${sh(script: 'echo \$GIT_COMMIT | cut -c -7 | tr -d \'[:space:]\' ', returnStdout: true ) }.$BUILD_ID"
    //    APP_NAME="quizapp"
    //}
    //agent any
    agent {
        dockerfile {
            filename 'Dockerfile'
        }
    }
    stages {
        //stage('Clone Repository') {
        //    steps {
        //        git url: 'https://github.com/tekraveconsulting/quizapp.git', credentialsId: 'gitHubToken'
        //    }
        //}
        stage('Check') {
            steps {
                sh 'ls && pwd && id'
            }
        }
        stage('Build') {
            steps {
                sh 'sudo pip3 install -r requirements.txt'
                sh 'sudo python3 setup.py sdist bdist_wheel'
            }
        }
        //stage('Deploy to Artifactory') {
        //    steps {
        //        withCredentials([usernamePassword(credentialsId: 'your-artifactory-credentials-id', passwordVariable: 'ARTIFACTORY_PASSWORD', usernameVariable: 'ARTIFACTORY_USERNAME')]) {
        //            sh "curl -u $ARTIFACTORY_USERNAME:$ARTIFACTORY_PASSWORD -X PUT 'http://your-artifactory-url/your-repo/your-package-name-version.tar.gz' -T dist/*"
        //        }
        //    }
        //}
        //stage('Deploy to Docker') {
        //    steps {
        //        withCredentials([usernamePassword(credentialsId: 'your-docker-credentials-id', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
        //            sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
        //            sh 'docker build -t your-docker-username/your-image-name:latest .'
        //            sh 'docker push your-docker-username/your-image-name:latest'
        //        }
        //    }
        //}
        //stage('Deploy to Server') {
        //    steps {
        //        withCredentials([sshUserPrivateKey(credentialsId: 'your-ssh-key-id', keyFileVariable: 'SSH_KEY_FILE', usernameVariable: 'SSH_USER')]) {
        //            sh "ansible-playbook -i 'your-server-ip,' deploy.yml -u $SSH_USER --private-key=$SSH_KEY_FILE"
        //        }
        //    }
        //}
    }
}
