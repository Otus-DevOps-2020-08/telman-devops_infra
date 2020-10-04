variable db_disk_image {
  description = "Disk image for reddit DB"
  default = "fd8kckqemnbpjvdd1lmb"
}
variable "subnet_id" {
  description = "subnet"
}
variable "public_key_path" {
  description = "public id_rsa"
}
variable "private_key_path" {
  description = "private id_rsa"
}
