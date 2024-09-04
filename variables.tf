variable "pm_api_url" {
  description = "URL do api do seu proxmox"
  type        = string
  sensitive   = false
  default     = ""

}
variable "pm_api_token_id" {
  description = "The username for the proxmox user"
  type        = string
  sensitive   = false
  default     = ""

}
variable "pm_api_token_secret" {
  description = "seu token api"
  type        = string
  sensitive   = true
  default     = ""
}

variable "pm_tls_insecure" {
  description = "coloque true para ignorar erros de certificado"
  type        = bool
  default     = true
}

variable "pm_host" {
  description = "hostname ou ip do seu proxmox"
  type        = string
  default     = ""
}

variable "pm_node_nome" {
  description = "nome do seu proxmox"
  type        = string
  default     = "pmx"
}

variable "pvt_key" {
  description = "sua chave privada"
  type        = string
  default     = "none"
}

variable "num_masters" {
  description = "coloque o numero de control-plane (masters) que você deseja no kubernets"
  default = 2
}

variable "num_masters_mem" {
  description = "coloque o numero de memoria que você deseja. exemplo 4gb = 4096"
  default = "2048"
}

variable "master_disk_size" {
  description = "coloque o tamanho do discos do control-plane (exemplo 10G para 10gb)"
  type        = string
  default     = "10G"
}

variable "master_disk_type" {
  description = "qual interface de disco ele usara? exemplo, scsi, sata"
  type        = string
  default     = "scsi"
}

variable "master_disk_location" {
  description = "onde está sua storage? coloque o nome dela exemplo local, local-lvm, datastore 01"
  type        = string
  default     = "local"
}

variable "num_nodes" {
  description = "coloque o numero de workers (nodes) que voce deseja"
  default = 0
}

variable "num_nodes_mem" {
  description = "coloque o numero de memoria que você deseja. exemplo 4gb = 4096"
  default = "2048"
}

variable "node_disk_size" {
  description = "coloque o tamanho do discos do control-plane (exemplo 10G para 10gb)"
  type        = string
  default     = "4G"
}

variable "node_disk_type" {
  description = "qual interface de disco ele usara? exemplo, scsi, sata"
  type        = string
  default     = "scsi"
}

variable "node_disk_location" {
  description = "onde está sua storage? coloque o nome dela exemplo local, local-lvm, datastore 01"
  type        = string
  default     = "local"
}

variable "template_vm_name" {
  description = "nome do template da sua vm (previamente criado)"
  type        = string
  default     = "rockylinux"
}

variable "master_ips" {
  description = "lista dos ips dos masters"
  type        = list(string)
  default     = [
    "a.a.a.a",
    "b.b.b.b",
    "c.c.c.c",
  ]
}

variable "worker_ips" {
  description = "lista dos ips dos workers"
  type        = list(string)
  default     = [  
    "m.m.m.m",
    "n.n.n.n",
    "o.o.o.o",
    "p.p.p.p",
    "q.q.q.q",
  ]
}

variable "networkrange" {
  description = "coloque sua rede com a mascara exemplo abaixo, exemplo 192.168.15.10/24"
  default = ""
}

variable "gateway" {
  description = "coloque seu gateway"
  default = ""
}