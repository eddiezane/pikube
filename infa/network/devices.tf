resource "unifi_device" "Dream_Machine_Pro" {
  name = "Dream Machine Pro"

  # 192.168.78.21
  port_override {
    number = 2
    name = "TEHFIREFLY APC"
  }

  # 192.168.79.9
  port_override {
    number = 4
    name = "TEHWHALE iDRAC"
    port_profile_id = data.unifi_port_profile.TEHWHALE.id
  }

  port_override {
    number = 11
    name = "SFP+ 2"
    port_profile_id = unifi_port_profile.Dream_Machine_Pro_SFP2.id
  }
}

resource "unifi_device" "Living_Room_Switch" {
  name = "Living Room Switch"

  port_override {
    number = 3
    name = "Living Room TV"
    port_profile_id = data.unifi_port_profile.Looten_Plunder.id
    # port_profile_id = unifi_port_profile.Looten_Plunder_No_POE.id
  }

  port_override {
    number = 8
    name = "Living Room AP"
    port_profile_id = unifi_port_profile.Living_Room_Switch_Passthrough.id
  }
}

resource "unifi_device" "Network_Closet_Switch" {
  name = "Network Closet Switch"

  port_override {
    number = 1
    name = "Office Switch"
  }

  port_override {
    number = 2
    name = "Living Room Switch"
  }

  port_override {
    number = 3
    name = "Guest Bedroom AP"
  }

  port_override {
    number = 5
    name = "TEHWHALE NIC 4"
    port_profile_id = data.unifi_port_profile.TEHWHALE.id
  }

  port_override {
    number = 6
    name = "TEHWHALE NIC 3"
    port_profile_id = data.unifi_port_profile.TEHWHALE.id
  }

  # Aggregate bond with port 8
  # 192.168.79.10
  # Proxmox
  port_override {
    number = 7
    name = "TEHWHALE NIC 2"
    port_profile_id = data.unifi_port_profile.TEHWHALE.id
  }

  # Aggregate bond with port 7
  # 192.168.79.10
  # Proxmox
  port_override {
    number = 8
    name = "TEHWHALE NIC 1"
    port_profile_id = data.unifi_port_profile.TEHWHALE.id
  }

  port_override {
    number = 9
    name = "UDM P Uplink"
    port_profile_id = unifi_port_profile.Network_Closet_Switch_SFP1.id
  }
}
