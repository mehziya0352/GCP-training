provider "google" {
  project =var.project_id
  region=var.region
  zone=var.zone
  credentials=file("gcp-key.json")
}
resource "google-compute-nstance" "vm-meh" {
  name = var.instance_name
  machine_type = var.machine_type
  zone= var.zone
  boot_disk{
    initialize_params {
      image = "${var.image_project}/${var.image_family}"
      size  = var.boot_disk_size
    }
  }
network_interface {
    network = "default"
    access_config {}
  }
}
