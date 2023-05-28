pipeline {
  agent any

  stages {
    stage('Terraform Init') {
      steps {
        sh 'terraform init -no-color'
      }
    }

    stage('Terraform Plan') {
      steps {
        sh 'terraform plan -lock=false -no-color'
      }
    }

    stage('Terraform Apply') {
      steps {
        sh 'terraform apply -auto-approve -lock=false -no-color'
      }
    }
  }
}
