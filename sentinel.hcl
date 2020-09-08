module "tfplan-functions" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "terraform-vmc-location" {
  source            = "./terraform-vmc-location.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "terraform-vmc-region" {
  source            = "./terraform-vmc-region.sentinel"
  enforcement_level = "soft-mandatory"
}

