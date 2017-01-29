provider "google" {
  project = "${var.project}"
  region = "${var.region}"
}
resource "google_storage_bucket" "handson_bucket" {
    name = "${var.bucket}"
}
