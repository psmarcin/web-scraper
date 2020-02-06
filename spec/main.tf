provider "cloudflare" {
  version    = "~> 2.0"
  email      = var.email
  api_token  = var.api_token
  account_id = var.account_id
}

# Sets the script with the name "script_1"
resource "cloudflare_worker_script" "web-scaper" {
  name    = "web-scraper"
  content = file("./../src/dist/main.js")
}
