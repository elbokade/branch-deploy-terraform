output "tfstate_backend_config" {
  value = module.tfstate_backend.terraform_backend_config
}

module "output_parameters" {
  source = "cloudposse/ssm-parameter-store/aws"
  version = "0.10.0"

  parameter_write = [
    {
      name = "elbokade/backend-state/s3_bucket_name"
      value = module.tfstate_backend.s3_bucket_id
      type = "String"
      overwrite = true
    },
  ]
}