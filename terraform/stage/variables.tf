variable "service_account_key_file" {
  description = "key"
}

variable "cloud_id" {
  description = "cloud id"
}

variable "folder_id" {
  description = "folder"
}
variable "subnet_id" {
  description = "subnet"
}

variable "zone" {
  description = "zone"
  default     = "ru-central1-c"
}

variable "image_id" {
  description = "image family"
}

variable "public_key_path" {
  description = "id_rsa pub"
}

variable "private_key_path" {
  description = "id_rsa private"
}

variable "instance_count" {
  description = "count of instance"
  default     = "1"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "fd8rr168h8krfnl08rif"
}

variable db_disk_image {
  description = "Disk image for reddit DB"
  default     = "fd8kckqemnbpjvdd1lmb"
}
