variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "machine_type" {
  type    = string
  default = "n2-standard-8"
}

variable "instance_name" {
  type    = string
  default = "ubuntu-vm-hello"
}

variable "boot_disk_size" {
  type    = number
  default = 100
}

variable "image_project" {
  type    = string
  default = "ubuntu-os-cloud"
}

variable "image_family" {
  type    = string
  default = "ubuntu-2204-lts"
}
