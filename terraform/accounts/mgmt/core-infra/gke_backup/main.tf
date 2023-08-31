
module "gke_bkp_plan" {
  source          = "../../../../modules/gke/gke_bkp"
  env             = var.env
  bkp_retain_days = "7"
  cron_schedule   = "00 08 * * *"
  location        = "ap-south-2"
}