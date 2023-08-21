resource "jenkins_folder" "folders" {
  count   = length(var.folders)
  name    = element(var.folders, count.index)
}

# Pipeline for single branch pipeline
resource "jenkins_job" "s-job" {
  depends_on  = [jenkins_folder.folders]
  count       = length(var.s-job)
  name        = lookup(element(var.s-job,count.index), "name", null)
  folder      = "/job/${lookup(element(var.s-job,count.index), "folder", null)}"
  template    = templatefile("${path.module}/s-job.xml", {
    repo_url  = lookup(element(var.s-job,count.index), "repo_url", null)
    name      = lookup(element(var.s-job,count.index), "name", null )
    filename  = lookup(element(var.s-job,count.index), "filename", null )
  })

  lifecycle {
    ignore_changes = [ template ]
  }
}

# Pipiline for multi branch Pipiline
resource "jenkins_job" "m-job" {
  depends_on  = [jenkins_folder.folders]
  count       = length(var.m-job)
  name        = lookup(element(var.m-job,count.index), "name", null)
  folder      = "/job/${lookup(element(var.m-job,count.index), "folder", null)}"
  template    = templatefile("${path.module}/mb-job.xml", {
    repo_url  = lookup(element(var.m-job,count.index), "repo_url", null)
    name      = lookup(element(var.m-job,count.index), "name", null )
  })

    lifecycle {
      ignore_changes = [ template ]
    }
}

# route-53 record for creating jenkins server
data "aws_instance" "jenkins" {
  instance_id = "i-04d9e2fbbe101f2f4"
}

resource "aws_route53_record" "jenkins" {
  zone_id     = "Z10378632KDOC11M5RXOI"
  name        = "jenkins.devopspract.online"
  type        = "A"
  ttl         = 30
  records     = [data.aws_instance.jenkins.public_ip]
}
