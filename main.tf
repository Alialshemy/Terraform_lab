module "network" {
  
  source                  = "./network"
  vpc_cidr                 = var.vpc_cidr
  public_subnet           = var.public_subnet
  private_subnet          = var.private_subnet
  public_avaibility_zone  = var.public_avaibility_zone
  private_avaibility_zone = var.private_avaibility_zone
  region                  = var.region

}
module "ec2" {
  
  source = "./ec2"
  instances = [{
    ami            = data.aws_ami.ubuntu.id,
    instance_type  = "t2.micro",
    subnet         = module.network.public_subnets[0],
    key_name       = "ali"
    security_group = module.network.public_seg.id,
    tags           = "bastion"

    },
    {
      ami            = data.aws_ami.ubuntu.id,
      instance_type  = "t2.micro",
      subnet         = module.network.private_subnets[0],
      key_name       = "ali"
      security_group = module.network.private_seg.id,
      tags           = "application"

    }
  ]
}
module "send_email" {
 
  source = "./send_emails"
  emails = ["ali.alshemy125@gmail.com","alimohamedalshemy125@gmail.com"]
  
}
module "RDS" {
  source = "./RDS"
  security_group = module.network.db_sql_seg
  subnet_id = module.network.private_subnets
  
  zone = "us-east-1a"
}
module "cach" {
  source = "./radis_cach"
  vpc = module.network.vpc_id
  subnets = module.network.private_subnets
  
}