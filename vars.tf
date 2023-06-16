variable "folders" {
  default = [ "Infra" ]
}

variable "jobs" {
  default = [
    {folder = "Infra", name = "roboshop", repo_url = "https://github.com/Praveen-Gaju/roboshop-infra.git" }
  ]
}
