module "vpc" {
  source = "https://github.com/SurendraBabuC/tf-module-vpc.git"

  for_each = var.vpc
  cidr_block = each.value["cidr_block"]
  tags = local.tags
  env = var.env
}