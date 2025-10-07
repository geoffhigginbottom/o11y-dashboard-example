provider "signalfx" {
  auth_token = var.access_token
  api_url    = var.api_url
}

# provider "signalfx" {}

module "dashboards" {
  source           = "./modules/dashboards"
  count            = var.dashboards_enabled ? 1 : 0
  environment      = var.environment
  det_prom_tags_id = module.detectors.*.detector_promoting_tags_id
}

module "detectors" {
  source             = "./modules/detectors"
  count              = var.detectors_enabled ? 1 : 0
  notification_email = var.notification_email
  soc_integration_id = var.soc_integration_id
  soc_routing_key    = var.soc_routing_key
  environment        = var.environment
}