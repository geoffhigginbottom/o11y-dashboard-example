# ### AWS Variables ###
# variable "region" {
#   default = "eu-west-3"
# }

### SignalFX Variables ###
variable "environment" {
  default = {}
}
variable "det_prom_tags_id" {
  default = {}
}
variable "access_token" {
  default = {}
}
variable "api_url" {
  default = {}
}
variable "realm" {
  default = {}
}
variable "notification_email" {
  default = {}
}

variable "dashboards_enabled" {
  type = bool
}
variable "detectors_enabled" {
  type = bool
}

### SOC Variables ###
variable "soc_integration_id" {
  default = {}
}
variable "soc_routing_key" {
  default = {}
}