<!-- BEGIN_TF_DOCS -->
# Easy IMM - Profiles Only example for Intersight

This example is part of the Cisco [*Easy IMM*](https://cisco.com/go/easy-imm) project. Its goal is to allow users to instantiate Infrastrcture in minutes using an easy to use, opinionated data model. It takes away the complexity of having to deal with references, dependencies or loops. By completely separating data (defining variables) from logic (infrastructure declaration), it allows the user to focus on describing the intended configuration while using a set of maintained and tested Terraform Modules without the need to understand the low-level Intersight object model. More information can be found here: <https://cisco.com/go/easy-imm>.

## Environment Variables

### Terraform Cloud/Enterprise - Workspace Variables
- Add variable apikey with the value of [your-api-key]
- Add variable secretkey with the value of [your-secret-file-content]

### Linux and Windows
```bash
export TF_VAR_apikey="<your-api-key>"
export TF_VAR_secretkeyfile="<secret-key-file-location>"
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_intersight"></a> [intersight](#requirement\_intersight) | >=1.0.32 |
| <a name="requirement_utils"></a> [utils](#requirement\_utils) | >= 0.1.2 |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_utils"></a> [utils](#provider\_utils) | 0.1.2 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apikey"></a> [apikey](#input\_apikey) | Intersight API Key. | `string` | n/a | yes |
| <a name="input_endpoint"></a> [endpoint](#input\_endpoint) | Intersight URL. | `string` | `"https://intersight.com"` | no |
| <a name="input_secretkey"></a> [secretkey](#input\_secretkey) | Intersight Secret Key. | `string` | n/a | yes |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_profiles"></a> [profiles](#output\_profiles) | n/a |
## Resources

| Name | Type |
|------|------|
| [utils_yaml_merge.model](https://registry.terraform.io/providers/netascode/utils/latest/docs/data-sources/yaml_merge) | data source |
<!-- END_TF_DOCS -->