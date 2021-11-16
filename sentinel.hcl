module "tfplan-functions" {
    source = "./tfplan-functions.sentinel"
}
    
policy "check-gcs-versioning-num-new-versions" {
    source = "./storage_gcp_versioning_enforce.sentinel"
    enforcement_level = "soft-mandatory"
}
