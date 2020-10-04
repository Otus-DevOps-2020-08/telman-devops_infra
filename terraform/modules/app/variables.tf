variable app_disk_image {
  description = "Disk image for reddit app"
  default = "fd8okdlfldstedj23ucd"
}
variable "subnet_id" {
  description = "subnet"
}
variable "public_key_path" {
  description = "id_rsa pub"
}
variable "private_key_path" {
  description = "private id_rsa"
}
variable "db_host_ip" {
  description = "data base host ip"
  default = "127.0.0.1"
}
