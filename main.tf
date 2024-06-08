module "vault" {
  for_each = var.res
  source = "./module/app"
  tagname = each.key
  instance_type = each.value["instance_type"]
}