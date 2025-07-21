module "rg" {
  source = "../Child/RG"
  rg = "riteshrg"
  location = "West Europe"
}

module "stg" {
  source = "../Child/STG"
  depends_on = [ module.rg ]
rg = "riteshrg"
  location = "West Europe"
  stg = "riteshstg"
  account_tier = "Standard"
  account_replication_type = "GRS"
}