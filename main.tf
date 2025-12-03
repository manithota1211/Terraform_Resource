module "vpc" {
    source = "./modules/vpc"
    vpc_cidr_block = var.vpc_cidr_block
    vpc_instance_tenancy = var.vpc_instance_tenancy
    vpc_name = "main_vpc"

}

module "subnet" {
    source = "./modules/subnets"
    vpc_id = module.vpc.vpc_id
    public_subnet_id         = var.public_subnet_id
    public_subnet_cidr_block   = var.public_subnet_cidr_block
    public_availability_zone   = var.public_availability_zone

    private_subnet_id        = var.private_subnet_id
    private_subnet_cidr_block  = var.private_subnet_cidr_block
    private_availability_zone  = var.private_availability_zone
    
}

module "internet_gateway" {
    source = "./modules/internet_gateway"
    vpc_id = module.vpc.vpc_id
    internet_gateway_id = var.internet_gateway_id
}

# nat gw module

module "nat_gateway" {
    source = "./modules/nat_gateway"
    public_subnet_id = module.subnet.public_subnet_id
    eip_name = var.eip_name
    nat_gateway = var.nat_gateway
}


module "route_table" {
    source = "./modules/route_tables"
    public_rt = var.public_rt
    public_rt_cidr = var.public_rt_cidr
    vpc_id = module.vpc.vpc_id
    private_rt = var.private_rt
    private_rt_cidr = var.private_rt_cidr
    internet_gateway_id = module.internet_gateway.internet_gateway_id
    nat_gateway = module.nat_gateway.nat_gateway
    public_subnet_id = module.subnet.public_subnet_id
    private_subnet_id = module.subnet.private_subnet_id

}

module "key_pair" {
    source = "./modules/key_pair"
    key_pair_name = var.key_pair_name
    public_key = var.public_key
}

module "security_group" {
    source = "./modules/security_groups"
    security_group_name = var.security_group_name
    vpc_id = module.vpc.vpc_id
}


module "ec2_instance" {
    source = "./modules/ec2_instance"
    public_instance_ami_id = var.public_instance_ami_id
    count = var.instance_count
    instance_name = var.instance_name
    public_instance_type = var.public_instance_type
    public_subnet_id = module.subnet.public_subnet_id
    key_pair_name = var.key_pair_name
    
    associate_public_ip_address = var.associate_public_ip_address
    private_instance_type = var.private_instance_type
    private_instance_ami_id = var.private_instance_ami_id
    private_instance_name = var.private_instance_name
    instance_count = var.instance_count
    associate_private_ip_address = var.associate_private_ip_address
    private_instance_count = var.private_instance_count
    security_group_id = module.security_group.security_group_id
    private_subnet_id = module.subnet.private_subnet_id


}