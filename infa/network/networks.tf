# Main
resource "unifi_network" "LAN" {
  name = "LAN"
  purpose = "corporate"
  domain_name = "localdomain"
  subnet = "192.168.78.1/24"
  dhcp_start = "192.168.78.100"
  dhcp_stop = "192.168.78.254"
  dhcp_enabled = true
}

# Guest
resource "unifi_network" "Captain_Planet" {
  name = "Captain Planet"
  purpose = "corporate"
  subnet = "192.168.70.1/24"
  vlan_id = 70
  dhcp_start = "192.168.70.50"
  dhcp_stop = "192.168.70.254"
  dhcp_enabled = true
}

# Server
resource "unifi_network" "TEHWHALE" {
  name = "TEHWHALE"
  purpose = "corporate"
  subnet = "192.168.79.1/24"
  vlan_id = 79
  dhcp_start = "192.168.79.100"
  dhcp_stop = "192.168.79.254"
  dhcp_enabled = true
}

# IoT
resource "unifi_network" "Looten_Plunder" {
  name = "Looten Plunder"
  purpose = "corporate"
  subnet = "192.168.72.1/24"
  vlan_id = 72
  igmp_snooping = true
  dhcp_start = "192.168.72.10"
  dhcp_stop = "192.168.72.254"
  dhcp_enabled = true
}
