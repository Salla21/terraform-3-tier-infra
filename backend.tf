terraform {
  backend "s3" {
    bucket = "kabir-backend-jjtech"
    key    = "state-file/terraform.tfstate"
    region = "eu-central-1"
    workspace_key_prefix = "env"
    dynamodb_table = "import-backend-extra-topics"
  }
}

# HOW TO STORE TERRAFORM STATE FILE IN AMAZON S3
# 1. Create an s3 bucket using the AWS console and name it "your-unique-bucket-name"
#    and specify the AWS region of your choice.
   
# 2. To configure Terraform to store state in the S3 bucket, you need to add a backend 
#    configuration block to your Terraform configuration. Typically, this goes in a 
#    separate .tf file (e.g., backend.tf) to keep your main configuration clean. Here's 
#    an example of a backend configuration block: 
   
#    terraform {
#   backend "s3" {
#     bucket         = "your-unique-bucket-name"
#     key            = "state-files/terraform.tfstate"   # Optional: Change this to a specific key if desired
#     region         = "your-preferred-region"
#     encrypt        = true  (Optional) Set to true if you want to enable server-side encryption for the state file in S3.
#     DynamoDB_table = "terraform-lock"      # Optional: Enable state locking with DynamoDB
#   }
# }

# 3. Initialize and Apply
#    After configuring the backend, run the following commands in your Terraform project directory:
#    (i) terraform init: Initialize the backend and download any necessary plugins.
#    (ii) terraform plan
#    (ii1)terraform apply: Apply your configuration. When you do this, Terraform will prompt you to 
#    confirm migrating your local state to the S3 backend. Confirm to proceed.
#    Your Terraform state file will now be stored in the S3 bucket you specified, providing a 
#    centralized and more secure location for managing your infrastructure state.

# Note: keep in mind that you should configure appropriate access permissions for the S3 bucket and 
# DynamoDB table to restrict access to only authorized users or roles.

# LOCKING YOUR TERRAFORM STATE FILE USING AMAZON DynamoDB TABLE
# 1. Create a DynamoDB Table using AWS Management Console. Click on create table, specify the name 
#    of your table, for example; "your-unique-table-name". For partition key, use "LockID" and a String.
   
# 2. Configure Backend: Add or update the backend configuration in your Terraform configuration to include
#    the DynamoDB table for state locking. 

# 3. Initialize and Apply: Run the following commands in your Terraform project directory:
#    (i) terraform init: Initialize the backend and download any necessary plugins.
#    (ii) terraform apply: Apply your configuration. During the apply process, Terraform will prompt you 
#    to confirm enabling state locking with DynamoDB. Confirm the prompt to proceed.
#    With these steps, your Terraform state will be locked using the DynamoDB table, and concurrent state 
#    modifications will be prevented.
   
# Note: Make sure to configure appropriate IAM (Identity and Access Management) roles and permissions for 
#       the DynamoDB table to control who can access and manage state