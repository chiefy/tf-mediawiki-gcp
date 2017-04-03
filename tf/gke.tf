resource "google_container_node_pool" "np" {
  name               = "my-node-pool"
  zone               = "us-east1-b"
  cluster            = "${google_container_cluster.primary.name}"
  initial_node_count = 3
}

resource "google_container_cluster" "primary" {
  depends_on = [ "google_project.mediawiki_gcp" ]
  name               = "marcellus-wallace"
  zone               = "us-east1-b"
  initial_node_count = 3

  additional_zones = [
    "us-east1-c"
  ]

  master_auth {
    username = "hans"
    password = "gruber"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}
