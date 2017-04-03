provider "google" {
	project = "${var.project_name}"
	region = "${var.gc_region}"
}
