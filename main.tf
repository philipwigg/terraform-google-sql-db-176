module "vpc" {
  source  = "terraform-google-modules/network/google"
  project_id = var.project_id
  network_name = "test-vpc"
  auto_create_subnetworks = true
  subnets = []
}

module "private-service-access" {
  source  = "GoogleCloudPlatform/sql-db/google//modules/private_service_access"
  project_id = var.project_id
  vpc_network = module.vpc.network_name
}