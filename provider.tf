terraform {
  required_providers {
    jenkins = {
      source = "taiidani/jenkins"
    }
  }
}


provider "jenkins" {
  server_url = "http://172.31.13.247:8080"
  username   = data.aws_ssm_parameter.jenkins_user.value
  password   = data.aws_ssm_parameter.jenkins_password.value
}

data "aws_ssm_parameter" "jenkins_user" {
  name = "jenkins.user"
}

data "aws_ssm_parameter" "jenkins_password" {
  name = "jenkins.password"
}

