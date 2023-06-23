variable "folders" {
  default = [ "Infra", "CI-Pipeline" ]
}

variable "m-jobs" {
  default = [
    { folder = "Infra", name = "roboshop", repo_url = "https://github.com/Praveen-Gaju/roboshop-infra" },
    { folder = "CI-Pipeline", name = "frontend", repo_url = "https://github.com/Praveen-Gaju/frontend" },
    { folder = "CI-Pipeline", name = "catalogue", repo_url = "https://github.com/Praveen-Gaju/catalogue" },
    { folder = "CI-Pipeline", name = "user", repo_url = "https://github.com/Praveen-Gaju/user" },
    { folder = "CI-Pipeline", name = "cart", repo_url = "https://github.com/Praveen-Gaju/cart" },
    { folder = "CI-Pipeline", name = "shipping", repo_url = "https://github.com/Praveen-Gaju/shipping" },
    { folder = "CI-Pipeline", name = "payment", repo_url = "https://github.com/Praveen-Gaju/payment" },
    { folder = "CI-Pipeline", name = "dispatch", repo_url = "https://github.com/Praveen-Gaju/dispatch" }
  ]
}

variable "s-jobs" {
  default = []
}
