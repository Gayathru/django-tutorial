#!groovy

node {
    
    stage ("Get Latest Code") {
        checkout scm
    }
    
    stage ("Test") {
        sh 'ssh root@172.31.84.49'
        sh 'virtualenv env -p python3.5'
        sh '. env/bin/activate'
        sh 'env/bin/pip install -r requirements.txt'
    }

    stage ("Deploy") {
        sh './deployment/deploy_prod.sh'
          
    }
  }
  
    
