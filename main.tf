resource "proxmox_vm_qemu" "proxmox_vm_master" {
  count       = var.num_masters
  name        = "master-${count.index}"
  target_node = var.pm_node_nome
  clone       = var.template_vm_name
  os_type     = "cloud-init"
  agent       = 1
  memory      = var.num_masters_mem
  cores       = 4
  full_clone = false 
  network {
    model = "virtio"
    bridge = "vmbr0"
    firewall = false 
    link_down = false 
    
  } 
  



}