# Module to deploy basic networking 
module "vpc-prod" {
  #source = "/home/ec2-user/environment/modules_assign2/aws_network"
  source = "git::https://github.com/Gaurav-17/gitdemo.git//modules_project/aws_network"
  env                 = var.env
  vpc_cidr            = var.vpc_cidr
  public_cidr_blocks  = var.public_subnet_cidrs
  private_cidr_blocks = var.private_subnet_cidrs
  prefix              = var.prefix
  default_tags        = var.default_tags
}
