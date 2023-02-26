module "tfstate_backend" {
  source  = "cloudposse/tfstate-backend/aws"
  version = "0.38.1"

  bucket_enabled   = true
  dynamodb_enabled = true
  billing_mode     = "PAY_PER_REQUEST"

  attributes = ["tf-state-backend"]
  context    = module.this.context
}
