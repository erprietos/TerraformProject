resource "google_bigquery_dataset" "views" {
  dataset_id    = "views"
  friendly_name = "views"
  description   = "This is demo dataset for Terraform"
  location      = "US"

  labels = {
    env = "terraform"
    pic = "jon"
  }
}

resource "google_bigquery_table" "vw_terraform_aggregated" {
  dataset_id = google_bigquery_dataset.views.dataset_id
  table_id   = "vw_terraform_aggregated"

  labels = {
    env = "terraform"
    pic = "jon"
  }

  view {
    query          = file("bigquery/views/vw_terraform_aggregated.sql")
    use_legacy_sql = false
  }
}