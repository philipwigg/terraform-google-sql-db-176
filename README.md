# terraform-google-sql-db-176

Test case for https://github.com/terraform-google-modules/terraform-google-sql-db/issues/176

Edit `terraform.tfvars` and set `project_id`

I receive error:-

```
$ terraform plan

Error: Required attribute is not set

  on .terraform/modules/private-service-access/modules/private_service_access/main.tf line 43, in resource "google_service_networking_connection" "private_service_access":
  43:   network                 = data.google_compute_network.main.self_link
```
