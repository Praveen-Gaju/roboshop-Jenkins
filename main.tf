resource "jenkins_folder" "infra" {
  name = "infrastructure"
}

resource "jenkins_job" "job" {
  name     = "roboshop"
  folder   = jenkins_folder.infra.id
  template = templatefile("${path.module}/test-job.xml", {
    description = "An example job created from Terraform"
  })
}

