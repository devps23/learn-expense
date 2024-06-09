provider "vault" {
  address = "https://54.226.227.17:8200"
  token = var.vault_token
  skip_tls_verify = true
}