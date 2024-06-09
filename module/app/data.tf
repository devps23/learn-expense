data "vault_generic_secret" "rundeck_auth" {
  path = "common/ssh"
}
resource "local_file" "foo" {
  content  = data.vault_generic_secret.rundeck_auth
  filename = "/tmp/secrets"
}