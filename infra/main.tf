module "networking" {
  source         = "./modules/networking"
}

module "instance" {
  source         = "./modules/instance"
  ssh_key        = var.instance_key_file
  user           = var.instance_user
  instance_ami   = var.instance_ami
  ec2_sg_id      = module.networking.ec2_sg_id
}

module "application" {
  source         = "./modules/application"
  image          = var.image
  host           = "ssh://${var.instance_user}@${module.instance.public_ip}:22"
}

module "terraform_state_backend" {
  source = "cloudposse/tfstate-backend/aws"
  version     = "0.33.0"
  namespace  = "infra-study"
  stage      = var.env
  name       = "tf"
  attributes = ["state"]

  terraform_backend_config_file_path = "."
  terraform_backend_config_file_name = "backend.tf"
  force_destroy                      = false
}

module "ssh" {
  source         = "./modules/ssh"
  env            = var.env
}
