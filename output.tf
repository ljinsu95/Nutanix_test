# ISCSI Data Services IP 조회
output "nutanix_cluster_iscsi_data_services_ip" {
  value = data.nutanix_cluster.cluster.external_data_services_ip
}

# output "name" {
#   value = data.nutanix_virtual_machine.nutanix_virtual_machine
# }


# data "nutanix_virtual_machine" "nutanix_virtual_machine" {
#  vm_id = "8a13e0aa-41c3-4d82-832f-2f451a9cccc9"
# }

output "vm_rocky9" {
  depends_on = [ nutanix_virtual_machine.rocky9 ]
  value = nutanix_virtual_machine.rocky9
}