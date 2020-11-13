module "module-one" {
  source = "../modules/module-one"

  common_tags = local.common_tags
}

