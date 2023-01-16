resource "google_bigquery_dataset" "TerraformDataset" {
  dataset_id    = "TerraformDataset"
  friendly_name = "TerraformDataset"
  description   = "This is demo dataset for Terraform"
  location      = "US"

  labels = {
    env = "terraform"
    pic = "jon"
  }
}

resource "google_bigquery_table" "vw_terraform_aggregated" {
  dataset_id = google_bigquery_dataset.TerraformDataset.dataset_id
  table_id   = "vw_terraform_aggregated"

  labels = {
    env = "terraform"
    pic = "jon"
  }

  view {
    query          = file("bigquery/TerraformDataset/vw_terraform_aggregated.sql")
    use_legacy_sql = false
  }
}

resource "google_bigquery_table" "vw_terraform_borrowers" {
  dataset_id = google_bigquery_dataset.TerraformDataset.dataset_id
  table_id   = "vw_terraform_borrowers"

  labels = {
    env = "terraform"
    pic = "jon"
  }

  view {
    query          = file("bigquery/TerraformDataset/vw_terraform_borrowers.sql")
    use_legacy_sql = false
  }
}