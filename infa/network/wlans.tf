resource "unifi_wlan" "The_Planeteers" {
  name       = "The Planeteers"
  passphrase = var.the_planeteers_password
  security   = "wpapsk"
  wlan_band  = "both"
  no2ghz_oui = false
  network_id    = unifi_network.LAN.id
  ap_group_ids  = [data.unifi_ap_group.default.id]
  user_group_id = data.unifi_user_group.default.id
}

resource "unifi_wlan" "Captain_Planet" {
  name       = "Captain Planet"
  passphrase = var.captain_planet_password
  security   = "wpapsk"
  wlan_band  = "both"
  no2ghz_oui = false
  network_id    = unifi_network.Captain_Planet.id
  ap_group_ids  = [data.unifi_ap_group.default.id]
  user_group_id = data.unifi_user_group.default.id
}

resource "unifi_wlan" "Looten_Plunder" {
  name       = "Looten Plunder"
  passphrase = var.looten_plunder_password
  security   = "wpapsk"
  wlan_band  = "both"
  no2ghz_oui = false
  network_id    = unifi_network.Looten_Plunder.id
  ap_group_ids  = [data.unifi_ap_group.default.id]
  user_group_id = data.unifi_user_group.default.id
}
