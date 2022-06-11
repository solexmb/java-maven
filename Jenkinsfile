

pipeline {
    agent any
    stages {
        stage("build") {
            steps {
                echo 'building the app'
            }
        }
        stage("test") {
            steps {
                echo 'testing the app'
            }
        }
        stage("deploy") {
            input {
                message "Select the environment to deploy to"
                ok "Done"
                parameters {
                    choice(name: 'ENV', choices: ['dev', 'staging', 'prod'], description: '')
                }
            }
            steps {
                echo 'deploying the app'
                echo "Deploying to ${ENV}"
            }
        }
    }
}