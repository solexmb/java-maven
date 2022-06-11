def buildJar() {
    echo "building the application..."
    sh 'mvn package'
}

def buildAndPushImage() {
    echo "building the docker image..."
    withCredentials([usernamePassword(credentialsId: 'docker-hub-credential', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
        sh 'docker build -t solexb/demo-app:jma-2.0 .'
        sh "echo $PASS | docker login -u $USER --password-stdin"
        sh "docker push solexb/demo-app:jma-2.0"
    }
}

def deployApp() {
    echo 'deploying the application'
}

return this