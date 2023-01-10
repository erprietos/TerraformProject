terraform {
  backend "gcs" {
    bucket = "greaterbank_bucket_terraform"
    prefix = "state"
  }
}

provider "google" {
  project = "resonant-gizmo-313011"
  region  = "us-central1"
}