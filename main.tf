# =========================
# vpc
# =========================

module "vpc" {
    source = "./modules/vpc"
    vpc_cidr_block = var.vpc_cidr_block
    vpc_instance_tenancy = var.vpc_instance_tenancy
    vpc_name = "main_vpc"

}

# **********
# subnets
# **********

module "subnets" {
  source = "./modules/subnets"

  vpc_id = module.vpc.vpc_id

  public_subnet_id         = var.public_subnet_id
  public_subnet_cidr_block = var.public_subnet_cidr_block
  public_availability_zone = var.public_availability_zone

  private_subnet_id         = var.private_subnet_id
  private_subnet_cidr_block = var.private_subnet_cidr_block
  private_availability_zone = var.private_availability_zone

  db_subnet_id              = var.db_subnet_id
  db_subnet_cidr_block      = var.db_subnet_cidr_block
  db_availability_zone      = var.db_availability_zone
}

# =========================
# internet gateway
# ========================= 

module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
}

# =========================
# nat gateway
# =========================

module "nat_gateway" {
  source            = "./modules/nat_gateway"
  public_subnet_ids = module.subnets.public_subnet_ids
  eip_name          = "nat-eip"
  nat_gateway_name  = "main-nat-gateway"
}

# =========================
# route tables
# =========================

module "route_tables" {
  source = "./modules/route_tables"

  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.subnets.public_subnet_ids
  private_subnet_ids = module.subnets.private_subnet_ids

  internet_gateway_id = module.internet_gateway.internet_gateway_id
  nat_gateway_id      = module.nat_gateway.nat_gateway_id
}


# =========================
# Key Pair Module
# =========================
module "key_pair" {
  source         = "./modules/key_pair"
  key_pair_name  = var.key_pair_name
  public_key     = var.public_key
}

module "security_groups" {
  source        = "./modules/security_groups"
  vpc_id        = module.vpc.vpc_id
  admin_ip_cidr = var.admin_ip_cidr
}


# =========================
# Public ALB (internet-facing)
# =========================

module "alb_public" {
  source            = "./modules/alb"
  name              = "alb-public"
  subnet_ids        = module.subnets.public_subnet_ids
  security_group_ids = [module.security_groups.web_sg_id]
  scheme            = "internet-facing"
  vpc_id            = module.vpc.vpc_id
  port              = 80
}

# # =========================
# # Internal ALB (private)
# # =========================
# module "alb_internal" {
#   source            = "./modules/alb"
#   name              = "alb-internal"
#   subnet_ids        = module.subnets.private_subnet_ids
#   security_group_ids = [module.security_groups.app_sg_id] # or dedicated internal sg
#   scheme            = "internal"
#   vpc_id            = module.vpc.vpc_id
#   port              = 80
# }


# # =========================
# # Launch Templates (one for web, one for app)
# # =========================

# module "lt_web" {
#   source = "./modules/launch_template"
#   name   = "web-lt"
#   ami    = var.web_ami_id
#   instance_type = var.web_instance_type
#   key_name = module.key_pair.key_pair_name
#   security_group_ids = [module.security_groups.web_sg_id]
#   user_data = file("scripts/web-userdata.sh") # optional
# }

# module "lt_app" {
#   source = "./modules/launch_template"
#   name   = "app-lt"
#   ami    = var.app_ami_id
#   instance_type = var.app_instance_type
#   key_name = module.key_pair.key_pair_name
#   security_group_ids = [module.security_groups.app_sg_id]
#   user_data = file("scripts/app-userdata.sh") # optional
# }

# # =========================
# # ASG for public (web) -> targets public ALB TG
# # =========================

# module "asg_web" {
#   source = "./modules/asg"
#   name   = "asg-web"
#   launch_template_id = module.lt_web.launch_template_id
#   launch_template_version = module.lt_web.launch_template_latest_version
#   vpc_zone_identifier = module.subnets.public_subnet_ids   # public ASG in public subnets
#   target_group_arns = [module.alb_public.target_group_arn]
#   min_size = var.web_asg_min
#   desired_capacity = var.web_asg_desired
#   max_size = var.web_asg_max
# }

# # =========================
# # ASG for private (app) -> targets internal ALB TG
# # =========================

# module "asg_app" {
#   source = "./modules/asg"
#   name   = "asg-app"
#   launch_template_id = module.lt_app.launch_template_id
#   launch_template_version = module.lt_app.launch_template_latest_version
#   vpc_zone_identifier = module.subnets.private_subnet_ids
#   target_group_arns = [module.alb_internal.target_group_arn]
#   min_size = var.app_asg_min
#   desired_capacity = var.app_asg_desired
#   max_size = var.app_asg_max
# }
