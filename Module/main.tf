module "rg" {
  source = "../Child/RG"
  rg = "riteshrg11"
  location = "West Europe"
}

module "stg" {
  source = "../Child/STG"
  depends_on = [ module.rg ]
rg = "riteshrg11"
  location = "West Europe"
  stg = "riteshstg"
  account_tier = "Standard"
  account_replication_type = "GRS"
}