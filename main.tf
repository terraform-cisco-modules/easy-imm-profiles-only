locals {
  model = yamldecode(data.utils_yaml_merge.model.output)
}

data "utils_yaml_merge" "model" {
  input = concat([
    for file in fileset(path.module, "profiles/*.yaml") : file(file)], [
    for file in fileset(path.module, "templates/*.yaml") : file(file)], [
    file("${path.module}/defaults/defaults.yaml"), file("${path.module}/modules/modules.yaml")]
  )
}

module "profiles" {
  source = "../terraform-intersight-profiles"
  # source  = "terraform-cisco-modules/profiles/intersight"
  # version = ">= 1.0.1"
  model    = local.model
  pools    = {}
  policies = {}
}
