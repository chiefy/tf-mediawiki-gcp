resource "google_project" "mediawiki_gcp" {
  project_id = "${var.project_name}"
  org_id = "${var.org_id}"
  name = "${var.project_name}"
}

resource "google_project_services" "mediawiki_gcp" {
  project = "${google_project.mediawiki_gcp.project_id}"
  services   = [
  	"iam.googleapis.com",
  	"cloudresourcemanager.googleapis.com",
  	"container.googleapis.com"
  ]
}
