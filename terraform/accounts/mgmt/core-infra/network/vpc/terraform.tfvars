project               = "lk-mgmt-apps"
network_name          = "lk-vpc-mgmt"
routing_mode          = "GLOBAL"
subnet_region         = "asia-south1"
subnet_private_access = "true"



#### Shared Subnet Details ####
shared_subnet_name                 = "lk-subnet-mgmt-shared-as1"
shared_subnet_ip                   = "10.40.8.0/21"
shared_subnet_pod_sc_range_name    = "lk-sc-mgmt-gke-pod-ranges-as1" 
shared_subnet_pod_sc_ip_cidr_range = "10.200.0.0/16"
shared_subnet_svc_sc_range_name    = "lk-sc-mgmt-gke-svc-ranges-as1"
shared_subnet_svc_sc_ip_cidr_range = "10.100.0.0/16"

#### App Subnet Details ####
app_subnet_name                 = "lk-subnet-mgmt-app-as1"
app_subnet_ip                   = "10.40.16.0/21"
app_subnet_pod_sc_range_name    = "lk-sc-mgmt-gke-pod-ranges-as1"
app_subnet_pod_sc_ip_cidr_range = "10.201.0.0/16"
app_subnet_svc_sc_range_name    = "lk-sc-mgmt-gke-pod-ranges-as1"
app_subnet_svc_sc_ip_cidr_range = "10.101.0.0/16"

#### db Subnet Details ####
db_subnet_name = "lk-subnet-mgmt-db-as1"
db_subnet_ip   = "10.40.24.0/21"

#### Proxy Subnet Details ####
proxy_subnet_name = "lk-subnet-mgmt-proxy-as1"
proxy_subnet_ip   = "10.40.24.0/21"
purpose           = "REGIONAL_MANAGED_PROXY"
role              = "ACTIVE"