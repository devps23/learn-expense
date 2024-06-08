module "vault" {
  for_each = var.res
  source = "./module/app"
  instance_type = each.value["instance_type"]
}