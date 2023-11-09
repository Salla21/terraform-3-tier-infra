locals {
  project_tags = {
    Contact = "devops@netflix.com"
    Application = "payments"
    CreationTime = formatdate("DD MMM YYYY hh:mm ZZZ",timestamp())
    project = "jjtech"
    environment = "${terraform.workspace}"
    
  }
}

