provider "aci" {
  username = ""
  password = ""
  url      = ""
  insecure = true
}

resource "aci_l3out_loopback_interface_profile" "test" {
  fabric_node_dn = aci_logical_node_to_fabric_node.example.id
  addr           = "1.2.3.5"
  description    = "from terraform"
  annotation     = "l3out_loopback_interface_profile_tag"
  name_alias     = "example"
}
