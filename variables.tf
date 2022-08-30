variable "appconf_id" {
  type = string
  description = "azure app configuration object id"
}

variable "config_item_map" {
  type = object
  description = "map of config item to be stored"
}

variable "config_item_key" {
    type = string
    description = "config item key"
}

variable "config_item_value" {
    type = string
    description = "config item value"
}

variable "config_item_label" {
  type = string
  description = "config item label"
}