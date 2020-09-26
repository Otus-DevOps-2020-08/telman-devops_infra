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
