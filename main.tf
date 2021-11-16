provider "google" {
 access_token = var.access_token
 #credentials = file("../key.json")
}

resource "google_storage_bucket" "rockstar" {
  name          = "rockstar-bucket"
  project = "airline1-sabre-wolverine"
  location      = "US"
  force_destroy = true
  versioning {
    enabled = true
  }
  condition {
      num_newer_version = 5
  }
  lifecycle_rule {
    condition {
      age = 3
     
    }
    action {
      type = "Delete"
    }

  }

}


resource "google_storage_bucket" "hellobucket" {
  name          = "hello-bucket-air"
  project = "airline1-sabre-wolverine"
  location      = "US"
  force_destroy = true
  
  lifecycle_rule {
    condition {
      age = 3

    }
    action {
      type = "Delete"
    }

  }

}