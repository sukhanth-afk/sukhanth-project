provider "aws" {
    region="ap-south-1"
}

module "vpc_module" {
    source = "./vpc_module"
    
}

module "network_module" {
    vpc_id="${module.vpc_module.vpc_id}"
    source = "./network_module"
    
}


