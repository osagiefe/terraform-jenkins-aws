pipeline{
    agent any
    parameters {
        
        
        choice choices: ['apply', 'destroy'], description: '''Choose your terraform action
        ''', name: 'action'
    }
    stages{
         stage("GitHub checkout") {
            steps {
                script {
 
                    git branch: 'main', url: 'https://github.com/osagiefe/terraform-jenkins-aws.git' 
                }
            }
        }

        stage("starting the process"){
            steps{
                
                sh 'printenv'
            }
        }
        stage("Terraform init stage"){
            steps{
            
                sh'terraform init'
                
            }
        }
        stage("Terraform format stage"){
            steps{
            
                sh'terraform fmt'
                
            }
        }
        stage("Terraform validate stage"){
            steps{
            
                sh'terraform validate'
                
            }
        }
        stage("Terraform plan stage"){
            steps{
                sh'terraform plan'
                
            }
        }
       
        stage("Terraform approval stage"){
             when {
                expression {
                    //return params.Appenv
                    return params.action=="apply"
                }
            }
             
            steps{
                
                
                echo "You want to ${params.action} the resources highlighted"
                sh'terraform ${action} --auto-approve'
            }
         }
         stage("Terraform destroy stage"){
             when {
                expression {
                    //return params.Appenv
                    return params.action=="destroy"
                }
            }
             
            steps{
                
                
                echo "You want to ${params.action} the resources highlighted"
                sh'terraform ${action} --auto-approve'
            }
         }
    }


}

