variable "gc_region" {
	type = "string"
	description = "Google Cloud Region"
	default = "us-east1-b"
}

variable "org_id" {
	type = "string"
}

variable "project_name" {
	type = "string"
	description = "The name of the project to be created"
	default = "mediawiki-gcp"
}
