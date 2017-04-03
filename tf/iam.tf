resource "google_service_account" "admin" {
  account_id   = "mediawiki-gcp-admin"
  display_name = "Mediawiki Admin"
}

data "google_iam_policy" "admin" {
  binding {
    role = "roles/owner"
    members = [
      "serviceAccount:${google_service_account.admin.email}",
    ]
  }
}
