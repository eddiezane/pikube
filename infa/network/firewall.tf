resource "unifi_firewall_rule" "chrome" {
  name    = "chrome"
  rule_index = 2005
  ruleset = "LAN_IN"
  action  = "accept"
  protocol = "udp"
  src_network_id = unifi_network.Looten_Plunder.id
  dst_firewall_group_ids = [unifi_firewall_group.Chromecast_UDP_SSDP.id]
}

resource "unifi_firewall_rule" "LAN_Established_Related" {
  name    = "LAN - Established/Related"
  rule_index = 2010
  ruleset = "LAN_IN"
  action  = "accept"
  protocol = "all"
  dst_network_id = unifi_network.LAN.id
  state_established = true
  state_related = true
}

resource "unifi_firewall_rule" "Looten_Plunder_Established_Related" {
  name    = "Looten Plunder - Established/Related"
  rule_index = 2011
  ruleset = "LAN_IN"
  action  = "accept"
  protocol = "all"
  dst_network_id = unifi_network.Looten_Plunder.id
  state_established = true
  state_related = true
}

resource "unifi_firewall_rule" "TEHWHALE_Established_Related" {
  name    = "TEHWHALE - Established/Related"
  rule_index = 2013
  ruleset = "LAN_IN"
  action  = "accept"
  protocol = "all"
  dst_network_id = unifi_network.TEHWHALE.id
  state_established = true
  state_related = true
}

resource "unifi_firewall_rule" "Looten_Plunder_Allow_LAN" {
  name    = "Looten Plunder - Allow LAN"
  rule_index = 2020
  ruleset = "LAN_IN"
  action  = "accept"
  protocol = "all"
  dst_network_id = unifi_network.Looten_Plunder.id
  src_network_id = unifi_network.LAN.id
}

resource "unifi_firewall_rule" "Looten_Plunder_Allow_TEHWHAL" {
  name    = "Looten Plunder - Allow TEHWHALE"
  rule_index = 2021
  ruleset = "LAN_IN"
  action  = "accept"
  protocol = "all"
  dst_network_id = unifi_network.Looten_Plunder.id
  src_network_id = unifi_network.TEHWHALE.id
}

resource "unifi_firewall_rule" "Looten_Plunder_Allow_Captain_Planet_Chromecast_TCP" {
  name    = "Looten Plunder Allow Captain Planet Chromecast TCP"
  rule_index = 2030
  ruleset = "LAN_IN"
  action  = "accept"
  protocol = "tcp"
  dst_network_id = unifi_network.Looten_Plunder.id
  dst_firewall_group_ids = [unifi_firewall_group.Chromecast_TCP.id]
  src_network_id = unifi_network.Captain_Planet.id
}

resource "unifi_firewall_rule" "Looten_Plunder_Allow_Captain_Planet_Chromecast_UDP" {
  name    = "Looten Plunder Allow Captain Planet Chromecast UDP"
  rule_index = 2031
  ruleset = "LAN_IN"
  action  = "accept"
  protocol = "udp"
  dst_network_id = unifi_network.Looten_Plunder.id
  dst_firewall_group_ids = [unifi_firewall_group.Chromecast_UDP.id]
  src_network_id = unifi_network.Captain_Planet.id
}

resource "unifi_firewall_rule" "TEHWHALE_Allow_LAN" {
  name    = "TEHWHALE - Allow LAN"
  rule_index = 2022
  ruleset = "LAN_IN"
  action  = "accept"
  protocol = "all"
  dst_network_id = unifi_network.TEHWHALE.id
  src_network_id = unifi_network.LAN.id
}

resource "unifi_firewall_rule" "LAN_Drop_All" {
  name    = "LAN - Drop All"
  rule_index = 2040
  ruleset = "LAN_IN"
  action  = "drop"
  protocol = "all"
  dst_network_id = unifi_network.LAN.id
}

resource "unifi_firewall_rule" "Looten_Plunder_Drop_All" {
  name    = "Looten Plunder - Drop All"
  rule_index = 2050
  ruleset = "LAN_IN"
  action  = "drop"
  protocol = "all"
  dst_network_id = unifi_network.Looten_Plunder.id
}

resource "unifi_firewall_rule" "TEHWHALE_Drop_All" {
  name    = "TEHWHALE - Drop All"
  rule_index = 2060
  ruleset = "LAN_IN"
  action  = "drop"
  protocol = "all"
  dst_network_id = unifi_network.TEHWHALE.id
}
