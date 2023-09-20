variable "folders" {
  default = [ "Infra", "CI-Pipeline" ]
}

variable "m-job" {
  default = [
    { folder = "CI-Pipeline", name = "frontend", repo_url = "https://github.com/Praveen-Gaju/frontend" },
    { folder = "CI-Pipeline", name = "catalogue", repo_url = "https://github.com/Praveen-Gaju/catalogue" },
    { folder = "CI-Pipeline", name = "user", repo_url = "https://github.com/Praveen-Gaju/user" },
    { folder = "CI-Pipeline", name = "cart", repo_url = "https://github.com/Praveen-Gaju/cart" },
    { folder = "CI-Pipeline", name = "shipping", repo_url = "https://github.com/Praveen-Gaju/shipping" },
    { folder = "CI-Pipeline", name = "payment", repo_url = "https://github.com/Praveen-Gaju/payment" },
    { folder = "CI-Pipeline", name = "dispatch", repo_url = "https://github.com/Praveen-Gaju/dispatch" },
    { folder = "CI-Pipeline", name = "aws-ssm-param-store", repo_url = "https://github.com/Praveen-Gaju/aws-ssm-param-store" }
  ]
}

variable "s-job" {
  default = [
    { folder = "Infra", name = "roboshop", repo_url = "https://github.com/Praveen-Gaju/roboshop-infra", filename="Jenkinsfile" },
    { folder = "Infra", name = "App-Deployment", repo_url = "https://github.com/Praveen-Gaju/roboshop-ansible" , filename="Jenkinsfile-deployment" },
    { folder = "Infra", name = "Helm-Deployment", repo_url = "https://github.com/Praveen-Gaju/roboshop-helm-chart" , filename="Jenkinsfile" }
  ]
}
