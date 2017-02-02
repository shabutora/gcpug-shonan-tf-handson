provider "google" {
  project = "${var.project}"
  region = "${var.region}"
}
resource "google_storage_bucket" "handson_bucket" {
    name = "${var.bucket}"
    force_destroy = true
}
resource "google_storage_bucket_object" "startup-script" {
    name = "startup-script.sh"
    source = "./startup-script.sh"
    bucket = "${var.bucket}"
    depends_on = ["google_storage_bucket.handson_bucket"]
}
resource "google_compute_instance" "handson_instance" {
  name = "handson-vm"
  zone = "us-central1-a"
  machine_type = "n1-standard-1"
  tags = ["http-server", "https-server", "app-server"]
  disk {
    image = "debian-cloud/debian-8"
    size = 10
  }
  network_interface {
    network = "default"
    access_config {
      nat_ip = ""
    }
  }
  metadata {
    startup-script-url = "gs://${var.bucket}/startup-script.sh"
  }
  service_account {
    scopes = ["compute-ro", "storage-ro"]
  }
}
