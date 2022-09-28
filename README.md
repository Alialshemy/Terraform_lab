# iti_terraform_lab1
#1- network resources into network module 
#2-create two workspaces dev and prod
#3-create two variable definition files(.tfvars) for the two environments
#7- create security group which allow ssh from 0.0.0.0/0
#8- create security group that allow ssh and port 3000 from vpc cidr only
#7- create ec2(bastion) in public subnet with security group from 7
#8- create ec2(application) private subnet with security group from 8
#9- run local-exec provisioner to print the public_ip of bastion ec2
#10-verify your email in ses service
#11- create lambda function to send email
#12- create trigger to detect changes in state file and send the email
#13- create rds
#14- create elastic cache
#4-apply your code to create two environments one in us-east-1 and eu-central-1
#5- upload infrastructure code on github project
