module "vpc1" {
  source  = "SalmonRizoev/vpc1/aws"
  version = "0.1.0"

  vpc_cidar = "172.31.0.0/16"
  subnet1_cidar = "172.31.1.0/24"
  subnet2_cidar = "172.31.1.0/24"
  environment = "qa"
} 