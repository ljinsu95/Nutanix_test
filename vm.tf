### https://registry.terraform.io/providers/nutanix/nutanix/latest/docs/resources/virtual_machine
resource "nutanix_virtual_machine" "rocky9" {
  name                 = "${var.prefix}-rocky9"
  cluster_uuid         = data.nutanix_cluster.cluster.id
  num_sockets          = 4
  num_vcpus_per_socket = 1
  memory_size_mib      = 4096
  machine_type         = "PC"

  disk_list {
    device_properties {
      device_type = "DISK"
      disk_address = {
        adapter_type = "SCSI"
        device_index = "0"
      }
    }

    disk_size_bytes = 107374182400
    disk_size_mib   = 102400

    storage_config {
      storage_container_reference {
        kind = "storage_container"
        # name = var.nutanix_storage_name
        uuid = var.nutanix_storage_uuid
      }
    }
  }

  disk_list {
    device_properties {
      device_type = "CDROM"
      disk_address = {
        adapter_type = "IDE"
        device_index = "0"
      }
    }

    disk_size_bytes = 0
    disk_size_mib   = 0
  }

  nic_list {
    nic_type = "NORMAL_NIC"
    # subnet_name = var.nutanix_nic_name
    subnet_uuid = var.nutanix_nic_subnet_uuid
  }
}
