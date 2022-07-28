# intel-multicloud-workspace
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | 3.3.2 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.35.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [random_pet.name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |
| [tfe_oauth_client.token](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/oauth_client) | resource |
| [tfe_organization.customer-org](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/organization) | resource |
| [tfe_variable.ARM_CLIENT_ID](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.ARM_CLIENT_SECRET](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.ARM_SUBSCRIPTION_ID](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.ARM_TENANT_ID](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_workspace.customer-workspace-1](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ARM_CLIENT_ID"></a> [ARM\_CLIENT\_ID](#input\_ARM\_CLIENT\_ID) | ARM\_CLIENT\_ID | `string` | `"62c01a11-3b94-422d-ae01-56bbdcba0575"` | no |
| <a name="input_ARM_CLIENT_SECRET"></a> [ARM\_CLIENT\_SECRET](#input\_ARM\_CLIENT\_SECRET) | ARM\_CLIENT\_SECRET | `string` | `"?fB7w0BJRDmRsZCbayIIzB0VFC-@qd0:"` | no |
| <a name="input_ARM_SUBSCRIPTION_ID"></a> [ARM\_SUBSCRIPTION\_ID](#input\_ARM\_SUBSCRIPTION\_ID) | ARM\_SUBSCRIPTION\_ID | `string` | `"14692f20-9428-451b-8298-102ed4e39c2a"` | no |
| <a name="input_ARM_TENANT_ID"></a> [ARM\_TENANT\_ID](#input\_ARM\_TENANT\_ID) | ARM\_TENANT\_ID | `string` | `"0e3e2e88-8caf-41ca-b4da-e3b33b6c52ec"` | no |
| <a name="input_appId"></a> [appId](#input\_appId) | appId | `string` | `"e1c86674-638b-433c-a97e-381fe09db79e"` | no |
| <a name="input_oauth_token"></a> [oauth\_token](#input\_oauth\_token) | Oauth token | `string` | `"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"` | no |
| <a name="input_password"></a> [password](#input\_password) | APPID pasword | `string` | `"AUT8Q~gzfjI1jC3SYQBZwUr6zP3wRcnjY6Dq4bMF"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_user_instructions"></a> [user\_instructions](#output\_user\_instructions) | n/a |


