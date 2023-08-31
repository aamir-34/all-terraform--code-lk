module "service-account" {
  source       = "../../../../../modules/service-account"
  account_id   = var.sa_apps_account_id
  display_name = var.sa_apps_display_name
  description  = var.sa_apps_description
  project      = var.project
}
module "member_roles" {
  source                  = "../../../../../modules/member_iam"
  service_account_address = module.service-account.service_account_email 
  project                 = var.project
  project_roles           = var.project_roles 
  prefix                  = var.prefix        
}
