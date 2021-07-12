variable "username" {
  type = string
  sensitive = true
}
variable "password" {
  type = string
  sensitive = true
}
variable "api_url" {
  type = string
  sensitive = true
}

variable "the_planeteers_password" {
  type = string
  sensitive = true
}

variable "captain_planet_password" {
  type = string
  sensitive = true
}

variable "looten_plunder_password" {
  type = string
  sensitive = true
}

provider "unifi" {
  username = var.username
  password = var.password
  api_url  = var.api_url
  allow_insecure = true
}

data "unifi_ap_group" "default" {
}

data "unifi_user_group" "default" {
}
