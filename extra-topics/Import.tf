import {
   to = aws_security_group.manual-sg
   id = "sg-06f60016e8833560d"
 }



# # Add a provider block as well
# # terraform plan -generate-config-out="sg.tf" >>>>>>> To create a plan to run later and save it to an empty file!
# # terraform apply
# # in terraform 1.5 version you can auto generate the code and can change the configuration as well.

# # 1. Add the Security Group in the Terraform configuration file (main.tf).
# # Example:

# # resource "aws_security_group" "blessed-SG-3" {
# #   id = "sg-00b849b391b1c559a"
# # }

# # 2. Run the following command to Import the Security Group in Terraform's state file:
# # terraform import aws_security_group.blessed-SG-3 sg-00b849b391b1c559a

# # 3. Delete the block that was added in the step #1 from the Configuration file (main.tf).
# # 4. Run 'terraform apply'
# # 5. Check the console and make sure the Security Group is deleted.