########## GCE/mgmt-vm ##########

zone                = "asia-south1-a"
image               = "ubuntu-2204-jammy-v20230714"
can_ip_forward      = false
deletion_protection = true
enable_display      = false
machine_type        = "e2-medium"
mgmt_vm_name        = "lk-vm-mgmt-as1-01"
subnetwork_project  = "lk-mgmt-apps"
queue_count         = "0"
stack_type          = "IPV4_ONLY"
subnetwork          = "lk-subnet-mgmt-shared-as2"
min_node_cpus       = "0"
on_host_maintenance = "MIGRATE" // if preemptible is true then the value should to be  "TERMINATE"
preemptible         = "false"
email               = "lk-sa-mgmt-apps@lk-mgmt-apps.iam.gserviceaccount.com"
scopes              = ["cloud-platform"]
tags                = ["allow-ssh", "mgmt"]
size                = "50"

