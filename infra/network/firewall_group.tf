resource "unifi_firewall_group" "Chromecast_TCP" {
  name = "Chromecast TCP"
  type = "port-group"
  members = ["8008-8009", "8443"]
}

resource "unifi_firewall_group" "Chromecast_UDP" {
  name = "Chromecast UDP"
  type = "port-group"
  members = ["32768-61000"]
}
resource "unifi_firewall_group" "Chromecast_UDP_SSDP" {
  name = "Chromecast UDP SSDP"
  type = "port-group"
  members = ["1900"]
}
