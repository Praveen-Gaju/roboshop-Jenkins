variable "folders" {
  default = [ "Infra", "CI-Pipeline" ]
}

variable "jobs" {
  default = [
    { folder = "Infra", name = "roboshop", repo_url = "https://github.com/Praveen-Gaju/roboshop-infra" },
    { folder = "CI-Pipeline", name = "frontend", repo_url = "https://github.com/Praveen-Gaju/frontend.git" },
    { folder = "CI-Pipeline", name = "catalogue", repo_url = "https://github.com/Praveen-Gaju/catalogue.git" },
    { folder = "CI-Pipeline", name = "user", repo_url = "https://github.com/Praveen-Gaju/user.git" },
    { folder = "CI-Pipeline", name = "cart", repo_url = "https://github.com/Praveen-Gaju/cart.git" },
    { folder = "CI-Pipeline", name = "shipping", repo_url = "https://github.com/Praveen-Gaju/shipping.git" },
    { folder = "CI-Pipeline", name = "payment", repo_url = "https://github.com/Praveen-Gaju/payment.git" },
    { folder = "CI-Pipeline", name = "dispatch", repo_url = "https://github.com/Praveen-Gaju/dispatch.git" }
  ]
}
