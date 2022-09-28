 iti_terraform_lab1 <br />
1- network resources into network module  <br />
2-create two workspaces dev and prod <br />
3-create two variable definition files(.tfvars) for the two environments <br />
7- create security group which allow ssh from 0.0.0.0/0 <br />
8- create security group that allow ssh and port 3000 from vpc cidr only <br />
7- create ec2(bastion) in public subnet with security group from 7 <br />
8- create ec2(application) private subnet with security group from 8 <br />
9- run local-exec provisioner to print the public_ip of bastion ec2 <br />
10-verify your email in ses service <br />
11- create lambda function to send email <br />
12- create trigger to detect changes in state file and send the email <br />
13- create rds <br />
14- create elastic cache <br />
4-apply your code to create two environments one in us-east-1 and eu-central-1 <br />
5- upload infrastructure code on github project <br />
