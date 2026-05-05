locals {
  tags = {
    environment  = var.env
    owner        = "cloud-team"
    cost-center  = "engineering"
    managed-by   = "terraform"
  }
}
