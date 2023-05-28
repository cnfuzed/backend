pipeline {
  agent any

  stages {
    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Terraform Plan') {
      steps {
        sh 'terraform plan -lock=false'
      }
    }

    stage('Terraform Apply') {
      steps {
        sh 'terraform apply -auto-approve -lock=false'
      }
    }
  }
}
