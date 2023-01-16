terraform {
  backend "gcs" {
    bucket = "greaterbank_bucketterraform"
    prefix = "state"
  }
}

provider "google" {
  project = "greaterbank"
  region  = "us-central1"
}