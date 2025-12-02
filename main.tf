module "vpc" {
    source = "./modules/vpc"
    vpc_cidr_block = var.vpc_cidr_block
    vpc_instance_tenancy = var.vpc_instance_tenancy
    vpc_name = "main_vpc"

}

module "subnet" {
    source = "./modules/subnets"
    vpc_id = module.vpc.vpc_id
    public_subnet_name         = var.public_subnet_name
    public_subnet_cidr_block   = var.public_subnet_cidr_block
    public_availability_zone   = var.public_availability_zone

    private_subnet_name        = var.private_subnet_name
    private_subnet_cidr_block  = var.private_subnet_cidr_block
    private_availability_zone  = var.private_availability_zone
    
}

module "internet_gateway" {
    source = "./modules/internet_gateway"
    vpc_id = module.vpc.vpc_id
    internet_gateway = var.internet_gateway
}


