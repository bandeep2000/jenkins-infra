module "webserver_cluster" {
  source = "./modules"
  key_name = "ban6"
}
output "public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = "${module.webserver_cluster.public_ip}"
}
