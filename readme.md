## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >=0.89.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | >=0.89.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.vpc](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.vpc_subnets](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_subnets"></a> [subnets](#input\_subnets) | Create subnets | <pre>list(object(<br>    {<br>      subname = string<br>      cidr = string<br>    })<br>  )</pre> | `[]` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Virtual Private Cloud name | `string` | `"vpc"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Zone name | `string` | `"ru-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnets_id"></a> [subnets\_id](#output\_subnets\_id) | Subnets ID |
| <a name="output_subnets_locations"></a> [subnets\_locations](#output\_subnets\_locations) | Mapping Subnet Name to Subnet ID |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
