##### tunnel_peer_gateway #####

name_vpn_gateway      = "vpn-gw-gcp-mgmt-to-aws-uat"
name_router           = "cr-mgmt-gcp-to-aws-uat-vpn-01"
asn                   = "65000"
cus_rt_psc_range      = "10.16.112.0/20"
ike_version           = 2
name_peer_vpn_gateway = "peer-gw-gcp-mgmt-to-aws-uat"
redundancy_type       = "FOUR_IPS_REDUNDANCY"
vir_pvt_gat_asn       = "64512"

router_int_name1 = "rt-if-gcp-mgmt-to-aws-uat-01"
router_int_name2 = "rt-if-gcp-mgmt-to-aws-uat-02"
router_int_name3 = "rt-if-gcp-mgmt-to-aws-uat-03"
router_int_name4 = "rt-if-gcp-mgmt-to-aws-uat-04"

router_peer_name1 = "rt-peer-gcp-mgmt-to-aws-uat-01"
router_peer_name2 = "rt-peer-gcp-mgmt-to-aws-uat-02"
router_peer_name3 = "rt-peer-gcp-mgmt-to-aws-uat-03"
router_peer_name4 = "rt-peer-gcp-mgmt-to-aws-uat-04"

name_tunnel_1 = "tunnel-gcp-mgmt-to-aws-uat-01"
name_tunnel_2 = "tunnel-gcp-mgmt-to-aws-uat-02"
name_tunnel_3 = "tunnel-gcp-mgmt-to-aws-uat-03"
name_tunnel_4 = "tunnel-gcp-mgmt-to-aws-uat-04"

shared_secret_tunnel_1 = "nF5RJo6dzzUWxWUAKJPDgVRW.7H_F3ND"
shared_secret_tunnel_2 = "tGyh1tqKVSLJFMzcTVm08AkEud2RwJ8x"
shared_secret_tunnel_3 = "ZwWriqfuYSZ2JPVgcsjt63ipmCWHk69a"
shared_secret_tunnel_4 = "AYg4epMTvKJeq3mED5LvzZt1a0PakJdu"

vir_pvt_gat_out_ip_address_1 = "52.44.21.214"
vir_pvt_gat_out_ip_address_2 = "52.54.206.194"
vir_pvt_gat_out_ip_address_3 = "3.86.134.58"
vir_pvt_gat_out_ip_address_4 = "3.223.130.117"

cus_gat_ins_ip_add_1 = "169.254.46.194/30"
cus_gat_ins_ip_add_2 = "169.254.83.230/30"
cus_gat_ins_ip_add_3 = "169.254.162.78/30"
cus_gat_ins_ip_add_4 = "169.254.56.166/30"

vir_pvt_gat_ins_ip_add_1 = "169.254.46.193"
vir_pvt_gat_ins_ip_add_2 = "169.254.83.229"
vir_pvt_gat_ins_ip_add_3 = "169.254.162.77"
vir_pvt_gat_ins_ip_add_4 = "169.254.56.165"

# reg_ip_add                   = "10.40.0.0/16"


