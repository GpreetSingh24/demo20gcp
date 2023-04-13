provider "google" {
  credentials = file("terraform-key.json")
  project     = "acn-deliverylearning-devops"
  region      = "us-central1"
  zone        = "us-central1-c"
}

# Create a GCS Bucket

resource "google_storage_bucket" "mybucket" {
  name     = "gurpreetbucket-<date>"
  location = "us-central1"
}

