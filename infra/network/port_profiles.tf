data "unifi_port_profile" "All" {
  name = "All"
}

data "unifi_port_profile" "LAN" {
  name = "LAN"
  depends_on = [unifi_network.LAN]
}

data "unifi_port_profile" "TEHWHALE" {
  name = "TEHWHALE"
  depends_on = [unifi_network.TEHWHALE]
}

data "unifi_port_profile" "Captain_Planet" {
  name = "Captain Planet"
  depends_on = [unifi_network.Captain_Planet]
}

data "unifi_port_profile" "Looten_Plunder" {
  name = "Looten Plunder"
  depends_on = [unifi_network.Looten_Plunder]
}

resource "unifi_port_profile" "Dream_Machine_Pro_SFP2" {
  name = "Dream Machine Pro SFP2"
  native_networkconf_id = unifi_network.LAN.id
  autoneg = false
  speed = 1000
  full_duplex = true
  poe_mode = "off"

  # This is probably a bug. Forward is a hidden option that adds all vlans
  forward = "all"
  # tagged_networkconf_ids = [unifi_network.TEHWHALE.id, unifi_network.Looten_Plunder.id]
}

resource "unifi_port_profile" "Network_Closet_Switch_SFP1" {
  name = "Network Closet Switch SFP1"
  native_networkconf_id = unifi_network.LAN.id
  autoneg = false
  speed = 1000
  full_duplex = true
  poe_mode = "off"

  # This is probably a bug. Forward is a hidden option that adds all vlans
  forward = "all"
  # tagged_networkconf_ids = [unifi_network.TEHWHALE.id, unifi_network.Looten_Plunder.id]
}

resource "unifi_port_profile" "Living_Room_Switch_Passthrough" {
  name = "Living Room Switch Passthrough"
  native_networkconf_id = unifi_network.LAN.id
  autoneg = false
  speed = 1000
  full_duplex = true
  poe_mode = "passthrough"

  # This is probably a bug. Forward is a hidden option that adds all vlans
  forward = "all"
  # tagged_networkconf_ids = [unifi_network.TEHWHALE.id, unifi_network.Looten_Plunder.id]
}
